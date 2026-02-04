#!/usr/bin/env python3
"""Generate Symfony course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

Repo conventions:
- ARB must be ICU-safe: avoid literal '{' and '}'.
- This app uses '@' and '&' as stand-ins for braces in ARB values.
  Exercise screens call `_t()` to decode them (@->{ and &->}).
- Therefore: avoid literal '@' in localized strings unless it is brace-encoding.
  (In other words: do NOT use emails, annotations like @Route, etc.)
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "symfony"
START_ID = 4450  # Next after Spring (4200-4424). Keep a clean, non-overlapping range.

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("symfonyBasics", "Symfony Basics", "Fundamentos Symfony", "Symfony 基础"),
    ("symfonyRouting", "Routing", "Rutas", "路由"),
    ("symfonyControllers", "Controllers & Responses", "Controladores y Respuestas", "控制器与响应"),
    ("symfonyTwig", "Twig Templates", "Plantillas Twig", "Twig 模板"),
    ("symfonyForms", "Forms", "Formularios", "表单"),
    ("symfonyDoctrine", "Doctrine Entities", "Doctrine: Entidades", "Doctrine 实体"),
    ("symfonyDoctrineQueries", "Repositories & QueryBuilder", "Repositorios y QueryBuilder", "仓库与查询构建器"),
    ("symfonyValidation", "Validation", "Validacion", "校验"),
    ("symfonyServices", "Services & DI", "Servicios e Inyeccion", "服务与依赖注入"),
    ("symfonyConfig", "Configuration & Env", "Configuracion y Entornos", "配置与环境"),
    ("symfonySecurity", "Security", "Seguridad", "安全"),
    ("symfonyEvents", "Events & Subscribers", "Eventos y Subscribers", "事件与订阅者"),
    ("symfonyMessenger", "Messenger", "Messenger (colas)", "消息队列"),
    ("symfonyConsole", "Console Commands", "Comandos de Consola", "控制台命令"),
    ("symfonyTesting", "Testing & Debug", "Testing y Debug", "测试与调试"),
]


def camel(s: str) -> str:
    parts = re.split(r"[^A-Za-z0-9]+", s)
    return "".join(p[:1].upper() + p[1:] for p in parts if p)


def escape_icu(s: str) -> str:
    # Flutter gen-l10n: escape single quote by doubling
    return s.replace("'", "''")


def encode_braces(s: str) -> str:
    # Avoid literal braces in ARB; screens decode @->{ and &->}
    return s.replace("{", "@").replace("}", "&")


def json_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")


def arb_line(key: str, value: str) -> str:
    return f'  "{key}": "{json_escape(value)}"'


def hpick(items: list[str], seed: str) -> str:
    h = int(hashlib.md5(seed.encode("utf-8")).hexdigest(), 16)
    return items[h % len(items)]


def ex_label(lang: str, n: int, challenge: bool) -> str:
    if lang == "en":
        return "Challenge" if challenge else "Exercise"
    if lang == "es":
        return "Desafio" if challenge else "Ejercicio"
    if lang == "zh":
        return "挑战" if challenge else "练习"
    raise ValueError(lang)


def info_title(lang: str) -> str:
    # Per-exercise title; keep consistent but not boring.
    return {"en": "More info ℹ️", "es": "Mas info ℹ️", "zh": "更多信息 ℹ️"}[lang]


def hint_title(lang: str, idx: int) -> str:
    if lang == "en":
        return f"Hint {idx} 💡"
    if lang == "es":
        return f"Pista {idx} 💡"
    return f"提示 {idx} 💡"


def solution_title(lang: str) -> str:
    return {"en": "Solution ✅", "es": "Solucion ✅", "zh": "答案 ✅"}[lang]


def example_title(lang: str) -> str:
    return {"en": "Example 📌", "es": "Ejemplo 📌", "zh": "示例 📌"}[lang]


def enter_code_hint(lang: str) -> str:
    return {
        "en": "Write your Symfony code here...",
        "es": "Escribe tu codigo Symfony aqui...",
        "zh": "在这里写下你的 Symfony 代码...",
    }[lang]


def output_label(lang: str, text: str) -> str:
    if lang == "en":
        return f"Output: {text}"
    if lang == "es":
        return f"Salida: {text}"
    return f"输出: {text}"


def normalize_must_token(tok: str) -> str:
    tok = tok.strip()
    # Some must-tokens are written with quotes to reflect PHP strings.
    # We do NOT need the surrounding quotes for validation.
    if len(tok) >= 2 and tok[0] == tok[-1] and tok[0] in ('"', "'"):
        return tok[1:-1]
    return tok


def dart_string_literal(text: str) -> str:
    # Prefer raw literals so regex backslashes survive unchanged.
    if '"' not in text:
        return f'r"{text}"'
    if "'" not in text:
        return f"r'{text}'"
    if '"""' not in text:
        return f'r"""{text}"""'
    if "'''" not in text:
        return f"r'''{text}'''"
    escaped = text.replace("\\", "\\\\").replace('"', '\\"')
    return f'"{escaped}"'


# Each exercise spec:
# (topic_en, topic_es, topic_zh, code_lines[], must_tokens[], output_text)
ExerciseSpec = tuple[str, str, str, list[str], list[str], str]


def ex(
    topic_en: str,
    topic_es: str,
    topic_zh: str,
    code_lines: list[str],
    must_tokens: list[str],
    output_text: str,
) -> ExerciseSpec:
    return (topic_en, topic_es, topic_zh, code_lines, must_tokens, output_text)


EXERCISES: dict[str, list[ExerciseSpec]] = {
    "symfonyBasics": [
        ex(
            "Create a project with Symfony CLI",
            "Crear un proyecto con Symfony CLI",
            "用 Symfony CLI 创建项目",
            ["symfony new shop_api --webapp"],
            ["symfony new", "--webapp", "shop_api"],
            "Project created.",
        ),
        ex(
            "Start the local server",
            "Arrancar el servidor local",
            "启动本地服务器",
            ["symfony server:start"],
            ["server:start", "symfony"],
            "Server running.",
        ),
        ex(
            "Stop the local server",
            "Parar el servidor local",
            "停止本地服务器",
            ["symfony server:stop"],
            ["server:stop", "symfony"],
            "Server stopped.",
        ),
        ex(
            "List console commands",
            "Listar comandos de consola",
            "列出控制台命令",
            ["php bin/console list"],
            ["php", "bin/console", "list"],
            "Commands listed.",
        ),
        ex(
            "See project info with about",
            "Ver info del proyecto con about",
            "用 about 查看项目信息",
            ["php bin/console about"],
            ["bin/console", "about"],
            "About shown.",
        ),
        ex(
            "Generate a controller",
            "Generar un controlador",
            "生成控制器",
            ["php bin/console make:controller HomeController"],
            ["make:controller", "HomeController"],
            "Controller generated.",
        ),
        ex(
            "Install MakerBundle (dev)",
            "Instalar MakerBundle (dev)",
            "安装 MakerBundle（开发）",
            ["composer require symfony/maker-bundle --dev"],
            ["composer require", "symfony/maker-bundle", "--dev"],
            "Maker installed.",
        ),
        ex(
            "Inspect routes",
            "Inspeccionar rutas",
            "查看路由",
            ["php bin/console debug:router"],
            ["debug:router", "bin/console"],
            "Routes printed.",
        ),
        ex(
            "Inspect a service in the container",
            "Inspeccionar un servicio en el container",
            "查看容器里的服务",
            ["php bin/console debug:container logger"],
            ["debug:container", "logger"],
            "Service info.",
        ),
        ex(
            "Clear cache",
            "Limpiar cache",
            "清理缓存",
            ["php bin/console cache:clear"],
            ["cache:clear", "bin/console"],
            "Cache cleared.",
        ),
        ex(
            "Add a simple env var",
            "Agregar una variable de entorno simple",
            "添加一个简单的环境变量",
            ['APP_NAME="Shoply"'],
            ["APP_NAME", "Shoply"],
            "Env set.",
        ),
        ex(
            "Read an env var as a parameter",
            "Leer una env var como parametro",
            "把环境变量读成参数",
            [
                "parameters:",
                "  app.name: '%env(APP_NAME)%'",
            ],
            ["parameters:", "env(APP_NAME)", "app.name"],
            "Parameter ready.",
        ),
        ex(
            "Run PHPUnit",
            "Ejecutar PHPUnit",
            "运行 PHPUnit",
            ["php bin/phpunit"],
            ["bin/phpunit", "php"],
            "Tests running.",
        ),
        ex(
            "Install Twig bundle",
            "Instalar Twig bundle",
            "安装 Twig",
            ["composer require symfony/twig-bundle"],
            ["symfony/twig-bundle", "composer require"],
            "Twig ready.",
        ),
        ex(
            "Challenge: a tiny health endpoint",
            "Desafio: un endpoint de salud mini",
            "挑战：一个迷你健康接口",
            [
                "use Symfony\\Component\\Routing\\Attribute\\Route;",
                "use Symfony\\Component\\HttpFoundation\\Response;",
                "#[Route('/ping', name: 'app_ping')]",
                "public function ping(): Response {",
                "  return new Response('pong');",
                "}",
            ],
            ["#[Route('/ping'", "new Response", "pong"],
            "pong",
        ),
    ],
    "symfonyRouting": [
        ex(
            "Basic route to /hello",
            "Ruta basica a /hello",
            "基础路由 /hello",
            [
                "use Symfony\\Component\\Routing\\Attribute\\Route;",
                "#[Route('/hello', name: 'app_hello')]",
                "public function hello() {}",
            ],
            ["#[Route('/hello'", "name:", "app_hello"],
            "/hello -> controller",
        ),
        ex(
            "Limit a route to GET",
            "Limitar una ruta a GET",
            "限制路由只允许 GET",
            [
                "#[Route('/status', name: 'app_status', methods: ['GET'])]",
                "public function status() {}",
            ],
            ["methods:", "GET", "app_status"],
            "GET only.",
        ),
        ex(
            "Route with a parameter",
            "Ruta con parametro",
            "带参数的路由",
            [
                "#[Route('/products/{id}', name: 'product_show')]",
                "public function show(int $id) {}",
            ],
            ["/products/{id}", "product_show", "int $id"],
            "Product id read.",
        ),
        ex(
            "Add a numeric requirement",
            "Agregar requisito numerico",
            "添加数字校验",
            [
                "#[Route('/users/{id}', name: 'user_show', requirements: ['id' => '\\d+'])]",
                "public function show(int $id) {}",
            ],
            ["requirements:", "\\d+", "user_show"],
            "Only digits allowed.",
        ),
        ex(
            "Default value for an optional segment",
            "Valor por defecto en segmento opcional",
            "可选段默认值",
            [
                "#[Route('/blog/{page}', name: 'blog_list', defaults: ['page' => 1])]",
                "public function list(int $page) {}",
            ],
            ["defaults:", "'page' => 1", "blog_list"],
            "Default page applied.",
        ),
        ex(
            "Multiple HTTP methods",
            "Multiples metodos HTTP",
            "多个 HTTP 方法",
            [
                "#[Route('/contact', name: 'contact', methods: ['GET', 'POST'])]",
                "public function contact() {}",
            ],
            ["GET", "POST", "contact"],
            "GET+POST enabled.",
        ),
        ex(
            "Custom route name",
            "Nombre de ruta personalizado",
            "自定义路由名",
            [
                "#[Route('/admin', name: 'admin_dashboard')]",
                "public function dashboard() {}",
            ],
            ["admin_dashboard", "/admin"],
            "Named route.",
        ),
        ex(
            "Host constraint (multisite)",
            "Restriccion por host (multisite)",
            "按 host 限制（多站点）",
            [
                "#[Route('/v1', name: 'api_v1', host: 'api.example.test')]",
                "public function v1() {}",
            ],
            ["host:", "api.example.test", "api_v1"],
            "Host matched.",
        ),
        ex(
            "Localized paths",
            "Paths localizados",
            "多语言路径",
            [
                "#[Route(path: ['en' => '/about', 'es' => '/acerca'], name: 'about')]",
                "public function about() {}",
            ],
            ["path:", "/acerca", "about"],
            "Locale paths ready.",
        ),
        ex(
            "Route priority",
            "Prioridad de ruta",
            "路由优先级",
            [
                "#[Route('/promo', name: 'promo', priority: 10)]",
                "public function promo() {}",
            ],
            ["priority:", "10", "promo"],
            "Priority applied.",
        ),
        ex(
            "Prefix routes at class level",
            "Prefijo de rutas a nivel de clase",
            "类级别路由前缀",
            [
                "#[Route('/api', name: 'api_')]",
                "class ApiController {}",
            ],
            ["#[Route('/api'", "name:", "api_"],
            "Prefix ready.",
        ),
        ex(
            "Slug requirement",
            "Requisito de slug",
            "slug 规则",
            [
                "#[Route('/post/{slug}', name: 'post_show', requirements: ['slug' => '[a-z0-9-]+'])]",
                "public function show(string $slug) {}",
            ],
            ["slug", "[a-z0-9-]+", "post_show"],
            "Slug validated.",
        ),
        ex(
            "Method-level route under a prefix",
            "Ruta de metodo bajo un prefijo",
            "前缀下的方法路由",
            [
                "#[Route('/api')]",
                "class ApiController {",
                "  #[Route('/users', name: 'api_users', methods: ['GET'])]",
                "}",
            ],
            ["/api", "/users", "api_users"],
            "Nested route.",
        ),
        ex(
            "Redirect to another route",
            "Redirigir a otra ruta",
            "重定向到另一个路由",
            [
                "#[Route('/old', name: 'old')]",
                "public function old() { return $this->redirectToRoute('new'); }",
            ],
            ["redirectToRoute", "old", "new"],
            "Redirect.",
        ),
        ex(
            "Challenge: API update route (PUT)",
            "Desafio: ruta de update API (PUT)",
            "挑战：API 更新路由（PUT）",
            [
                "#[Route('/api/users/{id}', name: 'api_user_update', methods: ['PUT'])]",
                "public function update(int $id) {}",
            ],
            ["/api/users/{id}", "api_user_update", "PUT"],
            "Ready for update.",
        ),
    ],
    "symfonyControllers": [
        ex(
            "Return a plain Response",
            "Devolver un Response simple",
            "返回普通 Response",
            [
                "use Symfony\\Component\\HttpFoundation\\Response;",
                "return new Response('OK');",
            ],
            ["new Response", "OK"],
            "OK",
        ),
        ex(
            "Return JSON",
            "Devolver JSON",
            "返回 JSON",
            [
                "use Symfony\\Component\\HttpFoundation\\JsonResponse;",
                "return new JsonResponse(['status' => 'ok']);",
            ],
            ["JsonResponse", "status", "ok"],
            '{"status":"ok"}',
        ),
        ex(
            "Read query parameters from Request",
            "Leer query params del Request",
            "从 Request 读取 query 参数",
            [
                "use Symfony\\Component\\HttpFoundation\\Request;",
                "$q = $request->query->get('q');",
            ],
            ["Request", "query->get", "q"],
            "Query read.",
        ),
        ex(
            "Read a route parameter by argument",
            "Leer un parametro de ruta por argumento",
            "通过参数读取路由变量",
            ["public function show(int $id) {}"],
            ["int $id", "show("],
            "Param read.",
        ),
        ex(
            "Return 201 CREATED",
            "Devolver 201 CREATED",
            "返回 201",
            ["return new Response('Created', 201);"],
            ["201", "Created"],
            "201 Created",
        ),
        ex(
            "Set a response header",
            "Poner un header en la respuesta",
            "设置响应头",
            [
                "$response = new Response('hi');",
                "$response->headers->set('X-App', 'CodeCrafters');",
                "return $response;",
            ],
            ["headers->set", "X-App", "CodeCrafters"],
            "Header set.",
        ),
        ex(
            "Redirect to a route",
            "Redirigir a una ruta",
            "重定向到路由",
            ["return $this->redirectToRoute('app_home');"],
            ["redirectToRoute", "app_home"],
            "302 Redirect",
        ),
        ex(
            "Throw a 404",
            "Lanzar un 404",
            "抛出 404",
            ["throw $this->createNotFoundException('Not found');"],
            ["createNotFoundException", "Not found"],
            "404",
        ),
        ex(
            "Render a Twig template",
            "Renderizar una plantilla Twig",
            "渲染 Twig 模板",
            [
                "return $this->render('product/show.html.twig', ['id' => $id]);",
            ],
            ["render(", "show.html.twig", "id"],
            "HTML rendered.",
        ),
        ex(
            "Use flash messages",
            "Usar flash messages",
            "使用 flash 消息",
            ["$this->addFlash('success', 'Saved!');"],
            ["addFlash", "success", "Saved"],
            "Flash added.",
        ),
        ex(
            "Inject a service in an action",
            "Inyectar un servicio en una action",
            "在 action 里注入服务",
            [
                "use Psr\\Log\\LoggerInterface;",
                "public function ping(LoggerInterface $logger) {",
                "  $logger->info('ping');",
                "}",
            ],
            ["LoggerInterface", "info(", "ping"],
            "Logged.",
        ),
        ex(
            "Return a file download",
            "Devolver descarga de fichero",
            "返回文件下载",
            ["return $this->file($path);"],
            ["$this->file", "$path"],
            "File response.",
        ),
        ex(
            "Return a JSON error (400)",
            "Devolver error JSON (400)",
            "返回 JSON 错误（400）",
            ["return new JsonResponse(['error' => 'bad'], 400);"],
            ["error", "400", "JsonResponse"],
            "400 error",
        ),
        ex(
            "Use HTTP status constants",
            "Usar constantes de status HTTP",
            "使用 HTTP 状态常量",
            [
                "use Symfony\\Component\\HttpFoundation\\Response;",
                "return new Response('ok', Response::HTTP_OK);",
            ],
            ["Response::HTTP_OK", "new Response"],
            "200 OK",
        ),
        ex(
            "Challenge: combine route + JSON + status",
            "Desafio: ruta + JSON + status",
            "挑战：路由 + JSON + 状态码",
            [
                "#[Route('/api/ping', name: 'api_ping', methods: ['GET'])]",
                "public function ping(): JsonResponse {",
                "  return new JsonResponse(['pong' => true], 200);",
                "}",
            ],
            ["/api/ping", "JsonResponse", "pong"],
            "pong=true",
        ),
    ],
    "symfonyTwig": [
        ex(
            "Print a variable",
            "Imprimir una variable",
            "输出变量",
            ["<h1>{{ name }}</h1>"],
            ["{{", "name", "}}"],
            "Name rendered.",
        ),
        ex(
            "If/endif block",
            "Bloque if/endif",
            "if/endif 代码块",
            ["{% if isAdmin %}Admin{% endif %}"],
            ["{% if", "isAdmin", "{% endif %}"],
            "Conditional rendered.",
        ),
        ex(
            "Loop over a list",
            "Recorrer una lista",
            "遍历列表",
            ["{% for product in products %}{{ product.name }}{% endfor %}"],
            ["{% for", "products", "{% endfor %}"],
            "List rendered.",
        ),
        ex(
            "Extend a base template",
            "Heredar de una plantilla base",
            "继承基础模板",
            [
                "{% extends 'base.html.twig' %}",
                "{% block body %}Hola{% endblock %}",
            ],
            ["extends", "block body", "endblock"],
            "Layout used.",
        ),
        ex(
            "Include a partial",
            "Incluir un partial",
            "包含 partial",
            ["{% include 'partials/_card.html.twig' %}"],
            ["include", "_card.html.twig"],
            "Partial included.",
        ),
        ex(
            "Uppercase filter",
            "Filtro upper",
            "upper 过滤器",
            ["{{ title|upper }}"],
            ["|upper", "title"],
            "Uppercased.",
        ),
        ex(
            "Date formatting",
            "Formato de fecha",
            "日期格式化",
            ["{{ createdAt|date('Y-m-d') }}"],
            ["date('Y-m-d')", "createdAt"],
            "Date formatted.",
        ),
        ex(
            "Escape output",
            "Escapar salida",
            "转义输出",
            ["{{ comment|e }}"],
            ["|e", "comment"],
            "Escaped.",
        ),
        ex(
            "Render raw HTML (careful)",
            "Renderizar HTML raw (con cuidado)",
            "渲染 raw HTML（小心）",
            ["{{ html|raw }}"],
            ["|raw", "html"],
            "Raw rendered.",
        ),
        ex(
            "Generate a URL with path()",
            "Generar una URL con path()",
            "用 path() 生成 URL",
            ["<a href=\"{{ path('product_show', {id: product.id}) }}\">Ver</a>"],
            ["path('product_show'", "product.id"],
            "URL generated.",
        ),
        ex(
            "Link to an asset",
            "Enlazar un asset",
            "引用静态资源",
            ["<img src=\"{{ asset('images/logo.svg') }}\">"],
            ["asset('images/logo.svg')"],
            "Asset linked.",
        ),
        ex(
            "Set a variable",
            "Definir una variable con set",
            "用 set 定义变量",
            ["{% set total = 0 %}"],
            ["{% set", "total", "0"],
            "Variable set.",
        ),
        ex(
            "Macro for reusable UI",
            "Macro para UI reutilizable",
            "可复用宏",
            ["{% macro badge(text) %}<span>{{ text }}</span>{% endmacro %}"],
            ["macro", "endmacro", "badge("],
            "Macro ready.",
        ),
        ex(
            "Debug with dump()",
            "Debug con dump()",
            "用 dump() 调试",
            ["{{ dump(user) }}"],
            ["dump(", "user"],
            "Dumped.",
        ),
        ex(
            "Challenge: product cards with a loop",
            "Desafio: tarjetas de producto con loop",
            "挑战：用循环渲染商品卡片",
            ["{% for p in products %}<h3>{{ p.name }}</h3>{% endfor %}"],
            ["{% for", "products", "p.name"],
            "Cards rendered.",
        ),
    ],
    "symfonyForms": [
        ex(
            "Create a FormType",
            "Crear un FormType",
            "创建 FormType",
            [
                "use Symfony\\Component\\Form\\AbstractType;",
                "class ProductType extends AbstractType {}",
            ],
            ["extends AbstractType", "ProductType"],
            "Type created.",
        ),
        ex(
            "Add a TextType field",
            "Agregar un campo TextType",
            "添加 TextType 字段",
            [
                "use Symfony\\Component\\Form\\Extension\\Core\\Type\\TextType;",
                "$builder->add('title', TextType::class);",
            ],
            ["TextType::class", "add('title'"],
            "Field added.",
        ),
        ex(
            "Add an EmailType with validation",
            "Agregar EmailType con validacion",
            "添加 EmailType + 校验",
            [
                "use Symfony\\Component\\Form\\Extension\\Core\\Type\\EmailType;",
                "use Symfony\\Component\\Validator\\Constraints as Assert;",
                "$builder->add('email', EmailType::class, [",
                "  'constraints' => [new Assert\\Email()],",
                "]);",
            ],
            ["EmailType::class", "Assert\\Email", "constraints"],
            "Email validated.",
        ),
        ex(
            "Handle the Request",
            "Manejar el Request",
            "处理 Request",
            ["$form->handleRequest($request);"],
            ["handleRequest", "$request"],
            "Request handled.",
        ),
        ex(
            "Check submitted and valid",
            "Comprobar enviado y valido",
            "检查提交与校验",
            ["if ($form->isSubmitted() && $form->isValid()) {}"],
            ["isSubmitted()", "isValid()"],
            "Validated.",
        ),
        ex(
            "Render the form in Twig",
            "Renderizar el form en Twig",
            "在 Twig 渲染表单",
            ["{{ form_start(form) }}", "{{ form_end(form) }}"],
            ["form_start", "form_end"],
            "Form rendered.",
        ),
        ex(
            "ChoiceType field",
            "Campo ChoiceType",
            "ChoiceType 字段",
            [
                "use Symfony\\Component\\Form\\Extension\\Core\\Type\\ChoiceType;",
                "$builder->add('status', ChoiceType::class, [",
                "  'choices' => ['Draft' => 'draft', 'Live' => 'live'],",
                "]);",
            ],
            ["ChoiceType::class", "choices", "status"],
            "Choice ready.",
        ),
        ex(
            "CSRF token id",
            "CSRF token id",
            "CSRF token id",
            [
                "$builder->setMethod('POST');",
                "$builder->setOption('csrf_token_id', 'product_item');",
            ],
            ["csrf_token_id", "product_item"],
            "CSRF configured.",
        ),
        ex(
            "Add placeholder attributes",
            "Agregar placeholder en attr",
            "添加 placeholder",
            [
                "$builder->add('name', TextType::class, [",
                "  'attr' => ['placeholder' => 'Tu nombre'],",
                "]);",
            ],
            ["attr", "placeholder", "Tu nombre"],
            "UI improved.",
        ),
        ex(
            "CollectionType field",
            "Campo CollectionType",
            "CollectionType 字段",
            [
                "use Symfony\\Component\\Form\\Extension\\Core\\Type\\CollectionType;",
                "$builder->add('tags', CollectionType::class);",
            ],
            ["CollectionType::class", "tags"],
            "Collection ready.",
        ),
        ex(
            "File upload field",
            "Campo FileType (upload)",
            "FileType 上传字段",
            [
                "use Symfony\\Component\\Form\\Extension\\Core\\Type\\FileType;",
                "$builder->add('photo', FileType::class);",
            ],
            ["FileType::class", "photo"],
            "File field added.",
        ),
        ex(
            "Form event listener",
            "Listener de evento en form",
            "表单事件监听",
            [
                "use Symfony\\Component\\Form\\FormEvents;",
                "$builder->addEventListener(FormEvents::PRE_SUBMIT, function () {});",
            ],
            ["FormEvents::PRE_SUBMIT", "addEventListener"],
            "Event attached.",
        ),
        ex(
            "Configure options",
            "Configurar opciones",
            "配置 options",
            [
                "use Symfony\\Component\\OptionsResolver\\OptionsResolver;",
                "public function configureOptions(OptionsResolver $resolver): void {}",
            ],
            ["configureOptions", "OptionsResolver"],
            "Options ready.",
        ),
        ex(
            "Data transformer idea",
            "Idea de data transformer",
            "数据转换器思路",
            [
                "use Symfony\\Component\\Form\\DataTransformerInterface;",
                "class PriceTransformer implements DataTransformerInterface {}",
            ],
            ["DataTransformerInterface", "PriceTransformer"],
            "Transformer created.",
        ),
        ex(
            "Challenge: full create form flow",
            "Desafio: flujo completo de form create",
            "挑战：完整创建表单流程",
            [
                "$form = $this->createForm(ProductType::class);",
                "$form->handleRequest($request);",
                "if ($form->isSubmitted() && $form->isValid()) { /* save */ }",
            ],
            ["createForm(", "handleRequest", "isValid()"],
            "Flow ready.",
        ),
    ],
    "symfonyDoctrine": [
        ex(
            "Import ORM mapping as ORM",
            "Importar mapping como ORM",
            "导入 ORM 映射别名",
            ["use Doctrine\\ORM\\Mapping as ORM;"],
            ["Mapping as ORM", "Doctrine\\ORM"],
            "ORM alias ready.",
        ),
        ex(
            "Mark a class as an Entity",
            "Marcar una clase como Entity",
            "标记 Entity",
            ["#[ORM\\Entity]", "class User {}"],
            ["#[ORM\\Entity]", "class User"],
            "Entity mapped.",
        ),
        ex(
            "Add an id field",
            "Agregar campo id",
            "添加 id 字段",
            [
                "#[ORM\\Id]",
                "#[ORM\\GeneratedValue]",
                "#[ORM\\Column]",
                "private ?int $id = null;",
            ],
            ["ORM\\Id", "GeneratedValue", "$id"],
            "ID ready.",
        ),
        ex(
            "String column with length",
            "Columna string con length",
            "字符串列长度",
            [
                "#[ORM\\Column(length: 255)]",
                "private string $name;",
            ],
            ["Column(length:", "255", "$name"],
            "Name column.",
        ),
        ex(
            "Nullable column",
            "Columna nullable",
            "可空列",
            [
                "#[ORM\\Column(nullable: true)]",
                "private ?string $bio = null;",
            ],
            ["nullable: true", "$bio"],
            "Nullable set.",
        ),
        ex(
            "Unique column",
            "Columna unique",
            "唯一列",
            [
                "#[ORM\\Column(unique: true)]",
                "private string $email;",
            ],
            ["unique: true", "$email"],
            "Unique set.",
        ),
        ex(
            "DateTimeImmutable column",
            "Columna DateTimeImmutable",
            "DateTimeImmutable 列",
            [
                "#[ORM\\Column(type: 'datetime_immutable')]",
                "private \\DateTimeImmutable $createdAt;",
            ],
            ["datetime_immutable", "DateTimeImmutable"],
            "Date mapped.",
        ),
        ex(
            "Boolean column",
            "Columna boolean",
            "布尔列",
            [
                "#[ORM\\Column]",
                "private bool $enabled = true;",
            ],
            ["bool", "enabled"],
            "Bool mapped.",
        ),
        ex(
            "Repository class option",
            "Opcion de repositoryClass",
            "repositoryClass 选项",
            [
                "#[ORM\\Entity(repositoryClass: UserRepository::class)]",
                "class User {}",
            ],
            ["repositoryClass", "UserRepository::class"],
            "Repository linked.",
        ),
        ex(
            "Generate a migration",
            "Generar una migracion",
            "生成迁移",
            ["php bin/console make:migration"],
            ["make:migration", "bin/console"],
            "Migration file.",
        ),
        ex(
            "Run migrations",
            "Ejecutar migraciones",
            "执行迁移",
            ["php bin/console doctrine:migrations:migrate"],
            ["doctrine:migrations:migrate", "bin/console"],
            "Migrated.",
        ),
        ex(
            "Lifecycle callback PrePersist",
            "Callback PrePersist",
            "PrePersist 回调",
            [
                "#[ORM\\PrePersist]",
                "public function onCreate(): void {}",
            ],
            ["PrePersist", "onCreate"],
            "Hook ready.",
        ),
        ex(
            "Implement __toString()",
            "Implementar __toString()",
            "实现 __toString()",
            ["public function __toString(): string { return $this->name; }"],
            ["__toString", "return $this->name"],
            "Stringable.",
        ),
        ex(
            "Slug field (unique)",
            "Campo slug (unique)",
            "slug 字段（唯一）",
            [
                "#[ORM\\Column(length: 180, unique: true)]",
                "private string $slug;",
            ],
            ["slug", "unique: true"],
            "Slug ready.",
        ),
        ex(
            "Challenge: Product entity essentials",
            "Desafio: entidad Product esencial",
            "挑战：Product 实体基础",
            [
                "#[ORM\\Entity]",
                "class Product {",
                "  #[ORM\\Column(length: 255)] private string $name;",
                "  #[ORM\\Column] private int $price;",
                "}",
            ],
            ["class Product", "$price", "ORM\\Column"],
            "Entity ready.",
        ),
    ],
    "symfonyDoctrineQueries": [
        ex(
            "Inject a repository",
            "Inyectar un repositorio",
            "注入仓库",
            ["public function list(ProductRepository $repo) {}"],
            ["ProductRepository", "list("],
            "Repo injected.",
        ),
        ex(
            "Find by id",
            "Buscar por id",
            "按 id 查找",
            ["$product = $repo->find($id);"],
            ["->find(", "$id"],
            "Entity loaded.",
        ),
        ex(
            "Find one by criteria",
            "FindOneBy con criterio",
            "按条件查一个",
            ["$user = $repo->findOneBy(['email' => $email]);"],
            ["findOneBy", "email", "$email"],
            "One found.",
        ),
        ex(
            "Find with ordering and limit",
            "Find con orden y limite",
            "排序 + 限制数量",
            ["$rows = $repo->findBy(['status' => 'live'], ['createdAt' => 'DESC'], 10);"],
            ["findBy", "createdAt", "DESC"],
            "List found.",
        ),
        ex(
            "Start a QueryBuilder",
            "Empezar un QueryBuilder",
            "开始 QueryBuilder",
            ["$qb = $this->createQueryBuilder('p');"],
            ["createQueryBuilder", "'p'"],
            "QB started.",
        ),
        ex(
            "Where + setParameter",
            "Where + setParameter",
            "where + setParameter",
            [
                "$qb->where('p.status = :s')",
                "   ->setParameter('s', 'ACTIVE');",
            ],
            ["where(", "setParameter", ":s"],
            "Filtered.",
        ),
        ex(
            "Join a relation",
            "Join de una relacion",
            "join 关联",
            ["$qb->join('p.category', 'c');"],
            ["join(", "p.category", "'c'"],
            "Joined.",
        ),
        ex(
            "Order results",
            "Ordenar resultados",
            "排序结果",
            ["$qb->orderBy('p.createdAt', 'DESC');"],
            ["orderBy", "createdAt", "DESC"],
            "Ordered.",
        ),
        ex(
            "Pagination basics",
            "Paginacion basica",
            "分页基础",
            [
                "$qb->setFirstResult(20);",
                "$qb->setMaxResults(10);",
            ],
            ["setFirstResult", "setMaxResults"],
            "Paged.",
        ),
        ex(
            "Create DQL query",
            "Crear query DQL",
            "创建 DQL 查询",
            ["$q = $em->createQuery('SELECT u FROM App\\\\Entity\\\\User u');"],
            ["createQuery", "App\\\\Entity\\\\User"],
            "DQL ready.",
        ),
        ex(
            "Persist and flush",
            "Persist y flush",
            "persist + flush",
            [
                "$em->persist($entity);",
                "$em->flush();",
            ],
            ["persist(", "flush("],
            "Saved.",
        ),
        ex(
            "Remove an entity",
            "Eliminar una entidad",
            "删除实体",
            [
                "$em->remove($entity);",
                "$em->flush();",
            ],
            ["remove(", "flush("],
            "Removed.",
        ),
        ex(
            "Custom repository method",
            "Metodo custom en repo",
            "自定义仓库方法",
            ["public function findActive(): array { return []; }"],
            ["findActive", "array"],
            "Method created.",
        ),
        ex(
            "Count query",
            "Query de count",
            "count 查询",
            ["$qb->select('COUNT(p.id)');"],
            ["COUNT", "p.id"],
            "Counted.",
        ),
        ex(
            "Challenge: search by term (LIKE)",
            "Desafio: buscar por termino (LIKE)",
            "挑战：按关键字搜索（LIKE）",
            [
                "$qb->where('p.name LIKE :t')",
                "   ->setParameter('t', '%'.$term.'%');",
            ],
            ["LIKE", ":t", "%'.$term.'%"],
            "Search ready.",
        ),
    ],
    "symfonyValidation": [
        ex(
            "Import constraints as Assert",
            "Importar constraints como Assert",
            "导入 Assert 约束",
            ["use Symfony\\Component\\Validator\\Constraints as Assert;"],
            ["Constraints as Assert", "Validator"],
            "Assert ready.",
        ),
        ex(
            "NotBlank constraint",
            "Constraint NotBlank",
            "NotBlank 约束",
            ["#[Assert\\NotBlank]", "private string $name;"],
            ["NotBlank", "$name"],
            "Not blank.",
        ),
        ex(
            "Email constraint",
            "Constraint Email",
            "Email 约束",
            ["#[Assert\\Email]", "private string $email;"],
            ["Assert\\Email", "$email"],
            "Email validated.",
        ),
        ex(
            "Length constraint",
            "Constraint Length",
            "Length 约束",
            ["#[Assert\\Length(min: 3, max: 20)]", "private string $username;"],
            ["Length(", "min:", "max:"],
            "Length checked.",
        ),
        ex(
            "Regex constraint",
            "Constraint Regex",
            "Regex 约束",
            ["#[Assert\\Regex(pattern: '/^[a-z0-9_-]+$/')]", "private string $slug;"],
            ["Regex(", "pattern:", "slug"],
            "Pattern checked.",
        ),
        ex(
            "Positive constraint",
            "Constraint Positive",
            "Positive 约束",
            ["#[Assert\\Positive]", "private int $price;"],
            ["Positive", "$price"],
            "Positive.",
        ),
        ex(
            "Choice constraint",
            "Constraint Choice",
            "Choice 约束",
            ["#[Assert\\Choice(choices: ['draft','live'])]", "private string $status;"],
            ["Choice(", "choices:", "status"],
            "Choice validated.",
        ),
        ex(
            "Range constraint",
            "Constraint Range",
            "Range 约束",
            ["#[Assert\\Range(min: 1, max: 5)]", "private int $rating;"],
            ["Range(", "min:", "max:"],
            "Range checked.",
        ),
        ex(
            "Validate nested objects",
            "Validar objetos anidados",
            "校验嵌套对象",
            ["#[Assert\\Valid]", "private Address $address;"],
            ["Assert\\Valid", "Address"],
            "Nested validated.",
        ),
        ex(
            "UniqueEntity on an entity",
            "UniqueEntity en una entidad",
            "实体唯一约束",
            [
                "use Symfony\\Bridge\\Doctrine\\Validator\\Constraints\\UniqueEntity;",
                "#[UniqueEntity('email')]",
            ],
            ["UniqueEntity", "email"],
            "Unique checked.",
        ),
        ex(
            "Validate in a controller",
            "Validar en un controlador",
            "在控制器里校验",
            [
                "use Symfony\\Component\\Validator\\Validator\\ValidatorInterface;",
                "$violations = $validator->validate($dto);",
            ],
            ["$validator->validate", "$violations"],
            "Validated.",
        ),
        ex(
            "Read violations count",
            "Leer count de violations",
            "读取错误数量",
            ["if ($violations->count() > 0) { /* return errors */ }"],
            ["violations->count", "> 0"],
            "Errors handled.",
        ),
        ex(
            "Validation groups",
            "Grupos de validacion",
            "校验分组",
            ["#[Assert\\NotBlank(groups: ['create'])]"],
            ["groups:", "create"],
            "Group ready.",
        ),
        ex(
            "Callback constraint",
            "Constraint Callback",
            "Callback 约束",
            ["#[Assert\\Callback]", "public function validate() {}"],
            ["Callback", "validate()"],
            "Callback added.",
        ),
        ex(
            "Challenge: DTO with multiple constraints",
            "Desafio: DTO con multiples constraints",
            "挑战：DTO 多重约束",
            [
                "#[Assert\\NotBlank]",
                "#[Assert\\Length(min: 3)]",
                "public string $title;",
            ],
            ["NotBlank", "Length(", "$title"],
            "DTO validated.",
        ),
    ],
    "symfonyServices": [
        ex(
            "Create a service class",
            "Crear una clase servicio",
            "创建服务类",
            ["class Slugger { public function slugify(string $s): string { return $s; } }"],
            ["class Slugger", "slugify("],
            "Service created.",
        ),
        ex(
            "Inject a service via constructor",
            "Inyectar un servicio por constructor",
            "构造函数注入服务",
            ["public function __construct(private Slugger $slugger) {}"],
            ["__construct", "Slugger $slugger"],
            "Injected.",
        ),
        ex(
            "Inject LoggerInterface",
            "Inyectar LoggerInterface",
            "注入 LoggerInterface",
            ["public function __construct(private LoggerInterface $logger) {}"],
            ["LoggerInterface", "$logger"],
            "Logger injected.",
        ),
        ex(
            "Autowire a parameter with an attribute",
            "Autowire de parametro con atributo",
            "用属性注入参数",
            [
                "use Symfony\\Component\\DependencyInjection\\Attribute\\Autowire;",
                "public function __construct(#[Autowire('%kernel.project_dir%')] string $dir) {}",
            ],
            ["Autowire", "kernel.project_dir", "$dir"],
            "Param injected.",
        ),
        ex(
            "Autowire an env var",
            "Autowire de env var",
            "注入 env 变量",
            [
                "use Symfony\\Component\\DependencyInjection\\Attribute\\Autowire;",
                "public function __construct(#[Autowire('%env(APP_NAME)%')] string $appName) {}",
            ],
            ["env(APP_NAME)", "$appName"],
            "Env injected.",
        ),
        ex(
            "Register a service in services.yaml",
            "Registrar un servicio en services.yaml",
            "在 services.yaml 注册服务",
            [
                "services:",
                "  App\\Service\\Slugger:",
                "    autowire: true",
            ],
            ["services:", "App\\Service\\Slugger", "autowire:"],
            "Service registered.",
        ),
        ex(
            "Make a service public (rare)",
            "Hacer un servicio public (raro)",
            "把服务设为 public（少用）",
            [
                "services:",
                "  App\\Service\\Slugger:",
                "    public: true",
            ],
            ["public:", "true"],
            "Public service.",
        ),
        ex(
            "Pass an argument via services.yaml",
            "Pasar un argumento via services.yaml",
            "通过 services.yaml 传参",
            [
                "services:",
                "  App\\Service\\Slugger:",
                "    arguments:",
                "      $separator: '-'",
            ],
            ["arguments:", "$separator", "-"],
            "Argument wired.",
        ),
        ex(
            "AutoconfigureTag on a class",
            "AutoconfigureTag en una clase",
            "类自动打 tag",
            [
                "use Symfony\\Component\\DependencyInjection\\Attribute\\AutoconfigureTag;",
                "#[AutoconfigureTag('app.reporter')]",
                "class SalesReporter {}",
            ],
            ["AutoconfigureTag", "app.reporter", "SalesReporter"],
            "Tagged.",
        ),
        ex(
            "Inject tagged services as an iterable",
            "Inyectar servicios taggeados como iterable",
            "注入 tagged services（iterable）",
            [
                "use Symfony\\Component\\DependencyInjection\\Attribute\\TaggedIterator;",
                "public function __construct(#[TaggedIterator('app.reporter')] iterable $reporters) {}",
            ],
            ["TaggedIterator", "iterable", "app.reporter"],
            "Iterator injected.",
        ),
        ex(
            "AsTaggedItem with priority",
            "AsTaggedItem con prioridad",
            "AsTaggedItem + 优先级",
            [
                "use Symfony\\Component\\DependencyInjection\\Attribute\\AsTaggedItem;",
                "#[AsTaggedItem('app.reporter', priority: 10)]",
                "class VipReporter {}",
            ],
            ["AsTaggedItem", "priority:", "VipReporter"],
            "Priority set.",
        ),
        ex(
            "Lazy service config",
            "Servicio lazy",
            "懒加载服务",
            [
                "services:",
                "  App\\Service\\HeavyService:",
                "    lazy: true",
            ],
            ["lazy:", "true", "HeavyService"],
            "Lazy ready.",
        ),
        ex(
            "Setter call via config",
            "Llamada setter via config",
            "通过配置调用 setter",
            [
                "services:",
                "  App\\Service\\Slugger:",
                "    calls:",
                "      - [setPrefix, ['api_']]",
            ],
            ["calls:", "setPrefix", "api_"],
            "Setter wired.",
        ),
        ex(
            "Service parameter binding idea",
            "Idea de binding de parametros",
            "参数绑定思路",
            [
                "services:",
                "  _defaults:",
                "    bind:",
                "      $locale: 'es'",
            ],
            ["bind:", "$locale", "es"],
            "Bind ready.",
        ),
        ex(
            "Challenge: service + tag + iterator",
            "Desafio: servicio + tag + iterator",
            "挑战：服务 + tag + iterator",
            [
                "#[AutoconfigureTag('app.pipeline')]",
                "class StepA {}",
                "public function __construct(#[TaggedIterator('app.pipeline')] iterable $steps) {}",
            ],
            ["AutoconfigureTag", "TaggedIterator", "app.pipeline"],
            "Pipeline ready.",
        ),
    ],
    "symfonyConfig": [
        ex(
            "Set APP_ENV",
            "Definir APP_ENV",
            "设置 APP_ENV",
            ["APP_ENV=dev"],
            ["APP_ENV", "dev"],
            "Env set.",
        ),
        ex(
            "Set APP_DEBUG",
            "Definir APP_DEBUG",
            "设置 APP_DEBUG",
            ["APP_DEBUG=1"],
            ["APP_DEBUG", "1"],
            "Debug on.",
        ),
        ex(
            "Set APP_SECRET",
            "Definir APP_SECRET",
            "设置 APP_SECRET",
            ["APP_SECRET=changeme"],
            ["APP_SECRET", "changeme"],
            "Secret set.",
        ),
        ex(
            "Define a parameter in services.yaml",
            "Definir un parametro en services.yaml",
            "在 services.yaml 定义参数",
            ["parameters:", "  app.locale: 'es'"],
            ["parameters:", "app.locale", "es"],
            "Parameter set.",
        ),
        ex(
            "Read a parameter from ParameterBag",
            "Leer un parametro con ParameterBag",
            "用 ParameterBag 读取参数",
            [
                "use Symfony\\Component\\DependencyInjection\\ParameterBag\\ParameterBagInterface;",
                "$locale = $bag->get('app.locale');",
            ],
            ["ParameterBagInterface", "get('app.locale')"],
            "Read.",
        ),
        ex(
            "Twig default path config",
            "Configurar default_path de Twig",
            "Twig 默认路径配置",
            ["twig:", "  default_path: '%kernel.project_dir%/templates'"],
            ["default_path", "kernel.project_dir", "templates"],
            "Twig configured.",
        ),
        ex(
            "Routes config file",
            "Fichero de rutas",
            "路由配置文件",
            ["# config/routes.yaml", "controllers:", "  resource: ../src/Controller/"],
            ["routes.yaml", "controllers:", "resource:"],
            "Routes loaded.",
        ),
        ex(
            "Monolog handler idea",
            "Idea de handler en Monolog",
            "Monolog handler 思路",
            ["monolog:", "  handlers:", "    main: { type: stream, path: '%kernel.logs_dir%/app.log' }"],
            ["monolog:", "handlers:", "app.log"],
            "Logs configured.",
        ),
        ex(
            "Cache config basics",
            "Config basica de cache",
            "缓存基础配置",
            ["framework:", "  cache:", "    app: cache.adapter.filesystem"],
            ["cache.adapter.filesystem", "framework:"],
            "Cache configured.",
        ),
        ex(
            "SQLite DATABASE_URL (no host user)",
            "DATABASE_URL con SQLite (sin host user)",
            "SQLite 的 DATABASE_URL",
            ['DATABASE_URL="sqlite:///%kernel.project_dir%/var/app.db"'],
            ["DATABASE_URL", "sqlite", "var/app.db"],
            "DB configured.",
        ),
        ex(
            "Doctrine dbal url from env",
            "Doctrine dbal url desde env",
            "Doctrine 从 env 读取 dbal",
            ["doctrine:", "  dbal:", "    url: '%env(resolve:DATABASE_URL)%'"],
            ["dbal:", "env(resolve:DATABASE_URL)", "doctrine:"],
            "DBAL ready.",
        ),
        ex(
            "Mailer DSN as null transport",
            "Mailer DSN null",
            "Mailer DSN 为空",
            ["MAILER_DSN=null://null"],
            ["MAILER_DSN", "null://null"],
            "Mailer ok.",
        ),
        ex(
            "Messenger transport DSN",
            "DSN de transport de Messenger",
            "Messenger transport DSN",
            ["MESSENGER_TRANSPORT_DSN=doctrine://default"],
            ["MESSENGER_TRANSPORT_DSN", "doctrine://default"],
            "Transport set.",
        ),
        ex(
            "Migrations path config",
            "Config de rutas de migraciones",
            "迁移路径配置",
            ["doctrine_migrations:", "  migrations_paths:", "    'DoctrineMigrations': '%kernel.project_dir%/migrations'"],
            ["migrations_paths", "migrations"],
            "Paths ready.",
        ),
        ex(
            "Challenge: config + env together",
            "Desafio: config + env juntos",
            "挑战：结合配置与 env",
            [
                "parameters:",
                "  app.name: '%env(APP_NAME)%'",
                "APP_NAME=Shoply",
            ],
            ["app.name", "APP_NAME", "env(APP_NAME)"],
            "Wired.",
        ),
    ],
    "symfonySecurity": [
        ex(
            "Password hashers config",
            "Config de password hashers",
            "密码哈希配置",
            ["security:", "  password_hashers:", "    App\\Entity\\User: 'auto'"],
            ["password_hashers", "App\\Entity\\User", "auto"],
            "Hashers ready.",
        ),
        ex(
            "User implements UserInterface",
            "User implementa UserInterface",
            "User 实现 UserInterface",
            ["use Symfony\\Component\\Security\\Core\\User\\UserInterface;", "class User implements UserInterface {}"],
            ["implements UserInterface", "class User"],
            "User ok.",
        ),
        ex(
            "User identifier method",
            "Metodo getUserIdentifier",
            "getUserIdentifier 方法",
            ["public function getUserIdentifier(): string { return $this->email; }"],
            ["getUserIdentifier", "return $this->email"],
            "Identifier ready.",
        ),
        ex(
            "Configure a firewall",
            "Configurar un firewall",
            "配置 firewall",
            ["security:", "  firewalls:", "    main: { lazy: true }"],
            ["firewalls:", "main:", "lazy:"],
            "Firewall ready.",
        ),
        ex(
            "Access control rule",
            "Regla de access_control",
            "access_control 规则",
            ["security:", "  access_control:", "    - { path: ^/admin, roles: ROLE_ADMIN }"],
            ["access_control", "ROLE_ADMIN", "^/admin"],
            "Rule added.",
        ),
        ex(
            "IsGranted attribute",
            "Atributo IsGranted",
            "IsGranted 属性",
            [
                "use Symfony\\Component\\Security\\Http\\Attribute\\IsGranted;",
                "#[IsGranted('ROLE_ADMIN')]",
            ],
            ["IsGranted", "ROLE_ADMIN"],
            "Guarded.",
        ),
        ex(
            "Deny access in controller",
            "Denegar acceso en controlador",
            "控制器里拒绝访问",
            ["$this->denyAccessUnlessGranted('ROLE_ADMIN');"],
            ["denyAccessUnlessGranted", "ROLE_ADMIN"],
            "Denied.",
        ),
        ex(
            "Voter skeleton",
            "Esqueleto de Voter",
            "Voter 骨架",
            ["use Symfony\\Component\\Security\\Core\\Authorization\\Voter\\Voter;", "class PostVoter extends Voter {}"],
            ["extends Voter", "PostVoter"],
            "Voter created.",
        ),
        ex(
            "Hash a password",
            "Hashear password",
            "哈希密码",
            [
                "use Symfony\\Component\\PasswordHasher\\Hasher\\UserPasswordHasherInterface;",
                "$hash = $hasher->hashPassword($user, $plain);",
            ],
            ["hashPassword", "$hasher", "$plain"],
            "Hashed.",
        ),
        ex(
            "Logout config",
            "Config de logout",
            "logout 配置",
            ["security:", "  firewalls:", "    main:", "      logout:", "        path: app_logout"],
            ["logout:", "path:", "app_logout"],
            "Logout ready.",
        ),
        ex(
            "Login path config",
            "Config de login_path",
            "login_path 配置",
            ["security:", "  firewalls:", "    main:", "      form_login:", "        login_path: app_login"],
            ["form_login", "login_path", "app_login"],
            "Login ready.",
        ),
        ex(
            "CSRF token in Twig login",
            "CSRF token en Twig login",
            "Twig 登录 CSRF token",
            ["<input type=\"hidden\" name=\"_csrf_token\" value=\"{{ csrf_token('authenticate') }}\">"],
            ["csrf_token('authenticate')", "_csrf_token"],
            "CSRF ok.",
        ),
        ex(
            "Remember me config",
            "Config remember_me",
            "remember_me 配置",
            ["security:", "  firewalls:", "    main:", "      remember_me:", "        secret: '%kernel.secret%'"],
            ["remember_me", "kernel.secret"],
            "Remember me.",
        ),
        ex(
            "Check a role in Twig",
            "Comprobar rol en Twig",
            "在 Twig 检查角色",
            ["{% if is_granted('ROLE_ADMIN') %}Admin{% endif %}"],
            ["is_granted('ROLE_ADMIN')", "{% if", "{% endif %}"],
            "Role checked.",
        ),
        ex(
            "Challenge: protect an API endpoint",
            "Desafio: proteger endpoint API",
            "挑战：保护 API 接口",
            ["#[IsGranted('ROLE_USER')]", "#[Route('/api/me', name: 'api_me')]", "public function me() {}"],
            ["ROLE_USER", "/api/me", "api_me"],
            "Protected.",
        ),
    ],
    "symfonyEvents": [
        ex(
            "Create an EventSubscriber",
            "Crear un EventSubscriber",
            "创建 EventSubscriber",
            [
                "use Symfony\\Component\\EventDispatcher\\EventSubscriberInterface;",
                "class AuditSubscriber implements EventSubscriberInterface {}",
            ],
            ["EventSubscriberInterface", "AuditSubscriber"],
            "Subscriber created.",
        ),
        ex(
            "Subscribed events method",
            "Metodo getSubscribedEvents",
            "getSubscribedEvents 方法",
            ["public static function getSubscribedEvents(): array { return []; }"],
            ["getSubscribedEvents", "array"],
            "Subscribed.",
        ),
        ex(
            "Listen to KernelEvents::REQUEST",
            "Escuchar KernelEvents::REQUEST",
            "监听 KernelEvents::REQUEST",
            [
                "use Symfony\\Component\\HttpKernel\\KernelEvents;",
                "KernelEvents::REQUEST",
            ],
            ["KernelEvents::REQUEST", "KernelEvents"],
            "Listening.",
        ),
        ex(
            "Read the Request from the event",
            "Leer Request desde el evento",
            "从事件里拿 Request",
            [
                "$request = $event->getRequest();",
            ],
            ["getRequest()", "$event"],
            "Request read.",
        ),
        ex(
            "Add listener priority",
            "Agregar prioridad",
            "添加优先级",
            ["public static function getSubscribedEvents(): array { return [KernelEvents::REQUEST => ['onReq', 20]]; }"],
            ["20", "KernelEvents::REQUEST"],
            "Priority set.",
        ),
        ex(
            "Stop propagation idea",
            "Idea de stopPropagation",
            "stopPropagation 思路",
            ["$event->stopPropagation();"],
            ["stopPropagation"],
            "Stopped.",
        ),
        ex(
            "Listen to response event",
            "Escuchar response event",
            "监听 response 事件",
            ["KernelEvents::RESPONSE"],
            ["KernelEvents::RESPONSE"],
            "Response hooked.",
        ),
        ex(
            "Modify response header in subscriber",
            "Modificar header en subscriber",
            "在 subscriber 改 header",
            ["$event->getResponse()->headers->set('X-Audit', '1');"],
            ["getResponse()", "headers->set", "X-Audit"],
            "Header added.",
        ),
        ex(
            "Create a custom event class",
            "Crear un evento custom",
            "创建自定义事件",
            ["class UserRegisteredEvent {}"],
            ["UserRegisteredEvent", "class"],
            "Event created.",
        ),
        ex(
            "Dispatch a custom event",
            "Disparar un evento custom",
            "派发自定义事件",
            ["$dispatcher->dispatch(new UserRegisteredEvent());"],
            ["dispatch(", "UserRegisteredEvent"],
            "Dispatched.",
        ),
        ex(
            "Listen to exceptions",
            "Escuchar excepciones",
            "监听异常",
            ["KernelEvents::EXCEPTION"],
            ["KernelEvents::EXCEPTION"],
            "Exception hooked.",
        ),
        ex(
            "Log inside a subscriber",
            "Hacer log dentro de un subscriber",
            "subscriber 内写日志",
            ["$logger->warning('blocked');"],
            ["warning(", "blocked"],
            "Logged.",
        ),
        ex(
            "Subscriber method naming",
            "Nombre de metodo del subscriber",
            "subscriber 方法命名",
            ["public function onKernelRequest() {}"],
            ["onKernelRequest"],
            "Method ready.",
        ),
        ex(
            "Test a subscriber (idea)",
            "Testear un subscriber (idea)",
            "测试 subscriber（思路）",
            ["$this->assertTrue(method_exists($sub, 'onKernelRequest'));"],
            ["assertTrue", "onKernelRequest"],
            "Test sketch.",
        ),
        ex(
            "Challenge: after-register hook",
            "Desafio: hook post-registro",
            "挑战：注册后钩子",
            ["$dispatcher->dispatch(new UserRegisteredEvent());", "$mailer->send($msg);"],
            ["dispatch(", "send("],
            "Sent.",
        ),
    ],
    "symfonyMessenger": [
        ex(
            "Create a message class",
            "Crear una clase mensaje",
            "创建消息类",
            ["final class SendWelcomeEmail { public function __construct(public string $email) {} }"],
            ["class SendWelcomeEmail", "public string $email"],
            "Message ready.",
        ),
        ex(
            "Create a handler with AsMessageHandler",
            "Crear handler con AsMessageHandler",
            "用 AsMessageHandler 创建 handler",
            [
                "use Symfony\\Component\\Messenger\\Attribute\\AsMessageHandler;",
                "#[AsMessageHandler]",
                "final class SendWelcomeEmailHandler {",
                "  public function __invoke(SendWelcomeEmail $msg) {}",
                "}",
            ],
            ["AsMessageHandler", "__invoke", "SendWelcomeEmail"],
            "Handler ready.",
        ),
        ex(
            "Dispatch a message",
            "Despachar un mensaje",
            "dispatch 消息",
            ["$bus->dispatch(new SendWelcomeEmail($email));"],
            ["dispatch(", "SendWelcomeEmail", "$bus"],
            "Dispatched.",
        ),
        ex(
            "Configure a transport",
            "Configurar un transport",
            "配置 transport",
            [
                "framework:",
                "  messenger:",
                "    transports:",
                "      async: '%env(MESSENGER_TRANSPORT_DSN)%'",
            ],
            ["transports:", "async:", "MESSENGER_TRANSPORT_DSN"],
            "Transport configured.",
        ),
        ex(
            "Consume messages",
            "Consumir mensajes",
            "消费消息",
            ["php bin/console messenger:consume async"],
            ["messenger:consume", "async"],
            "Worker running.",
        ),
        ex(
            "Retry strategy",
            "Retry strategy",
            "重试策略",
            [
                "framework:",
                "  messenger:",
                "    transports:",
                "      async:",
                "        retry_strategy: { max_retries: 3 }",
            ],
            ["retry_strategy", "max_retries", "3"],
            "Retry set.",
        ),
        ex(
            "Failure transport",
            "Failure transport",
            "失败队列",
            [
                "framework:",
                "  messenger:",
                "    failure_transport: failed",
            ],
            ["failure_transport", "failed"],
            "Failure set.",
        ),
        ex(
            "Delay a message",
            "Retrasar un mensaje",
            "延迟消息",
            [
                "use Symfony\\Component\\Messenger\\Stamp\\DelayStamp;",
                "$bus->dispatch($msg, [new DelayStamp(5000)]);",
            ],
            ["DelayStamp", "5000"],
            "Delayed.",
        ),
        ex(
            "Route a message to async",
            "Rutear mensaje a async",
            "把消息路由到 async",
            ["framework:", "  messenger:", "    routing:", "      'App\\Message\\SendWelcomeEmail': async"],
            ["routing:", "SendWelcomeEmail", "async"],
            "Routed.",
        ),
        ex(
            "Multiple buses (idea)",
            "Multiples buses (idea)",
            "多个 bus（思路）",
            ["framework:", "  messenger:", "    buses:", "      command.bus: ~"],
            ["buses:", "command.bus"],
            "Bus ready.",
        ),
        ex(
            "Envelope and stamps (idea)",
            "Envelope y stamps (idea)",
            "Envelope 与 stamp（思路）",
            ["$envelope = new Envelope($msg);"],
            ["Envelope", "$msg"],
            "Envelope created.",
        ),
        ex(
            "Sync transport",
            "Transport sync",
            "同步 transport",
            ["framework:", "  messenger:", "    transports:", "      sync: 'sync://'"],
            ["sync://", "sync:"],
            "Sync ok.",
        ),
        ex(
            "Middleware concept",
            "Concepto de middleware",
            "中间件概念",
            ["framework:", "  messenger:", "    buses:", "      messenger.bus.default: { middleware: ['validation'] }"],
            ["middleware", "validation"],
            "Middleware set.",
        ),
        ex(
            "Worker message limit (idea)",
            "Limite de mensajes del worker (idea)",
            "worker 消息上限（思路）",
            ["php bin/console messenger:consume async --limit=50"],
            ["--limit=50", "messenger:consume"],
            "Limited.",
        ),
        ex(
            "Challenge: async image resize job",
            "Desafio: job async de resize de imagen",
            "挑战：异步图片缩放任务",
            ["final class ResizeImage { public function __construct(public string $path) {} }", "#[AsMessageHandler]"],
            ["ResizeImage", "AsMessageHandler"],
            "Job ready.",
        ),
    ],
    "symfonyConsole": [
        ex(
            "Generate a command",
            "Generar un comando",
            "生成命令",
            ["php bin/console make:command ImportCsvCommand"],
            ["make:command", "ImportCsvCommand"],
            "Command generated.",
        ),
        ex(
            "AsCommand attribute",
            "Atributo AsCommand",
            "AsCommand 属性",
            [
                "use Symfony\\Component\\Console\\Attribute\\AsCommand;",
                "#[AsCommand(name: 'app:import')]",
            ],
            ["AsCommand", "app:import"],
            "Registered.",
        ),
        ex(
            "Command execute method",
            "Metodo execute",
            "execute 方法",
            ["protected function execute(InputInterface $input, OutputInterface $output): int { return Command::SUCCESS; }"],
            ["execute(", "Command::SUCCESS"],
            "Success.",
        ),
        ex(
            "Add an argument",
            "Agregar un argumento",
            "添加参数",
            ["$this->addArgument('file', InputArgument::REQUIRED);"],
            ["addArgument", "REQUIRED", "file"],
            "Arg added.",
        ),
        ex(
            "Add an option",
            "Agregar una opcion",
            "添加选项",
            ["$this->addOption('dry-run', null, InputOption::VALUE_NONE);"],
            ["addOption", "dry-run", "VALUE_NONE"],
            "Option added.",
        ),
        ex(
            "SymfonyStyle helper",
            "Helper SymfonyStyle",
            "SymfonyStyle 辅助",
            ["$io = new SymfonyStyle($input, $output);", "$io->success('Done');"],
            ["SymfonyStyle", "success("],
            "Styled.",
        ),
        ex(
            "Write output",
            "Escribir salida",
            "输出文字",
            ["$output->writeln('Hello');"],
            ["writeln(", "Hello"],
            "Printed.",
        ),
        ex(
            "Return SUCCESS constant",
            "Devolver SUCCESS",
            "返回 SUCCESS",
            ["return Command::SUCCESS;"],
            ["Command::SUCCESS"],
            "Ok.",
        ),
        ex(
            "Progress bar idea",
            "Idea de progress bar",
            "进度条思路",
            ["$bar = new ProgressBar($output);", "$bar->advance();"],
            ["ProgressBar", "advance("],
            "Progress.",
        ),
        ex(
            "Table output idea",
            "Idea de tabla",
            "表格输出思路",
            ["$table = new Table($output);", "$table->render();"],
            ["Table", "render("],
            "Table.",
        ),
        ex(
            "Question helper",
            "Question helper",
            "提问助手",
            ["$question = new Question('Name?');"],
            ["Question(", "Name"],
            "Asked.",
        ),
        ex(
            "Confirmation question",
            "Confirmacion",
            "确认问题",
            ["$question = new ConfirmationQuestion('Continue?', false);"],
            ["ConfirmationQuestion", "Continue"],
            "Confirmed.",
        ),
        ex(
            "LockableTrait",
            "LockableTrait",
            "LockableTrait",
            ["use Symfony\\Component\\Console\\Command\\LockableTrait;", "use LockableTrait;"],
            ["LockableTrait", "use LockableTrait"],
            "Locked.",
        ),
        ex(
            "Handle errors",
            "Manejar errores",
            "处理错误",
            ["$io->error('Bad file');", "return Command::FAILURE;"],
            ["error(", "Command::FAILURE"],
            "Failed.",
        ),
        ex(
            "Challenge: import CSV skeleton",
            "Desafio: esqueleto de import CSV",
            "挑战：CSV 导入骨架",
            ["$file = $input->getArgument('file');", "$io->success('Imported');"],
            ["getArgument('file')", "Imported"],
            "Imported.",
        ),
    ],
    "symfonyTesting": [
        ex(
            "Create a WebTestCase client",
            "Crear client WebTestCase",
            "创建 WebTestCase client",
            ["$client = static::createClient();"],
            ["createClient"],
            "Client ready.",
        ),
        ex(
            "Request a page",
            "Hacer request a una pagina",
            "请求页面",
            ["$client->request('GET', '/');"],
            ["request('GET'", "/"],
            "Requested.",
        ),
        ex(
            "Assert status code",
            "Assert status code",
            "断言状态码",
            ["$this->assertResponseStatusCodeSame(200);"],
            ["assertResponseStatusCodeSame", "200"],
            "200 OK",
        ),
        ex(
            "Assert page title exists",
            "Assert de un selector",
            "断言选择器",
            ["$this->assertSelectorTextContains('h1', 'Hello');"],
            ["assertSelectorTextContains", "h1", "Hello"],
            "Selector ok.",
        ),
        ex(
            "Assert JSON response",
            "Assert de JSON",
            "断言 JSON",
            ["$this->assertResponseIsSuccessful();", "$this->assertJsonContains(['ok' => true]);"],
            ["assertJsonContains", "ok"],
            "JSON ok.",
        ),
        ex(
            "Submit a form",
            "Enviar un form",
            "提交表单",
            ["$client->submitForm('Save', ['name' => 'Ana']);"],
            ["submitForm", "Save", "Ana"],
            "Submitted.",
        ),
        ex(
            "KernelTestCase get a service",
            "KernelTestCase obtener servicio",
            "KernelTestCase 获取服务",
            ["self::bootKernel();", "$container = static::getContainer();"],
            ["bootKernel", "getContainer"],
            "Container ready.",
        ),
        ex(
            "Fetch a service from the container",
            "Pedir un servicio al container",
            "从容器取服务",
            ["$mailer = $container->get(MailerInterface::class);"],
            ["get(", "MailerInterface::class"],
            "Service fetched.",
        ),
        ex(
            "Mock a service in tests",
            "Mockear un servicio",
            "mock 服务",
            ["$container->set(Slugger::class, $mock);"],
            ["container->set", "Slugger::class"],
            "Mock set.",
        ),
        ex(
            "Test access denied",
            "Test de acceso denegado",
            "测试拒绝访问",
            ["$client->request('GET', '/admin');", "$this->assertResponseStatusCodeSame(403);"],
            ["/admin", "403"],
            "403",
        ),
        ex(
            "Data provider idea",
            "Idea de data provider",
            "数据提供器思路",
            ["public function cases(): iterable { yield ['a']; }"],
            ["yield", "iterable"],
            "Cases ready.",
        ),
        ex(
            "Use fixtures (concept)",
            "Usar fixtures (concepto)",
            "使用 fixtures（概念）",
            ["php bin/console doctrine:fixtures:load --env=test"],
            ["fixtures:load", "--env=test"],
            "Fixtures loaded.",
        ),
        ex(
            "Test database env",
            "Env de base de datos de test",
            "测试数据库环境",
            ['DATABASE_URL="sqlite:///%kernel.project_dir%/var/test.db"'],
            ["test.db", "DATABASE_URL"],
            "Test DB set.",
        ),
        ex(
            "Debug a failing test",
            "Debug de un test que falla",
            "调试失败测试",
            ["$this->fail('todo');"],
            ["fail(", "todo"],
            "Failing on purpose.",
        ),
        ex(
            "Challenge: regression test for a route",
            "Desafio: test de regresion para una ruta",
            "挑战：路由回归测试",
            ["$client->request('GET', '/ping');", "$this->assertResponseStatusCodeSame(200);"],
            ["/ping", "200"],
            "Still works.",
        ),
    ],
}


def ensure_sizes() -> None:
    for cat_dir, *_ in CATEGORIES:
        if cat_dir not in EXERCISES:
            raise SystemExit(f"Missing EXERCISES for {cat_dir}")
        if len(EXERCISES[cat_dir]) != 15:
            raise SystemExit(f"{cat_dir} has {len(EXERCISES[cat_dir])} exercises, expected 15")


def build_model_list(
    cat_dir: str, specs: list[ExerciseSpec], lang: str, base_id: int
) -> str:
    var_name = f"{cat_dir}Model{lang.upper()}"
    lines: list[str] = []
    lines.append("import 'package:learnswift/data/courses/coursesExModel.dart';")
    lines.append("")
    lines.append("import '../../Swift/swiftBasics/sbExModelListZH.dart';")
    lines.append("")
    lines.append(f"List<CoursesExModel> {var_name} = [")

    for i, (t_en, t_es, t_zh, _code, _must, _out) in enumerate(specs):
        ex_id = base_id + i
        challenge = (i % 2 == 1)
        label = ex_label(lang, i + 1, challenge)
        topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]
        name = f"{label} {i+1}: {topic}"

        # Monetization rule: first 8 free, last 7 paid.
        already_buy = (
            f"purchaseManagerHive.getPurchasedTrue({ex_id})"
            if i < 8
            else f"purchaseManagerHive.getPurchasedFalse({ex_id})"
        )

        lines.append("  CoursesExModel(")
        lines.append(f"    id: {ex_id},")
        lines.append(f'    exerciseName: "{name}",')
        lines.append(f'    productID: "com.mrrubik.learnswift.symfonyex{ex_id}",')
        lines.append(f"    alreadyBuy: {already_buy},")
        lines.append(f"    completed: purchaseManagerHive.getCompleted({ex_id}),")
        lines.append("  ),")

    lines.append("];\n")
    return "\n".join(lines)


def build_exercise_screen(cat_dir: str, ex_id: int, must_tokens: list[str]) -> str:
    class_name = f"{camel(cat_dir)}Ex{ex_id}"

    regex_lines: list[str] = []
    for tok in must_tokens:
        pat = re.escape(normalize_must_token(tok))
        regex_lines.append(
            f"      RegExp({dart_string_literal(pat)}, caseSensitive: false, multiLine: true),"
        )

    lines: list[str] = []
    lines.append("import 'package:flutter/material.dart';")
    lines.append("import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';")
    lines.append("import 'package:flutter_gen/gen_l10n/app_localizations.dart';")
    lines.append("import 'package:learnswift/Widgets/codeTheme.dart';")
    lines.append("import 'package:learnswift/data/Constant/constant.dart';")
    lines.append("import 'package:learnswift/provider/allprovider.dart';")
    lines.append("import 'package:provider/provider.dart';")
    lines.append("")
    lines.append("import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';")
    lines.append("")
    lines.append(f"class {class_name} extends StatefulWidget {{")
    lines.append("  final String title;")
    lines.append("  final int id;")
    lines.append("  final bool completed;")
    lines.append("")
    lines.append(f"  const {class_name}({{")
    lines.append("    super.key,")
    lines.append("    required this.title,")
    lines.append("    required this.id,")
    lines.append("    required this.completed,")
    lines.append("  });")
    lines.append("")
    lines.append("  @override")
    lines.append(f"  State<{class_name}> createState() => _{class_name}State();")
    lines.append("}")
    lines.append("")
    lines.append(f"class _{class_name}State extends State<{class_name}> {{")
    lines.append("  final TextEditingController _controller = TextEditingController();")
    lines.append("  int _failedAttempts = 0;")
    lines.append("  Color _inputTextColor = Colors.grey;")
    lines.append("")
    lines.append("  String _t(String s) => s.replaceAll('@', '{').replaceAll('&', '}');")
    lines.append("")
    lines.append(f"  bool _isValid{ex_id}(String code) {{")
    lines.append("    final normalized = code.trim();")
    lines.append("")
    lines.append("    final required = <RegExp>[")
    lines.extend(regex_lines)
    lines.append("    ];")
    lines.append("")
    lines.append("    for (final rule in required) {")
    lines.append("      if (!rule.hasMatch(normalized)) return false;")
    lines.append("    }")
    lines.append("")
    lines.append("    return true;")
    lines.append("  }")
    lines.append("")
    lines.append("  @override")
    lines.append("  void dispose() {")
    lines.append("    _controller.dispose();")
    lines.append("    super.dispose();")
    lines.append("  }")
    lines.append("")
    lines.append("  void _showDialog(String title, String content, {Color? titleColor}) {")
    lines.append("    showDialog(")
    lines.append("      context: context,")
    lines.append("      builder: (context) {")
    lines.append("        return AlertDialog(")
    lines.append("          title: Text(")
    lines.append("            title,")
    lines.append("            style: TextStyle(")
    lines.append("              fontFamily: 'InconsolataRegular',")
    lines.append("              fontWeight: FontWeight.bold,")
    lines.append("              color: titleColor ?? Colors.black,")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("          content: SingleChildScrollView(")
    lines.append("            child: Text(")
    lines.append("              content,")
    lines.append("              style: const TextStyle(")
    lines.append("                fontFamily: 'InconsolataRegular',")
    lines.append("                fontWeight: FontWeight.normal,")
    lines.append("                color: Colors.black,")
    lines.append("                fontSize: 16,")
    lines.append("              ),")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("          actions: [")
    lines.append("            TextButton(")
    lines.append("              onPressed: () => Navigator.of(context).pop(),")
    lines.append("              child: Text(AppLocalizations.of(context)!.close),")
    lines.append("            ),")
    lines.append("          ],")
    lines.append("        );")
    lines.append("      },")
    lines.append("    );")
    lines.append("  }")
    lines.append("")
    lines.append("  void _validateInput(String userInput) {")
    lines.append(f"    final ok = _isValid{ex_id}(userInput);")
    lines.append("    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);")
    lines.append("  }")
    lines.append("")
    lines.append("  void _submit(AllProvider allprovider) {")
    lines.append("    final userInput = _controller.text;")
    lines.append("    final loc = AppLocalizations.of(context)!;")
    lines.append("")
    lines.append(f"    if (_isValid{ex_id}(userInput)) {{")
    lines.append("      purchaseManagerHive.updatePurchase(")
    lines.append("        widget.id,")
    lines.append("        purchased: true,")
    lines.append("        completed: true,")
    lines.append("      );")
    lines.append("")
    lines.append("      final idx = allprovider.data[Constant.catIndex].catExercise")
    lines.append("          .indexWhere((e) => e.id == widget.id);")
    lines.append("      if (idx != -1) {")
    lines.append("        allprovider.data[Constant.catIndex].catExercise[idx].completed = true;")
    lines.append("      }")
    lines.append("")
    lines.append("      allprovider.setData(allprovider.data);")
    lines.append("      _controller.clear();")
    lines.append("")
    lines.append("      _showDialog(")
    lines.append(f"        _t(loc.{LANG_PREFIX}CorrectTitle),")
    lines.append(f"        _t(loc.{LANG_PREFIX}CorrectExplanation),")
    lines.append("        titleColor: Colors.green,")
    lines.append("      );")
    lines.append("    } else {")
    lines.append("      setState(() {")
    lines.append("        _failedAttempts++;")
    lines.append("        _inputTextColor = Colors.red;")
    lines.append("      });")
    lines.append("")
    lines.append("      if (_failedAttempts == 1) {")
    lines.append("        _showDialog(")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}HintTitle1),")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}HintContent1),")
    lines.append("        );")
    lines.append("      } else if (_failedAttempts == 2) {")
    lines.append("        _showDialog(")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}HintTitle2),")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}HintContent2),")
    lines.append("        );")
    lines.append("      } else {")
    lines.append("        _showDialog(")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}SolutionTitle),")
    lines.append(f"          _t(loc.{LANG_PREFIX}{ex_id}SolutionContent),")
    lines.append("          titleColor: Colors.red,")
    lines.append("        );")
    lines.append("      }")
    lines.append("    }")
    lines.append("  }")
    lines.append("")
    lines.append("  @override")
    lines.append("  Widget build(BuildContext context) {")
    lines.append("    final allProvider = Provider.of<AllProvider>(context);")
    lines.append("    final loc = AppLocalizations.of(context)!;")
    lines.append("")
    lines.append("    final exampleLines = <String>[")
    for i in range(1, 7):
        lines.append(f"      _t(loc.{LANG_PREFIX}{ex_id}ExampleCode{i}),")
    lines.append("    ].where((e) => e.trim().isNotEmpty).toList();")
    lines.append("")
    lines.append("    return Scaffold(")
    lines.append("      floatingActionButton: Row(")
    lines.append("        mainAxisAlignment: MainAxisAlignment.end,")
    lines.append("        children: [")
    lines.append("          Padding(")
    lines.append("            padding: const EdgeInsets.all(8.0),")
    lines.append("            child: FloatingActionButton(")
    lines.append(f"              heroTag: 'introButtonSymfony{ex_id}',")
    lines.append("              onPressed: () {")
    lines.append("                _showDialog(")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}InstructionsTitle),")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}InstructionsContent),")
    lines.append("                );")
    lines.append("              },")
    lines.append("              backgroundColor: const Color(0xFFfbce72),")
    lines.append("              child: const Icon(Icons.message, color: Colors.white),")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("          Padding(")
    lines.append("            padding: const EdgeInsets.all(8.0),")
    lines.append("            child: FloatingActionButton(")
    lines.append(f"              heroTag: 'infoButtonSymfony{ex_id}',")
    lines.append("              onPressed: () {")
    lines.append("                _showDialog(")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}InfoTitle),")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}InfoContent),")
    lines.append("                );")
    lines.append("              },")
    lines.append("              backgroundColor: const Color(0xFF90CAF9),")
    lines.append("              child: const Icon(Icons.info_outline, color: Colors.white),")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("          Padding(")
    lines.append("            padding: const EdgeInsets.all(8.0),")
    lines.append("            child: FloatingActionButton(")
    lines.append(f"              heroTag: 'runButtonSymfony{ex_id}',")
    lines.append("              onPressed: () => _submit(allProvider),")
    lines.append("              backgroundColor: Colors.black,")
    lines.append("              child: const Icon(Icons.play_arrow, color: Colors.white),")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("        ],")
    lines.append("      ),")
    lines.append("      body: FadeIn(")
    lines.append("        child: Padding(")
    lines.append("          padding: const EdgeInsets.all(12.0),")
    lines.append("          child: ConstrainedBox(")
    lines.append("            constraints: const BoxConstraints(maxWidth: 1000),")
    lines.append("            child: Column(")
    lines.append("              crossAxisAlignment: CrossAxisAlignment.start,")
    lines.append("              children: [")
    lines.append("                Text(")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}ExampleTitle),")
    lines.append("                  style: const TextStyle(")
    lines.append("                    fontFamily: 'InconsolataRegular',")
    lines.append("                    fontSize: 16,")
    lines.append("                    color: Colors.grey,")
    lines.append("                  ),")
    lines.append("                ),")
    lines.append("                const SizedBox(height: 10),")
    lines.append("                CodePreview(")
    lines.append("                  lines: exampleLines,")
    lines.append("                  withLineNumbers: true,")
    lines.append("                  language: CodeLanguage.php,")
    lines.append("                ),")
    lines.append("                const SizedBox(height: 10),")
    lines.append("                Text(")
    lines.append(f"                  _t(loc.{LANG_PREFIX}{ex_id}ExampleOutput),")
    lines.append("                  style: const TextStyle(")
    lines.append("                    fontFamily: 'InconsolataRegular',")
    lines.append("                    fontSize: 16,")
    lines.append("                    color: Colors.grey,")
    lines.append("                  ),")
    lines.append("                ),")
    lines.append("                const SizedBox(height: 10),")
    lines.append("                TextField(")
    lines.append("                  controller: _controller,")
    lines.append("                  onChanged: _validateInput,")
    lines.append("                  maxLines: 6,")
    lines.append("                  style: TextStyle(")
    lines.append("                    color: _inputTextColor,")
    lines.append("                    fontFamily: 'InconsolataRegular',")
    lines.append("                  ),")
    lines.append("                  decoration: InputDecoration(")
    lines.append(f"                    hintText: _t(loc.{LANG_PREFIX}{ex_id}EnterCodeHint),")
    lines.append("                    hintStyle: const TextStyle(")
    lines.append("                      fontFamily: 'InconsolataRegular',")
    lines.append("                      color: Colors.grey,")
    lines.append("                    ),")
    lines.append("                    border: const OutlineInputBorder(),")
    lines.append("                  ),")
    lines.append("                ),")
    lines.append("              ],")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("        ),")
    lines.append("      ),")
    lines.append("    );")
    lines.append("  }")
    lines.append("}")

    return "\n".join(lines) + "\n"


def build_exmain(cat_dir: str, ids: list[int]) -> str:
    class_name = f"{camel(cat_dir)}ExMain"

    lines: list[str] = []
    lines.append("import 'package:flutter/material.dart';")
    for ex_id in ids:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/symfony/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
        )
    lines.append("import 'package:learnswift/Widgets/catInfoIcon.dart';")
    lines.append("")
    lines.append(f"class {class_name} extends StatefulWidget {{")
    lines.append("  final int id;")
    lines.append("  final String title;")
    lines.append("  final String description;")
    lines.append("  final bool completed;")
    lines.append("  Color color1;")
    lines.append("  Color color2;")
    lines.append("")
    lines.append(f"  {class_name}({{")
    lines.append("    super.key,")
    lines.append("    required this.id,")
    lines.append("    required this.title,")
    lines.append("    required this.description,")
    lines.append("    required this.completed,")
    lines.append("    required this.color1,")
    lines.append("    required this.color2,")
    lines.append("  });")
    lines.append("")
    lines.append("  @override")
    lines.append(f"  State<{class_name}> createState() => _{class_name}State();")
    lines.append("}")
    lines.append("")
    lines.append(f"class _{class_name}State extends State<{class_name}> {{")
    lines.append("  @override")
    lines.append("  void initState() {")
    lines.append("    super.initState();")
    lines.append("  }")
    lines.append("")
    lines.append("  @override")
    lines.append("  Widget build(BuildContext context) {")
    lines.append("    return Scaffold(")
    lines.append("      backgroundColor: const Color.fromARGB(255, 255, 255, 255),")
    lines.append("      appBar: AppBar(")
    lines.append("        flexibleSpace: AnimatedContainer(")
    lines.append("          duration: const Duration(seconds: 2),")
    lines.append("          decoration: BoxDecoration(")
    lines.append("            gradient: LinearGradient(")
    lines.append("              colors: [widget.color1, widget.color2],")
    lines.append("              begin: Alignment.topLeft,")
    lines.append("              end: Alignment.bottomRight,")
    lines.append("            ),")
    lines.append("          ),")
    lines.append("        ),")
    lines.append("        toolbarHeight: 100,")
    lines.append("        title: Row(")
    lines.append("          mainAxisAlignment: MainAxisAlignment.center,")
    lines.append("          crossAxisAlignment: CrossAxisAlignment.center,")
    lines.append("          children: [")
    lines.append("            Expanded(")
    lines.append("              child: Center(")
    lines.append("                child: Text(")
    lines.append("                  widget.title,")
    lines.append("                  style: const TextStyle(")
    lines.append("                    fontFamily: 'InconsolataBold',")
    lines.append("                    fontWeight: FontWeight.bold,")
    lines.append("                    fontSize: 25,")
    lines.append("                    color: Colors.black,")
    lines.append("                  ),")
    lines.append("                ),")
    lines.append("              ),")
    lines.append("            ),")
    lines.append("            Align(")
    lines.append("              alignment: Alignment.centerRight,")
    lines.append("              child: CatInfoIcon(description: widget.description),")
    lines.append("            ),")
    lines.append("          ],")
    lines.append("        ),")
    lines.append("      ),")
    lines.append("      body: Stack(")
    lines.append("        children: [")
    lines.append("")
    for ex_id in ids:
        ex_class = f"{camel(cat_dir)}Ex{ex_id}"
        lines.append(f"          if (widget.id == {ex_id})")
        lines.append(f"            {ex_class}(")
        lines.append(f"              id: {ex_id},")
        lines.append("              title: widget.title,")
        lines.append("              completed: widget.completed,")
        lines.append("            ),")
        lines.append("")
    lines.append("        ],")
    lines.append("      ),")
    lines.append("    );")
    lines.append("  }")
    lines.append("}")
    return "\n".join(lines) + "\n"


def build_courses_main_model_list(lang: str) -> str:
    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/symfony/{cat_dir}/{cat_dir}ExMain.dart';"
        )

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import '../../courses/Symfony/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';"
        )

    lines.append("")
    lines.append(f"List<CoursesMainModel> coursesSymfonyMainModelList{lang.upper()} = [")

    for i, (cat_dir, name_en, name_es, name_zh) in enumerate(CATEGORIES):
        general = {"en": name_en, "es": name_es, "zh": name_zh}[lang]
        model_var = f"{cat_dir}Model{lang.upper()}"
        exmain_class = f"{camel(cat_dir)}ExMain"

        lines.append("CoursesMainModel(")
        lines.append(f"  id: {i},")
        lines.append(f"  generalName: '{general}',")
        lines.append(f"  catExercise: {model_var},")
        lines.append(f'  description: "{LANG_PREFIX}Cat{i}InfoContent", ')
        lines.append("  numCompletedCourses: 0,")
        lines.append("  totalCourses: 15,")
        lines.append("  alreadyBuy: true,")
        lines.append("  completed: false,")
        lines.append("  builder: (context, id, title, description, completed, color1, color2) =>")
        lines.append(f"      {exmain_class}(")
        lines.append("    id: id,")
        lines.append("    title: title,")
        lines.append("    description: description,")
        lines.append("    completed: completed,")
        lines.append("    color1: color1,")
        lines.append("    color2: color2,")
        lines.append("  ),")
        lines.append("),")

    lines.append("];\n")
    return "\n".join(lines)


def write(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")


def emoji_for(cat_dir: str) -> str:
    return {
        "symfonyBasics": "🧰",
        "symfonyRouting": "🗺️",
        "symfonyControllers": "🧠",
        "symfonyTwig": "🧵",
        "symfonyForms": "📝",
        "symfonyDoctrine": "🗄️",
        "symfonyDoctrineQueries": "🔎",
        "symfonyValidation": "✅",
        "symfonyServices": "🧩",
        "symfonyConfig": "⚙️",
        "symfonySecurity": "🛡️",
        "symfonyEvents": "🔔",
        "symfonyMessenger": "📬",
        "symfonyConsole": "🖥️",
        "symfonyTesting": "🧪",
    }.get(cat_dir, "📦")


def scenario_for(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "route" in k or "/api" in k or "router" in k:
        return {"en": "a clean URL that doesn’t leak implementation details", "es": "una URL limpia que no filtren tripas", "zh": "一条干净的 URL，不暴露实现细节"}[lang]
    if "json" in k or "jsonresponse" in k:
        return {"en": "a mobile app consuming your API", "es": "una app movil consumiendo tu API", "zh": "移动端在吃你的 API"}[lang]
    if "twig" in k or "{%" in k or "{{" in k:
        return {"en": "a product page that needs to be readable", "es": "una pagina de producto que se lea bien", "zh": "需要好读的商品页"}[lang]
    if "form" in k or "formtype" in k:
        return {"en": "a checkout form where mistakes are expensive", "es": "un checkout donde equivocarte cuesta dinero", "zh": "出错会很贵的结账表单"}[lang]
    if "doctrine" in k or "entity" in k or "repository" in k or "querybuilder" in k:
        return {"en": "saving real data without spaghetti SQL", "es": "guardar datos reales sin SQL espagueti", "zh": "不用一坨 SQL 也能存真实数据"}[lang]
    if "security" in k or "role" in k or "isgranted" in k:
        return {"en": "an admin area that must be locked down", "es": "un panel admin que tiene que ir blindado", "zh": "必须锁死的管理区"}[lang]
    if "messenger" in k or "consume" in k or "handler" in k:
        return {"en": "background jobs so the UI stays fast", "es": "jobs en background para que la UI vuele", "zh": "后台任务，让界面更快"}[lang]
    if "test" in k or "webtestcase" in k or "assert" in k:
        return {"en": "refactoring without breaking routes", "es": "refactorizar sin romper rutas", "zh": "重构但不把路由弄挂"}[lang]

    pools = {
        "symfonyBasics": {
            "en": ["starting a new web app", "bootstrapping a client demo", "setting up a clean repo"],
            "es": ["arrancar una web nueva", "montar una demo para cliente", "dejar un repo limpio"],
            "zh": ["启动新 Web", "做客户演示", "搭一个干净的仓库"],
        },
        "symfonyConfig": {
            "en": ["moving from dev to prod safely", "keeping settings predictable", "avoiding config surprises"],
            "es": ["pasar de dev a prod sin drama", "mantener settings previsibles", "evitar sorpresas de config"],
            "zh": ["安全切到生产", "保持配置可预期", "避免配置惊喜"],
        },
        "symfonyServices": {
            "en": ["keeping code testable", "reducing coupling", "making services reusable"],
            "es": ["mantener el codigo testeable", "reducir acoplamiento", "reutilizar servicios"],
            "zh": ["保持可测试", "降低耦合", "复用服务"],
        },
    }

    pool = pools.get(cat_dir, {}).get(lang)
    if pool:
        return hpick(pool, f"{lang}:{cat_dir}:{ex_id}:scene")
    return {"en": "a real app", "es": "una app real", "zh": "真实项目"}[lang]


def instructions(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    must_preview = ", ".join(must[:3])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)

    endings = {
        "en": [
            "Keep it tiny, but make the idea obvious ✅",
            "If it reads well, it counts. Hit Run 😄",
            "Minimum snippet, maximum clarity 🎯",
            "Names can change; the structure must stay 💪",
        ],
        "es": [
            "Corto, pero clarito ✅",
            "Si se entiende, cuenta. Dale a Run 😄",
            "Minimo snippet, maxima claridad 🎯",
            "Puedes cambiar nombres, pero no la idea 💪",
        ],
        "zh": [
            "越短越好，但要一眼看懂 ✅",
            "写清楚就算过关，点 Run 😄",
            "最小片段，最大清晰 🎯",
            "名字可改，结构别丢 💪",
        ],
    }[lang]

    templates = {
        "en": [
            "{emo} Mission: {topic}.\n\nScene: {scene}.\nChecklist: {must}.\n\n{end}",
            "🎬 Scene: {scene}.\n\nShow {topic} with the minimum snippet.\nMust-have: {must}.\n\n{end}",
            "🧩 Mini quest:\n- Topic: {topic}\n- Needs: {must}\n\nContext: {scene}.\n\n{end}",
        ],
        "es": [
            "{emo} Mision: {topic}.\n\nEscena: {scene}.\nChecklist: {must}.\n\n{end}",
            "🎬 Escena real: {scene}.\n\nReto: {topic}.\nImprescindible: {must}.\n\n{end}",
            "🧩 Mini quest Symfony:\n- Tema: {topic}\n- Necesitas: {must}\n\nContexto: {scene}.\n\n{end}",
            "👣 Pasos rapidos:\n1) Mete {must}.\n2) Recorta lo que sobre.\n\nTema: {topic}.\n\n{end}",
        ],
        "zh": [
            "{emo} 任务：{topic}。\n\n场景：{scene}。\n清单：{must}。\n\n{end}",
            "🎬 场景：{scene}。\n\n用最小片段表达 {topic}。\n必须出现：{must}。\n\n{end}",
            "🧩 小挑战：{topic}\n清单：{must}\n\n{end}",
        ],
    }[lang]

    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:instr")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:end")
    return tmpl.format(topic=topic, scene=scene, must=must_preview, end=end, emo=emo)


def info_content(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    must_preview = ", ".join(must[:2])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)

    openers = {
        "en": [
            f"{emo} Why this matters:",
            f"{emo} Behind the scenes:",
            f"{emo} The useful part:",
            f"{emo} Real-world note:",
        ],
        "es": [
            f"{emo} Por que importa:",
            f"{emo} Detras de escena:",
            f"{emo} La parte util:",
            f"{emo} Nota real:",
        ],
        "zh": [
            f"{emo} 为什么重要：",
            f"{emo} 背后发生了什么：",
            f"{emo} 实用点：",
            f"{emo} 实战提示：",
        ],
    }[lang]

    why_lines = {
        "symfonyRouting": {
            "en": "Routing is your app’s front door: it decides what code runs for a URL.",
            "es": "Routing es la puerta de entrada: decide que codigo responde a una URL.",
            "zh": "路由是应用的大门：它决定 URL 对应哪段代码。",
        },
        "symfonyControllers": {
            "en": "Controllers translate HTTP into your domain: Request in, Response out.",
            "es": "Un controlador traduce HTTP: entra Request, sale Response.",
            "zh": "控制器把 HTTP 翻译成业务：Request 进，Response 出。",
        },
        "symfonyTwig": {
            "en": "Twig keeps presentation readable and prevents logic from leaking everywhere.",
            "es": "Twig mantiene la presentacion legible y evita logica desperdigada.",
            "zh": "Twig 让展示层更清晰，也避免逻辑到处乱跑。",
        },
        "symfonyForms": {
            "en": "Forms save you from hand-rolling validation + CSRF + data mapping.",
            "es": "Forms te ahorran validar a mano, CSRF y mapear datos uno a uno.",
            "zh": "表单能帮你处理校验、CSRF 和数据映射，少写很多胶水代码。",
        },
        "symfonyDoctrine": {
            "en": "Doctrine maps objects to tables so you can move fast without raw SQL everywhere.",
            "es": "Doctrine mapea objetos a tablas para que avances sin SQL por todos lados.",
            "zh": "Doctrine 把对象映射到表，减少到处写 SQL 的痛苦。",
        },
        "symfonyDoctrineQueries": {
            "en": "QueryBuilder is your safer way to build queries without string soup.",
            "es": "QueryBuilder es tu forma mas segura de armar queries sin sopa de strings.",
            "zh": "QueryBuilder 更安全，避免把查询写成字符串泥浆。",
        },
        "symfonyValidation": {
            "en": "Validation turns “maybe works” into “data you can trust”.",
            "es": "Validacion convierte “quizas funciona” en “dato confiable”.",
            "zh": "校验让数据更可信，少掉很多后期 bug。",
        },
        "symfonyServices": {
            "en": "DI keeps things swappable: easier tests, less coupling, cleaner code.",
            "es": "La DI hace que todo sea intercambiable: mejor testing y menos acoplamiento.",
            "zh": "依赖注入让替换实现更简单：可测试、更解耦、更干净。",
        },
        "symfonyConfig": {
            "en": "Config is where “works on my machine” goes to die. Keep it explicit.",
            "es": "La config es donde muere el “a mi me funciona”. Mejor explicito.",
            "zh": "配置最容易翻车。写清楚，就稳。",
        },
        "symfonySecurity": {
            "en": "Security is not a feature you add later. Lock it early.",
            "es": "La seguridad no se mete al final. Se diseña desde el principio.",
            "zh": "安全不是最后再加的功能，越早越好。",
        },
        "symfonyEvents": {
            "en": "Events help you react to actions without turning everything into a god class.",
            "es": "Los eventos te dejan reaccionar sin convertir todo en una clase monstruo.",
            "zh": "事件让你解耦逻辑，不用写成一个巨型类。",
        },
        "symfonyMessenger": {
            "en": "Messenger moves slow work off the request so users don’t wait.",
            "es": "Messenger saca trabajo lento fuera del request para que el usuario no espere.",
            "zh": "Messenger 把慢任务丢到后台，用户体验更好。",
        },
        "symfonyConsole": {
            "en": "Console commands are your automation toolbox for imports, cleanups, cron jobs.",
            "es": "Los comandos son tu caja de herramientas para imports, limpiezas y jobs.",
            "zh": "命令行就是自动化工具箱：导入、清理、定时任务。",
        },
        "symfonyTesting": {
            "en": "Tests let you refactor with confidence. That’s the whole point.",
            "es": "Tests te dejan refactorizar con confianza. Ese es el juego.",
            "zh": "测试让你敢改代码，不怕把东西弄坏。",
        },
        "symfonyBasics": {
            "en": "Knowing the tooling saves hours: the console is your Swiss army knife.",
            "es": "Dominar la herramienta te ahorra horas: la consola es tu navaja suiza.",
            "zh": "熟悉工具能省很多时间：console 就像瑞士军刀。",
        },
    }.get(cat_dir)

    why = why_lines.get(lang) if isinstance(why_lines, dict) else ""

    closers = {
        "en": [
            f"Use it when you’re dealing with {scene}.",
            f"In practice you’ll spot it in code reviews: {must_preview}.",
            f"Once you have this, the next steps feel natural.",
        ],
        "es": [
            f"Lo usas cuando estas en {scene}.",
            f"En la vida real lo veras en reviews: {must_preview}.",
            f"Con esto en mano, lo siguiente se siente natural.",
        ],
        "zh": [
            f"适合用在：{scene}。",
            f"代码评审里经常能看到：{must_preview}。",
            f"掌握这个后，后面的内容会顺很多。",
        ],
    }[lang]

    opener = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:opener")
    close = hpick(closers, f"{lang}:{cat_dir}:{ex_id}:close")

    # Keep it short but useful. Avoid a rigid repeated template.
    if lang == "es":
        return f"{opener}\n{why}\n\nEn este ejercicio te fijas en: {topic}.\nPista mental: busca {must_preview}.\n\n{close}"
    if lang == "en":
        return f"{opener}\n{why}\n\nIn this exercise you focus on: {topic}.\nMental cue: look for {must_preview}.\n\n{close}"
    return f"{opener}\n{why}\n\n这题你练：{topic}。\n记忆点：看到 {must_preview} 就对了。\n\n{close}"


def gen_texts(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> tuple[str, str, str, str, str, str]:
    # Exercise-specific title (topic + emoji) feels less templated.
    title_variants = {
        "en": [f"{topic} {emoji_for(cat_dir)}", f"{emoji_for(cat_dir)} {topic}", f"Mini quest: {topic} {emoji_for(cat_dir)}"],
        "es": [f"{topic} {emoji_for(cat_dir)}", f"{emoji_for(cat_dir)} {topic}", f"Mini reto: {topic} {emoji_for(cat_dir)}"],
        "zh": [f"{topic} {emoji_for(cat_dir)}", f"{emoji_for(cat_dir)} {topic}", f"小挑战：{topic} {emoji_for(cat_dir)}"],
    }[lang]
    instr_title = hpick(title_variants, f"{lang}:{cat_dir}:{ex_id}:it")

    instr = instructions(lang, cat_dir, ex_id, topic, must)
    info = info_content(lang, cat_dir, ex_id, topic, must)

    # Hints: keep them lightweight and concrete.
    must_preview = ", ".join(must[:2])
    if lang == "es":
        hint1 = f"Empieza por meter estas dos piezas: {must_preview}."
        hint2 = "No busques perfeccion: que se entienda la idea y ya ✅"
    elif lang == "en":
        hint1 = f"Start by including these two pieces: {must_preview}."
        hint2 = "Don’t overthink it: clarity beats perfection ✅"
    else:
        hint1 = f"先把这两块写出来：{must_preview}。"
        hint2 = "别纠结细节：清晰就够了 ✅"

    return instr_title, instr, info_title(lang), info, hint1, hint2


def category_info_title(lang: str, cat_name: str) -> str:
    if lang == "en":
        return f"{cat_name} — Why it matters"
    if lang == "es":
        return f"{cat_name} — Por que importa"
    return f"{cat_name} — 为什么重要"


def category_info_content(lang: str, cat_dir: str, cat_name: str) -> str:
    emo = emoji_for(cat_dir)
    if lang == "es":
        return (
            f"{emo} En esta categoria practicas: {cat_name}.\n\n"
            "Que vas a conseguir:\n"
            "- escribir snippets pequenos pero reales\n"
            "- entender el por que (no solo el como)\n"
            "- ganar fluidez para proyectos Symfony\n\n"
            "Consejo: si algo te suena raro, mira el ejemplo y copia la estructura, no la letra 😉"
        )
    if lang == "en":
        return (
            f"{emo} In this category you practice: {cat_name}.\n\n"
            "What you get:\n"
            "- small but real snippets\n"
            "- the why (not just the how)\n"
            "- more fluency for Symfony projects\n\n"
            "Tip: if something feels weird, copy the structure, not the exact text 😉"
        )
    return (
        f"{emo} 这一类你会练：{cat_name}。\n\n"
        "你会收获：\n"
        "- 小而真实的代码片段\n"
        "- 明白为什么要这么做\n"
        "- 更顺手地写 Symfony\n\n"
        "建议：觉得卡就先抄结构，再慢慢改内容 😉"
    )


def main() -> None:
    ensure_sizes()

    # Prevent accidental double-generation (ARB duplicates are painful).
    for lang in ["en", "es", "zh"]:
        arb_path = Path(f"lib/l10n/app_{lang}.arb")
        if f"\"{LANG_PREFIX}{START_ID}InstructionsTitle\"" in arb_path.read_text(encoding="utf-8"):
            raise SystemExit(f"Looks like Symfony already generated in {arb_path}. Aborting.")

    arb_entries = {"en": [], "es": [], "zh": []}

    # Global correct strings
    correct = {
        "en": ("Correct ✅", "Nice! Your snippet has the key Symfony pieces. Keep going."),
        "es": ("Correcto ✅", "Bien! Tu snippet tiene las piezas clave de Symfony. Sigue subiendo nivel."),
        "zh": ("正确 ✅", "做得好！你的代码片段包含了关键的 Symfony 结构。继续加油。"),
    }

    for lang in ["en", "es", "zh"]:
        arb_entries[lang].append(
            arb_line(f"{LANG_PREFIX}CorrectTitle", encode_braces(escape_icu(correct[lang][0])))
        )
        arb_entries[lang].append(
            arb_line(
                f"{LANG_PREFIX}CorrectExplanation",
                encode_braces(escape_icu(correct[lang][1])),
            )
        )

    # Category info keys (used by CatInfoIcon via CategoryInfoL10n).
    for idx, (cat_dir, name_en, name_es, name_zh) in enumerate(CATEGORIES):
        for lang in ["en", "es", "zh"]:
            name = {"en": name_en, "es": name_es, "zh": name_zh}[lang]
            arb_entries[lang].append(
                arb_line(
                    f"{LANG_PREFIX}Cat{idx}InfoTitle",
                    encode_braces(escape_icu(category_info_title(lang, name))),
                )
            )
            arb_entries[lang].append(
                arb_line(
                    f"{LANG_PREFIX}Cat{idx}InfoContent",
                    encode_braces(escape_icu(category_info_content(lang, cat_dir, name))),
                )
            )

    # Generate files per category
    for cat_idx, (cat_dir, _en, _es, _zh) in enumerate(CATEGORIES):
        specs = EXERCISES[cat_dir]
        base_id = START_ID + cat_idx * 15
        ids = list(range(base_id, base_id + 15))

        # Model lists (EN/ES/ZH)
        for lang in ["en", "es", "zh"]:
            write(
                Path(
                    f"lib/data/courses/Symfony/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"
                ),
                build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/symfony/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB entries
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            write(
                Path(f"lib/Screens/Courses/symfony/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"),
                build_exercise_screen(cat_dir, ex_id, must),
            )

            sol = "\n".join(code_lines)

            for lang in ["en", "es", "zh"]:
                topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]
                instr_title, instr, info_t, info_c, hint1, hint2 = gen_texts(
                    lang, cat_dir, ex_id, topic, must
                )
                out = output_label(lang, out_text)

                def prep(s: str) -> str:
                    return encode_braces(escape_icu(s))

                items: dict[str, str] = {
                    f"{LANG_PREFIX}{ex_id}InstructionsTitle": instr_title,
                    f"{LANG_PREFIX}{ex_id}InstructionsContent": instr,
                    f"{LANG_PREFIX}{ex_id}InfoTitle": info_t,
                    f"{LANG_PREFIX}{ex_id}InfoContent": info_c,
                    f"{LANG_PREFIX}{ex_id}HintTitle1": hint_title(lang, 1),
                    f"{LANG_PREFIX}{ex_id}HintContent1": hint1,
                    f"{LANG_PREFIX}{ex_id}HintTitle2": hint_title(lang, 2),
                    f"{LANG_PREFIX}{ex_id}HintContent2": hint2,
                    f"{LANG_PREFIX}{ex_id}SolutionTitle": solution_title(lang),
                    f"{LANG_PREFIX}{ex_id}SolutionContent": sol,
                    f"{LANG_PREFIX}{ex_id}ExampleTitle": example_title(lang),
                    f"{LANG_PREFIX}{ex_id}ExampleOutput": out,
                    f"{LANG_PREFIX}{ex_id}EnterCodeHint": enter_code_hint(lang),
                }

                for li in range(6):
                    line = code_lines[li] if li < len(code_lines) else ""
                    items[f"{LANG_PREFIX}{ex_id}ExampleCode{li+1}"] = line

                for k, v in items.items():
                    arb_entries[lang].append(arb_line(k, prep(v)))

    # CoursesMainModelList (EN/ES/ZH)
    for lang in ["en", "es", "zh"]:
        write(
            Path(f"lib/data/mainModel/Symfony/CoursesMainModelList{lang.upper()}.dart"),
            build_courses_main_model_list(lang),
        )

    # Append ARB entries to app_*.arb
    for lang in ["en", "es", "zh"]:
        arb_path = Path(f"lib/l10n/app_{lang}.arb")
        text = arb_path.read_text(encoding="utf-8")
        insert = ",\n" + ",\n".join(arb_entries[lang]) + "\n"
        idx = text.rfind("}")
        if idx == -1:
            raise SystemExit(f"No closing brace in {arb_path}")
        new_text = text[:idx].rstrip() + insert + text[idx:]
        arb_path.write_text(new_text, encoding="utf-8")


if __name__ == "__main__":
    main()
