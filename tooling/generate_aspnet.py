#!/usr/bin/env python3
"""Generate ASP.NET Core course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

Repo conventions:
- ARB must be ICU-safe: avoid literal '{' and '}'.
- Many exercise screens decode braces using `_t()`:
    '@' -> '{'
    '&' -> '}'
  So: avoid literal '@' or '&' in localized strings unless it is brace-encoding.
- IMPORTANT: because '&' decodes to '}', do NOT put '&&' in any localized code/text.
  (If you need logical AND, use a different example.)

This generator sticks to ASP.NET Core Web API / Minimal APIs (no Razor) to avoid '@'.
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "aspnet"
START_ID = 4900  # Next after Laravel (4675-4899).

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("aspnetBasics", "ASP.NET Core Basics", "Fundamentos ASP.NET Core", "ASP.NET Core 基础"),
    ("aspnetMinimalApis", "Minimal APIs", "Minimal APIs", "Minimal API"),
    ("aspnetRouting", "Routing & Endpoints", "Rutas y Endpoints", "路由与端点"),
    ("aspnetControllers", "Controllers", "Controladores", "控制器"),
    ("aspnetBinding", "Model Binding & DTOs", "Model Binding y DTOs", "模型绑定与 DTO"),
    ("aspnetDI", "Dependency Injection", "Inyeccion de Dependencias", "依赖注入"),
    ("aspnetMiddleware", "Middleware Pipeline", "Pipeline y Middleware", "中间件管道"),
    ("aspnetConfig", "Configuration & Options", "Configuracion y Options", "配置与 Options"),
    ("aspnetLogging", "Logging & Diagnostics", "Logging y Diagnostico", "日志与诊断"),
    ("aspnetValidation", "Validation & Errors", "Validacion y Errores", "验证与错误"),
    ("aspnetEFCore", "EF Core Basics", "EF Core Basico", "EF Core 基础"),
    ("aspnetEFQueries", "EF Core Queries", "Consultas EF Core", "EF Core 查询"),
    ("aspnetAuth", "Auth & Authorization", "Auth y Autorizacion", "认证与授权"),
    ("aspnetSwagger", "OpenAPI & Swagger", "OpenAPI y Swagger", "OpenAPI 与 Swagger"),
    ("aspnetTestingDeploy", "Testing & Deploy", "Testing y Deploy", "测试与部署"),
]


def camel(s: str) -> str:
    parts = re.split(r"[^A-Za-z0-9]+", s)
    return "".join(p[:1].upper() + p[1:] for p in parts if p)


def escape_icu(s: str) -> str:
    # Flutter gen-l10n: escape single quote by doubling.
    return s.replace("'", "''")


def encode_braces(s: str) -> str:
    # Avoid literal braces in ARB; screens decode @->{ and &->}.
    return s.replace("{", "@").replace("}", "&")


def json_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")


def arb_line(key: str, value: str) -> str:
    return f'  "{key}": "{json_escape(value)}"'


def hpick(items: list[str], seed: str) -> str:
    h = int(hashlib.md5(seed.encode("utf-8")).hexdigest(), 16)
    return items[h % len(items)]


def normalize_must_token(tok: str) -> str:
    tok = tok.strip()
    if len(tok) >= 2 and tok[0] == tok[-1] and tok[0] in ('"', "'"):
        return tok[1:-1]
    return tok


def dart_string_literal(text: str) -> str:
    # Prefer raw literals so backslashes survive unchanged.
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


def dart_escape_double_quoted(s: str) -> str:
    # Used for generating Dart source with "..." strings where $ triggers interpolation.
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("$", "\\$")


def write(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")


def ex_label(lang: str, n: int, challenge: bool) -> str:
    if lang == "en":
        return "Challenge" if challenge else "Exercise"
    if lang == "es":
        return "Desafio" if challenge else "Ejercicio"
    if lang == "zh":
        return "挑战" if challenge else "练习"
    raise ValueError(lang)


def hint_title(lang: str, idx: int) -> str:
    return {"en": f"Hint {idx} 💡", "es": f"Pista {idx} 💡", "zh": f"提示 {idx} 💡"}[lang]


def solution_title(lang: str) -> str:
    return {"en": "Solution ✅", "es": "Solucion ✅", "zh": "答案 ✅"}[lang]


def example_title(lang: str) -> str:
    return {"en": "Example 📌", "es": "Ejemplo 📌", "zh": "示例 📌"}[lang]


def info_title(lang: str) -> str:
    return {"en": "More info ℹ️", "es": "Mas info ℹ️", "zh": "更多信息 ℹ️"}[lang]


def enter_code_hint(lang: str) -> str:
    return {
        "en": "Write your ASP.NET code here...",
        "es": "Escribe tu codigo ASP.NET aqui...",
        "zh": "在这里写下你的 ASP.NET 代码...",
    }[lang]


def output_label(lang: str, text: str) -> str:
    if lang == "en":
        return f"Output: {text}"
    if lang == "es":
        return f"Salida: {text}"
    return f"输出: {text}"


def emoji_for(cat_dir: str) -> str:
    return {
        "aspnetBasics": "🧱",
        "aspnetMinimalApis": "🧩",
        "aspnetRouting": "🗺️",
        "aspnetControllers": "🎛️",
        "aspnetBinding": "📦",
        "aspnetDI": "🧲",
        "aspnetMiddleware": "🛡️",
        "aspnetConfig": "⚙️",
        "aspnetLogging": "🧾",
        "aspnetValidation": "🚧",
        "aspnetEFCore": "🗄️",
        "aspnetEFQueries": "🔎",
        "aspnetAuth": "🔐",
        "aspnetSwagger": "📚",
        "aspnetTestingDeploy": "🚀",
    }.get(cat_dir, "📦")


def scenario_for(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "swagger" in k or "openapi" in k:
        return {
            "en": "a mobile team needs API docs yesterday",
            "es": "el equipo mobile te pide docs de la API para ayer",
            "zh": "移动端同事催你把 API 文档搞定",
        }[lang]

    if "health" in k:
        return {
            "en": "production monitoring wants a health endpoint",
            "es": "monitorizacion en prod quiere un endpoint de salud",
            "zh": "线上监控需要健康检查接口",
        }[lang]

    if "dbcontext" in k or "ef" in k or "migrations" in k or "tododb" in k:
        return {
            "en": "you are wiring real data, not mock JSON",
            "es": "ya estas conectando datos reales, no JSON de mentira",
            "zh": "你开始接真实数据了，不是假的 JSON",
        }[lang]

    if "authorize" in k or "authentication" in k or "jwt" in k:
        return {
            "en": "you must protect endpoints before launch",
            "es": "toca proteger endpoints antes del lanzamiento",
            "zh": "上线前必须把接口保护起来",
        }[lang]

    if "middleware" in k or "use" in k:
        return {
            "en": "you need one place to apply cross-cutting rules",
            "es": "necesitas un sitio unico para reglas transversales",
            "zh": "你想把通用规则放在一个地方",
        }[lang]

    if "ilogger" in k or "log" in k:
        return {
            "en": "a bug appears and logs are your flashlight",
            "es": "sale un bug y los logs son tu linterna",
            "zh": "出了 bug，日志就是手电筒",
        }[lang]

    pools = {
        "aspnetBasics": {
            "en": ["bootstrapping a tiny API", "starting a new repo", "making the app run locally"],
            "es": ["arrancar una API pequeñita", "empezar un repo nuevo", "hacer que corra en local"],
            "zh": ["启动一个小 API", "新建仓库", "让项目本地跑起来"],
        },
        "aspnetTestingDeploy": {
            "en": ["shipping to a server", "running CI tests", "containerizing your API"],
            "es": ["desplegar a servidor", "correr tests en CI", "meter tu API en un contenedor"],
            "zh": ["部署到服务器", "CI 跑测试", "容器化 API"],
        },
    }

    pool = pools.get(cat_dir, {}).get(lang)
    if pool:
        return hpick(pool, f"{lang}:{cat_dir}:{ex_id}:scene")

    return {"en": "a real backend", "es": "un backend real", "zh": "真实后端"}[lang]


def concept_line(lang: str, cat_dir: str, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "mapget" in k or "mappost" in k or "mapput" in k or "mapdelete" in k:
        return {
            "en": "Endpoints are the contract: URL in, response out.",
            "es": "Un endpoint es el contrato: entra una URL, sale una respuesta.",
            "zh": "端点就是契约：URL 进来，响应出去。",
        }[lang]

    if "controller" in k or "apicontroller" in k:
        return {
            "en": "Controllers keep HTTP concerns organized and testable.",
            "es": "Los controladores ordenan HTTP y hacen tu codigo testeable.",
            "zh": "控制器让 HTTP 逻辑更有条理也更好测。",
        }[lang]

    if "addscoped" in k:
        return {
            "en": "Scoped services live per request: perfect for DB work.",
            "es": "Scoped vive por request: ideal para cosas de base de datos.",
            "zh": "Scoped 每个请求一个实例：很适合数据库操作。",
        }[lang]

    if "addsingleton" in k:
        return {
            "en": "Singleton is one instance for the whole app: great for caches.",
            "es": "Singleton es UNA instancia para toda la app: perfecto para caches.",
            "zh": "Singleton 全局单例：很适合缓存。",
        }[lang]

    if "middleware" in k or "use" in k:
        return {
            "en": "Middleware is the conveyor belt: every request passes through it.",
            "es": "Middleware es la cinta transportadora: todo request pasa por ahi.",
            "zh": "中间件像传送带：每个请求都会经过。",
        }[lang]

    if "configuration" in k or "appsettings" in k or "getvalue" in k:
        return {
            "en": "Config keeps secrets and knobs out of your code.",
            "es": "Config saca secretos y ajustes fuera del codigo.",
            "zh": "配置把秘密和开关从代码里拿出去。",
        }[lang]

    if "ilogger" in k or "loginformation" in k:
        return {
            "en": "Logs are your timeline when things go wrong.",
            "es": "Los logs son tu linea del tiempo cuando algo falla.",
            "zh": "日志是问题发生时的时间线。",
        }[lang]

    if "required" in k or "modelstate" in k or "validation" in k:
        return {
            "en": "Validation turns chaos input into data you can trust.",
            "es": "Validacion convierte input caotico en datos confiables.",
            "zh": "验证让输入更可靠。",
        }[lang]

    if "dbcontext" in k or "ef" in k or "tosqlite" in k:
        return {
            "en": "EF Core is your bridge: C# objects <-> database rows.",
            "es": "EF Core es el puente: objetos C# <-> filas de la base de datos.",
            "zh": "EF Core 是桥梁：C# 对象 <-> 数据库行。",
        }[lang]

    if "authorize" in k or "jwt" in k:
        return {
            "en": "Auth is the bouncer: not everyone should enter.",
            "es": "Auth es el portero: no todo el mundo puede entrar.",
            "zh": "认证像门卫：不是谁都能进。",
        }[lang]

    if "swagger" in k or "openapi" in k:
        return {
            "en": "Swagger makes your API discoverable and easy to test.",
            "es": "Swagger hace tu API facil de descubrir y probar.",
            "zh": "Swagger 让 API 更容易发现和测试。",
        }[lang]

    if "webapplicationfactory" in k or "dotnet test" in k:
        return {
            "en": "Tests keep you fast: change code without fear.",
            "es": "Los tests te dan velocidad: cambias codigo sin miedo.",
            "zh": "测试让你敢改代码，不怕翻车。",
        }[lang]

    return {"en": "Small piece, big impact.", "es": "Pieza pequena, impacto grande.", "zh": "小东西，大影响。"}[lang]


def instructions(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)
    must_preview = ", ".join(must[:3])

    openers = {
        "en": ["Mission", "Mini quest", "Boss request", "Today"],
        "es": ["Mision", "Mini reto", "Te lo piden", "Hoy"],
        "zh": ["任务", "小挑战", "需求来了", "今天"],
    }[lang]

    endings = {
        "en": [
            "Keep it readable. Future-you will thank you ✅",
            "Names can change; the structure is what matters 🎯",
            "Short snippet, clear idea. Hit Run 😄",
            "If it looks like real code, it counts 💪",
        ],
        "es": [
            "Que se lea facil. Tu yo del futuro te lo agradece ✅",
            "Puedes cambiar nombres; la estructura es lo que importa 🎯",
            "Snippet corto, idea clara. Dale a Run 😄",
            "Si parece codigo real, cuenta 💪",
        ],
        "zh": [
            "写清楚就行。未来的你会感谢 ✅",
            "名字可改，结构最重要 🎯",
            "短一点，但要看得懂。点 Run 😄",
            "像真实代码就算过关 💪",
        ],
    }[lang]

    templates = {
        "en": [
            f"{emo} {{op}}: {{topic}}.\n\nScene: {{scene}}.\n\nChecklist:\n- Include: {{must}}\n\n{{end}}",
            f"🎬 Scene: {{scene}}\n\nYour goal: {{topic}}.\nMake sure we can spot: {{must}}.\n\n{{end}}",
            f"🧩 {{op}} (ASP.NET):\n1) Do {{topic}}\n2) Show {{must}}\n\nContext: {{scene}}\n\n{{end}}",
            f"👣 Quick plan:\n- Topic: {{topic}}\n- Signals: {{must}}\n\nWhy now: {{scene}}\n\n{{end}}",
        ],
        "es": [
            f"{emo} {{op}}: {{topic}}.\n\nEscena real: {{scene}}.\n\nChecklist:\n- Que aparezca: {{must}}\n\n{{end}}",
            f"🎬 Escena: {{scene}}\n\nObjetivo: {{topic}}.\nYo busco ver: {{must}}.\n\n{{end}}",
            f"🧩 {{op}} ASP.NET:\n1) Haz {{topic}}\n2) Ensena {{must}}\n\nContexto: {{scene}}\n\n{{end}}",
            f"👣 Plan rapido:\n- Tema: {{topic}}\n- Pistas: {{must}}\n\nEn un proyecto: {{scene}}\n\n{{end}}",
            f"📦 Situacion real: {{scene}}\n\nTu mision: {{topic}}.\nSi reviso tu PR, quiero ver: {{must}}.\n\n{{end}}",
        ],
        "zh": [
            f"{emo} {{op}}：{{topic}}\n\n场景：{{scene}}\n\n清单：{{must}}\n\n{{end}}",
            f"🎬 场景：{{scene}}\n\n目标：{{topic}}\n关键字：{{must}}\n\n{{end}}",
            f"🧩 {{op}}：\n1) 做 {{topic}}\n2) 写出 {{must}}\n\n{{end}}",
            f"👣 快速计划：{{topic}}\n信号：{{must}}\n\n场景：{{scene}}\n\n{{end}}",
        ],
    }[lang]

    op = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:op")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:end")
    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:tmpl")
    return tmpl.format(op=op, topic=topic, scene=scene, must=must_preview, end=end)


def info_content(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)
    must_preview = ", ".join(must[:2])

    openers = {
        "en": [f"{emo} Why it matters:", f"{emo} Practical note:", f"{emo} Real-world tip:", f"{emo} What you are learning:"],
        "es": [f"{emo} Por que importa:", f"{emo} Nota practica:", f"{emo} Tip real:", f"{emo} Lo que aprendes:"],
        "zh": [f"{emo} 为什么重要：", f"{emo} 实战提示：", f"{emo} 你在学什么：", f"{emo} 小笔记："],
    }[lang]

    closers = {
        "en": [
            f"You will use it when you are {scene}.",
            f"In reviews, people scan for: {must_preview}.",
            "If this clicks, the next topic feels easier.",
        ],
        "es": [
            f"Lo usas cuando estas en {scene}.",
            f"En un review se ve rapido: {must_preview}.",
            "Cuando esto encaja, lo siguiente sale mas fluido.",
        ],
        "zh": [
            f"适用场景：{scene}。",
            f"代码评审常见关键字：{must_preview}。",
            "掌握这个后，后面会顺很多。",
        ],
    }[lang]

    why = concept_line(lang, cat_dir, topic, must)
    opener = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:info_op")
    close = hpick(closers, f"{lang}:{cat_dir}:{ex_id}:info_cl")

    templates = {
        "en": [
            "{op}\n{why}\n\nIn this exercise: {topic}.\nKey signals: {must}.\n\n{close}",
            "{op}\n{why}\n\nFocus: {topic}.\nSpot-check: {must}.\n\n{close}",
        ],
        "es": [
            "{op}\n{why}\n\nEn este ejercicio: {topic}.\nPistas clave: {must}.\n\n{close}",
            "{op}\n{why}\n\nHoy te centras en: {topic}.\nSi algo falla, mira: {must}.\n\n{close}",
            "{op}\n{why}\n\nPiensa en {scene}.\nEsto va de: {topic}.\n\nClave: {must}.\n\n{close}",
        ],
        "zh": [
            "{op}\n{why}\n\n这题练：{topic}\n关键字：{must}\n\n{close}",
            "{op}\n{why}\n\n聚焦：{topic}\n检查：{must}\n\n{close}",
        ],
    }[lang]

    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:info_tmpl")
    return tmpl.format(op=opener, why=why, topic=topic, must=must_preview, scene=scene, close=close)


def hint1_content(lang: str, ex_id: int, must: list[str]) -> str:
    a = must[0] if must else ""
    b = must[1] if len(must) > 1 else ""
    templates = {
        "en": [
            f"Start with: {a} (then add {b}).",
            f"If you are stuck, make sure {a} appears clearly.",
            f"Minimum: show {a} and {b}.",
        ],
        "es": [
            f"Empieza por: {a} (y luego mete {b}).",
            f"Si te atascas, que se vea {a} sin duda.",
            f"Minimo: ensena {a} y {b}.",
        ],
        "zh": [
            f"先写：{a}（再加上 {b}）。",
            f"卡住了就先确保有：{a}。",
            f"最少要出现：{a} 和 {b}。",
        ],
    }[lang]
    return hpick(templates, f"{lang}:{ex_id}:h1")


def hint2_content(lang: str, ex_id: int, topic: str) -> str:
    templates = {
        "en": [
            "Do not overthink it: structure > perfect naming ✅",
            f"If your snippet shows {topic}, you are good ✅",
            "Keep it small and correct. That is professional 😄",
        ],
        "es": [
            "No le des mil vueltas: estructura > nombre perfecto ✅",
            f"Si se entiende {topic}, vas bien ✅",
            "Pequeno y correcto. Eso es pro 😄",
        ],
        "zh": [
            "别纠结细节：结构比完美命名更重要 ✅",
            f"能看出你在做 {topic} 就行 ✅",
            "写小一点但写对。专业 😄",
        ],
    }[lang]
    return hpick(templates, f"{lang}:{ex_id}:h2")


def gen_texts(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]):
    instr_titles = {
        "en": [f"{topic} 🧩", f"Mini quest: {topic} 🧩", f"{topic} (ASP.NET) 🧩"],
        "es": [f"{topic} 🧩", f"Mini reto: {topic} 🧩", f"{topic} (ASP.NET) 🧩"],
        "zh": [f"{topic} 🧩", f"小挑战：{topic} 🧩", f"{topic}（ASP.NET）🧩"],
    }[lang]

    instr_title = hpick(instr_titles, f"{lang}:{cat_dir}:{ex_id}:it")
    instr = instructions(lang, cat_dir, ex_id, topic, must)
    info_t = info_title(lang)
    info_c = info_content(lang, cat_dir, ex_id, topic, must)
    h1 = hint1_content(lang, ex_id, must)
    h2 = hint2_content(lang, ex_id, topic)
    return instr_title, instr, info_t, info_c, h1, h2


def category_info_title(lang: str, name: str) -> str:
    if lang == "en":
        return f"{name} — Why it matters"
    if lang == "es":
        return f"{name} — Por que importa"
    return f"{name} — 为什么重要"


def category_info_content(lang: str, cat_dir: str, name: str) -> str:
    mapping = {
        "aspnetBasics": {
            "en": "You build the skeleton of an ASP.NET Core app: builder, services, endpoints, and run.\n\nWhy it matters: most bugs start with a messy setup. A clean Program.cs keeps teams fast.\n\nWhen you use it: every project, every new API, every migration from a template.\n\nTip: keep the pipeline readable 🧱",
            "es": "Aqui montas el esqueleto de una app ASP.NET Core: builder, services, endpoints y run.\n\nPor que importa: muchos bugs empiezan con un setup caotico. Un Program.cs limpio te hace rapido.\n\nCuando se usa: en cada proyecto y cada API nueva.\n\nTip: pipeline legible = menos dolor 🧱",
            "zh": "这一类搭骨架：builder、services、endpoints、run。\n\n为什么重要：很多 bug 都从混乱的启动代码开始。Program.cs 干净，团队就快。\n\n什么时候用：每个项目、每个 API。\n\n提示：管道写清楚 🧱",
        },
        "aspnetMinimalApis": {
            "en": "Minimal APIs let you ship endpoints fast with tiny code.\n\nWhy it matters: perfect for prototypes, internal tools, and small services.\n\nWhen you use it: when you want clarity over ceremony.\n\nTip: keep handlers simple and return Results 🧩",
            "es": "Minimal APIs te dejan sacar endpoints rapido con poquisimo codigo.\n\nPor que importa: ideal para prototipos, herramientas internas y microservicios.\n\nCuando se usa: cuando quieres claridad sin ceremonia.\n\nTip: handlers simples y Results bien puestos 🧩",
            "zh": "Minimal API 用很少代码就能上线端点。\n\n为什么重要：适合原型、内部工具、小服务。\n\n什么时候用：想要清晰而不是仪式感时。\n\n提示：handler 简单点，Results 返回清楚 🧩",
        },
        "aspnetRouting": {
            "en": "Routing decides which code runs for a URL. Templates, constraints, groups, and fallbacks.\n\nWhy it matters: clean URLs + predictable behavior.\n\nWhen you use it: always. Every endpoint is routing.\n\nTip: design routes like a public API 🗺️",
            "es": "Routing decide que codigo responde a una URL: templates, constraints, groups y fallbacks.\n\nPor que importa: URLs limpias y comportamiento predecible.\n\nCuando se usa: siempre. Todo endpoint pasa por routing.\n\nTip: diseña rutas como si fueran publicas 🗺️",
            "zh": "路由决定 URL 进来走哪段代码：模板、约束、分组、fallback。\n\n为什么重要：URL 干净，行为可预测。\n\n什么时候用：一直用。\n\n提示：把路由当成公开 API 来设计 🗺️",
        },
        "aspnetControllers": {
            "en": "Controllers help you organize HTTP actions and responses in a structured way.\n\nWhy it matters: readable code, easy testing, predictable conventions.\n\nWhen you use it: bigger APIs, teams, or MVC style apps.\n\nTip: keep actions focused 🎛️",
            "es": "Los controladores ordenan acciones HTTP y respuestas de forma estructurada.\n\nPor que importa: codigo legible, tests mas faciles, convenciones claras.\n\nCuando se usa: APIs grandes, trabajo en equipo, estilo MVC.\n\nTip: acciones pequeñas y claras 🎛️",
            "zh": "控制器把 HTTP 动作和响应组织起来。\n\n为什么重要：更清晰、更好测、约定更稳定。\n\n什么时候用：大型 API、团队协作、MVC 风格。\n\n提示：action 别写成巨石 🎛️",
        },
        "aspnetBinding": {
            "en": "Model binding connects HTTP inputs (route, query, headers, body) to your parameters/DTOs.\n\nWhy it matters: fewer bugs from manual parsing.\n\nWhen you use it: basically every real endpoint.\n\nTip: DTOs are your contract 📦",
            "es": "Model binding conecta inputs HTTP (ruta, query, headers, body) con tus parametros/DTOs.\n\nPor que importa: menos bugs por parseo manual.\n\nCuando se usa: en casi cualquier endpoint real.\n\nTip: un DTO es tu contrato 📦",
            "zh": "模型绑定把 route/query/header/body 变成你的参数/DTO。\n\n为什么重要：少写解析代码就少出错。\n\n什么时候用：几乎所有端点。\n\n提示：DTO 就是契约 📦",
        },
        "aspnetDI": {
            "en": "Dependency Injection keeps your app modular: services are wired once and reused cleanly.\n\nWhy it matters: less coupling, easier testing, fewer new() scattered around.\n\nWhen you use it: always. ASP.NET Core is built around DI.\n\nTip: pick lifetimes with intent 🧲",
            "es": "DI hace tu app modular: registras servicios una vez y los usas sin caos.\n\nPor que importa: menos acoplamiento, mas test, menos new() por todas partes.\n\nCuando se usa: siempre. ASP.NET vive con DI.\n\nTip: elige lifetimes con cabeza 🧲",
            "zh": "依赖注入让项目模块化：服务集中注册，干净复用。\n\n为什么重要：解耦、好测、少 new()。\n\n什么时候用：一直用。\n\n提示：生命周期要选对 🧲",
        },
        "aspnetMiddleware": {
            "en": "Middleware is the request pipeline: auth, headers, errors, logging... all in one flow.\n\nWhy it matters: cross-cutting rules belong here, not inside every endpoint.\n\nWhen you use it: for security, observability, and consistency.\n\nTip: order matters 🛡️",
            "es": "Middleware es el pipeline: auth, headers, errores, logs... todo en un flujo.\n\nPor que importa: reglas transversales van aqui, no repetidas en cada endpoint.\n\nCuando se usa: seguridad, observabilidad y consistencia.\n\nTip: el orden importa 🛡️",
            "zh": "中间件就是请求管道：认证、header、错误、日志...\n\n为什么重要：通用规则放在这里，不要每个端点都写一遍。\n\n什么时候用：安全、可观测性、一致性。\n\n提示：顺序很关键 🛡️",
        },
        "aspnetConfig": {
            "en": "Configuration and Options keep environments sane: dev, staging, prod.\n\nWhy it matters: no hardcoded secrets or magic numbers.\n\nWhen you use it: always. Apps change per environment.\n\nTip: strongly-typed options scale best ⚙️",
            "es": "Configuracion y Options: dev, staging, prod sin locura.\n\nPor que importa: nada de secretos hardcoded ni numeros magicos.\n\nCuando se usa: siempre. Cada entorno cambia cosas.\n\nTip: options tipadas escalan mejor ⚙️",
            "zh": "配置与 Options 让不同环境可控：dev/staging/prod。\n\n为什么重要：不要把秘密和魔法数字写死。\n\n什么时候用：一直用。\n\n提示：强类型 Options 最稳 ⚙️",
        },
        "aspnetLogging": {
            "en": "Logging and diagnostics help you debug and operate your API in production.\n\nWhy it matters: if you cannot see it, you cannot fix it.\n\nWhen you use it: every day, especially in incidents.\n\nTip: structured logs are gold 🧾",
            "es": "Logging y diagnostico te ayudan a depurar y operar tu API en produccion.\n\nPor que importa: si no lo ves, no lo arreglas.\n\nCuando se usa: todos los dias, sobre todo en incidentes.\n\nTip: logs estructurados valen oro 🧾",
            "zh": "日志与诊断让你在生产排查问题。\n\n为什么重要：看不到就修不了。\n\n什么时候用：天天用，事故时更是救命。\n\n提示：结构化日志很值钱 🧾",
        },
        "aspnetValidation": {
            "en": "Validation and error responses keep your API friendly and safe.\n\nWhy it matters: clients need predictable errors, not stack traces.\n\nWhen you use it: every endpoint that accepts input.\n\nTip: ProblemDetails is your friend 🚧",
            "es": "Validacion y errores hacen tu API amable y segura.\n\nPor que importa: el cliente necesita errores predecibles, no stack traces.\n\nCuando se usa: en todo endpoint con input.\n\nTip: ProblemDetails te salva 🚧",
            "zh": "验证与错误响应让 API 更友好也更安全。\n\n为什么重要：客户端要稳定的错误格式，不要堆栈。\n\n什么时候用：所有接收输入的端点。\n\n提示：ProblemDetails 很好用 🚧",
        },
        "aspnetEFCore": {
            "en": "EF Core basics: DbContext, DbSet, migrations, and CRUD.\n\nWhy it matters: most apps are data apps.\n\nWhen you use it: whenever you store and query data.\n\nTip: async all the way 🗄️",
            "es": "EF Core basico: DbContext, DbSet, migraciones y CRUD.\n\nPor que importa: casi todas las apps son de datos.\n\nCuando se usa: siempre que guardas y consultas datos.\n\nTip: async hasta el final 🗄️",
            "zh": "EF Core 基础：DbContext、DbSet、迁移、CRUD。\n\n为什么重要：大多数应用都离不开数据。\n\n什么时候用：存取数据时。\n\n提示：尽量 async 🗄️",
        },
        "aspnetEFQueries": {
            "en": "EF Core queries: filters, includes, projections, paging.\n\nWhy it matters: query shape affects performance and correctness.\n\nWhen you use it: every non-trivial endpoint.\n\nTip: avoid N+1 queries 🔎",
            "es": "Consultas EF Core: filtros, includes, proyecciones, paginacion.\n\nPor que importa: la query decide rendimiento y resultados.\n\nCuando se usa: en cualquier endpoint serio.\n\nTip: ojo con el N+1 🔎",
            "zh": "EF Core 查询：过滤、Include、投影、分页。\n\n为什么重要：查询形状影响性能和正确性。\n\n什么时候用：稍微复杂的端点。\n\n提示：小心 N+1 🔎",
        },
        "aspnetAuth": {
            "en": "Auth and authorization keep your API private and controlled.\n\nWhy it matters: public endpoints are a liability.\n\nWhen you use it: anything with user data.\n\nTip: start simple with policies 🔐",
            "es": "Auth y autorizacion mantienen tu API privada y controlada.\n\nPor que importa: endpoints publicos sin control son una bomba.\n\nCuando se usa: cualquier dato de usuario.\n\nTip: empieza simple con policies 🔐",
            "zh": "认证与授权让 API 可控。\n\n为什么重要：公开接口没有保护很危险。\n\n什么时候用：涉及用户数据时。\n\n提示：用 policy 从简单开始 🔐",
        },
        "aspnetSwagger": {
            "en": "OpenAPI/Swagger gives interactive documentation for your endpoints.\n\nWhy it matters: faster frontend work, fewer misunderstandings.\n\nWhen you use it: basically always for APIs.\n\nTip: tags and response types help a lot 📚",
            "es": "OpenAPI/Swagger da documentacion interactiva de tus endpoints.\n\nPor que importa: frontend mas rapido y menos malentendidos.\n\nCuando se usa: casi siempre en APIs.\n\nTip: tags y respuestas ayudan mucho 📚",
            "zh": "OpenAPI/Swagger 提供交互式文档。\n\n为什么重要：前端更快，沟通更少误解。\n\n什么时候用：API 基本都该有。\n\n提示：tag 和响应类型很加分 📚",
        },
        "aspnetTestingDeploy": {
            "en": "Testing and deploy: confidence + stable releases.\n\nWhy it matters: shipping is a process, not a button.\n\nWhen you use it: every PR, every release.\n\nTip: health endpoints + CI = calm deploys 🚀",
            "es": "Testing y deploy: confianza y releases estables.\n\nPor que importa: desplegar es un proceso, no un boton.\n\nCuando se usa: en cada PR y cada release.\n\nTip: health endpoints + CI = deploy tranquilo 🚀",
            "zh": "测试与部署：更有信心、更稳定上线。\n\n为什么重要：发布是流程，不是按钮。\n\n什么时候用：每个 PR、每次上线。\n\n提示：健康检查 + CI = 稳 🚀",
        },
    }

    return mapping[cat_dir][lang]


def token_to_regex(tok: str) -> str:
    tok = normalize_must_token(tok)
    parts = re.split(r"\s+", tok.strip())
    parts = [re.escape(p) for p in parts if p]
    return r"\\s+".join(parts) if parts else ""


def build_model_list(cat_dir: str, specs: list[ExerciseSpec], lang: str, base_id: int) -> str:
    model_name = f"{cat_dir}Model{lang.upper()}"

    lines: list[str] = []
    lines.append("import 'package:learnswift/data/courses/coursesExModel.dart';")
    lines.append("")
    lines.append("import '../../Swift/swiftBasics/sbExModelListZH.dart';")
    lines.append("")
    lines.append(f"List<CoursesExModel> {model_name} = [")

    for idx, (t_en, t_es, t_zh, _code, _must, _out) in enumerate(specs):
        ex_id = base_id + idx
        n = idx + 1
        challenge = n % 2 == 0
        label = ex_label(lang, n, challenge)
        topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]
        name = f"{label} {n}: {topic}"

        already = (
            f"purchaseManagerHive.getPurchasedTrue({ex_id})"
            if idx < 8
            else f"purchaseManagerHive.getPurchasedFalse({ex_id})"
        )

        lines.append("  CoursesExModel(")
        lines.append(f"    id: {ex_id},")
        lines.append(f'    exerciseName: "{dart_escape_double_quoted(name)}",')
        lines.append(f'    productID: "com.mrrubik.learnswift.{LANG_PREFIX}ex{ex_id}",')
        lines.append(f"    alreadyBuy: {already},")
        lines.append(f"    completed: purchaseManagerHive.getCompleted({ex_id}),")
        lines.append("  ),")

    lines.append("];\n")
    return "\n".join(lines)


def build_exmain(cat_dir: str, ids: list[int]) -> str:
    class_name = f"{camel(cat_dir)}ExMain"

    lines: list[str] = []
    lines.append("import 'package:flutter/material.dart';")
    for ex_id in ids:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/aspnet/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
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

    for ex_id in ids:
        ex_class = f"{camel(cat_dir)}Ex{ex_id}"
        lines.append("")
        lines.append(f"          if (widget.id == {ex_id})")
        lines.append(f"            {ex_class}(")
        lines.append(f"              id: {ex_id},")
        lines.append("              title: widget.title,")
        lines.append("              completed: widget.completed,")
        lines.append("            ),")

    lines.append("        ],")
    lines.append("      ),")
    lines.append("    );")
    lines.append("  }")
    lines.append("}")
    return "\n".join(lines) + "\n"


def build_exercise_screen(cat_dir: str, ex_id: int, must_tokens: list[str]) -> str:
    class_name = f"{camel(cat_dir)}Ex{ex_id}"

    regex_lines: list[str] = []
    for tok in must_tokens:
        pat = token_to_regex(tok)
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
    lines.append(f"              heroTag: 'introButtonAspnet{ex_id}',")
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
    lines.append(f"              heroTag: 'infoButtonAspnet{ex_id}',")
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
    lines.append(f"              heroTag: 'runButtonAspnet{ex_id}',")
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
    lines.append("                  language: CodeLanguage.cpp,")
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


def build_courses_main_model_list(lang: str) -> str:
    names: dict[str, list[str]] = {
        "en": [
            "ASP.NET Core Basics",
            "Minimal APIs",
            "Routing",
            "Controllers",
            "Binding and DTOs",
            "Dependency Injection",
            "Middleware",
            "Configuration",
            "Logging",
            "Validation and Errors",
            "EF Core Basics",
            "EF Core Queries",
            "Auth and Authorization",
            "OpenAPI and Swagger",
            "Testing and Deploy",
        ],
        "es": [
            "Fundamentos ASP.NET Core",
            "Minimal APIs",
            "Rutas",
            "Controladores",
            "Binding y DTOs",
            "Inyeccion de Dependencias",
            "Middleware",
            "Configuracion",
            "Logging",
            "Validacion y Errores",
            "EF Core Basico",
            "Consultas EF Core",
            "Auth y Autorizacion",
            "OpenAPI y Swagger",
            "Testing y Deploy",
        ],
        "zh": [
            "ASP.NET Core 基础",
            "Minimal API",
            "路由",
            "控制器",
            "绑定与 DTO",
            "依赖注入",
            "中间件",
            "配置",
            "日志",
            "验证与错误",
            "EF Core 基础",
            "EF Core 查询",
            "认证与授权",
            "OpenAPI 与 Swagger",
            "测试与部署",
        ],
    }[lang]

    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")
    for cat_dir, _en, _es, _zh in CATEGORIES:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/aspnet/{cat_dir}/{cat_dir}ExMain.dart';"
        )
    for cat_dir, _en, _es, _zh in CATEGORIES:
        lines.append(
            f"import '../../courses/ASPNet/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';"
        )
    lines.append("")

    varname = f"coursesAspNetMainModelList{lang.upper()}"
    lines.append(f"List<CoursesMainModel> {varname} = [")

    for idx, (cat_dir, _en, _es, _zh) in enumerate(CATEGORIES):
        general = names[idx]
        model_var = f"{cat_dir}Model{lang.upper()}"
        exmain_class = f"{camel(cat_dir)}ExMain"
        lines.append("CoursesMainModel(")
        lines.append(f"  id: {idx},")
        lines.append(f"  generalName: '{general}',")
        lines.append(f"  catExercise: {model_var},")
        lines.append(f'  description: "{LANG_PREFIX}Cat{idx}InfoContent", ')
        lines.append("  numCompletedCourses: 0,")
        lines.append("  totalCourses: 15,")
        lines.append("  alreadyBuy: true,")
        lines.append("  completed: false,")
        lines.append(
            "  builder: (context, id, title, description, completed, color1, color2) =>"
        )
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
    "aspnetBasics": [
        ex(
            "Create the WebApplication builder",
            "Crear el builder WebApplication",
            "创建 WebApplication builder",
            ["var builder = WebApplication.CreateBuilder(args);"],
            ["WebApplication.CreateBuilder", "args"],
            "builder ready",
        ),
        ex(
            "Build the app",
            "Construir la app",
            "构建 app",
            ["var app = builder.Build();"],
            ["builder.Build", "var app"],
            "app built",
        ),
        ex(
            "Map a root endpoint",
            "Mapear el endpoint raiz",
            "映射根端点",
            ['app.MapGet("/", () => "Hello");'],
            ["MapGet", '"/"', "Hello"],
            "Hello",
        ),
        ex(
            "Run the app",
            "Arrancar la app",
            "运行 app",
            ["app.Run();"],
            ["app.Run"],
            "server running",
        ),
        ex(
            "Enable controllers",
            "Habilitar controladores",
            "启用控制器",
            ["builder.Services.AddControllers();"],
            ["Services", "AddControllers"],
            "controllers enabled",
        ),
        ex(
            "Map controllers",
            "Mapear controladores",
            "映射控制器",
            ["app.MapControllers();"],
            ["MapControllers"],
            "controllers mapped",
        ),
        ex(
            "HTTPS redirection",
            "Redireccion HTTPS",
            "HTTPS 重定向",
            ["app.UseHttpsRedirection();"],
            ["UseHttpsRedirection"],
            "https",
        ),
        ex(
            "Development-only endpoint",
            "Endpoint solo en Development",
            "仅开发环境端点",
            [
                "if (app.Environment.IsDevelopment())",
                '  app.MapGet("/dev", () => "dev");',
            ],
            ["Environment.IsDevelopment", '"/dev"'],
            "dev",
        ),
        ex(
            "Add endpoints explorer",
            "Anadir endpoints explorer",
            "添加 endpoints explorer",
            ["builder.Services.AddEndpointsApiExplorer();"],
            ["AddEndpointsApiExplorer"],
            "explorer",
        ),
        ex(
            "Register health checks",
            "Registrar health checks",
            "注册健康检查",
            ["builder.Services.AddHealthChecks();"],
            ["AddHealthChecks"],
            "health",
        ),
        ex(
            "Map health checks",
            "Mapear health checks",
            "映射健康检查",
            ['app.MapHealthChecks("/health");'],
            ["MapHealthChecks", '"/health"'],
            "200",
        ),
        ex(
            "Enable CORS (basic)",
            "Habilitar CORS (basico)",
            "启用 CORS（基础）",
            ["builder.Services.AddCors();", "app.UseCors();"],
            ["AddCors", "UseCors"],
            "cors",
        ),
        ex(
            "Pretty JSON output",
            "JSON bonito (indentado)",
            "美化 JSON 输出",
            [
                "builder.Services.AddControllers()",
                "  .AddJsonOptions(options => options.JsonSerializerOptions.WriteIndented = true);",
            ],
            ["AddJsonOptions", "WriteIndented", "true"],
            "pretty json",
        ),
        ex(
            "ProblemDetails support",
            "Soporte ProblemDetails",
            "ProblemDetails 支持",
            ["builder.Services.AddProblemDetails();"],
            ["AddProblemDetails"],
            "problem details",
        ),
        ex(
            "Challenge: clean Program.cs skeleton",
            "Desafio: esqueleto limpio en Program.cs",
            "挑战：干净的 Program.cs",
            [
                "var builder = WebApplication.CreateBuilder(args);",
                "builder.Services.AddControllers();",
                "var app = builder.Build();",
                "app.UseHttpsRedirection();",
                "app.MapControllers();",
                "app.Run();",
            ],
            ["CreateBuilder", "AddControllers", "MapControllers", "Run"],
            "ready",
        ),
    ],
    "aspnetMinimalApis": [
        ex(
            "MapGet returning a string",
            "MapGet devolviendo un string",
            "MapGet 返回字符串",
            ['app.MapGet("/hello", () => "Hello minimal");'],
            ["MapGet", '"/hello"', "Hello"],
            "Hello minimal",
        ),
        ex(
            "Return JSON with Results.Ok",
            "Devolver JSON con Results.Ok",
            "用 Results.Ok 返回 JSON",
            ['app.MapGet("/status", () => Results.Ok(new { ok = true }));'],
            ["Results.Ok", "new", "ok = true"],
            "200",
        ),
        ex(
            "MapPost with body binding",
            "MapPost con body binding",
            "MapPost 绑定 body",
            [
                "record Todo(string Title);",
                'app.MapPost("/todos", (Todo todo) => Results.Ok(todo));',
            ],
            ["record Todo", "MapPost", "Results.Ok"],
            "todo",
        ),
        ex(
            "Route parameter {id}",
            "Parametro de ruta {id}",
            "路由参数 {id}",
            ['app.MapGet("/todos/{id}", (int id) => Results.Ok(id));'],
            ["/todos/{id}", "int id", "Results.Ok"],
            "id",
        ),
        ex(
            "Query parameter",
            "Parametro query",
            "Query 参数",
            ['app.MapGet("/search", (string q) => Results.Ok(q));'],
            ["/search", "string q", "Results.Ok"],
            "q",
        ),
        ex(
            "Return NotFound",
            "Devolver NotFound",
            "返回 NotFound",
            ['app.MapGet("/maybe", () => Results.NotFound());'],
            ["Results.NotFound"],
            "404",
        ),
        ex(
            "Return Created",
            "Devolver Created",
            "返回 Created",
            ['app.MapPost("/items", () => Results.Created("/items/1", new { id = 1 }));'],
            ["Results.Created", '"/items/1"'],
            "201",
        ),
        ex(
            "TypedResults.Ok",
            "TypedResults.Ok",
            "TypedResults.Ok",
            ['app.MapGet("/ping", () => TypedResults.Ok("pong"));'],
            ["TypedResults.Ok", "pong"],
            "pong",
        ),
        ex(
            "MapPut with NoContent",
            "MapPut con NoContent",
            "MapPut 返回 NoContent",
            ['app.MapPut("/todos/{id}", (int id) => Results.NoContent());'],
            ["MapPut", "NoContent", "/todos/{id}"],
            "204",
        ),
        ex(
            "MapDelete with NoContent",
            "MapDelete con NoContent",
            "MapDelete 返回 NoContent",
            ['app.MapDelete("/todos/{id}", (int id) => Results.NoContent());'],
            ["MapDelete", "NoContent", "/todos/{id}"],
            "204",
        ),
        ex(
            "Group endpoints with MapGroup",
            "Agrupar endpoints con MapGroup",
            "用 MapGroup 分组",
            [
                'var api = app.MapGroup("/api");',
                'api.MapGet("/version", () => "v1");',
            ],
            ["MapGroup", '"/api"', "MapGet"],
            "v1",
        ),
        ex(
            "Add tags",
            "Anadir tags",
            "添加 tags",
            ['app.MapGet("/todos", () => "list").WithTags("Todos");'],
            ["WithTags", "Todos"],
            "tag",
        ),
        ex(
            "Name an endpoint",
            "Nombrar un endpoint",
            "给端点命名",
            ['app.MapGet("/todos/{id}", (int id) => id).WithName("GetTodo");'],
            ["WithName", "GetTodo", "/todos/{id}"],
            "named",
        ),
        ex(
            "Expose in OpenAPI",
            "Exponer en OpenAPI",
            "暴露到 OpenAPI",
            ['app.MapGet("/hello", () => "hi").WithOpenApi();'],
            ["WithOpenApi", "MapGet"],
            "openapi",
        ),
        ex(
            "Challenge: mini CRUD",
            "Desafio: mini CRUD",
            "挑战：迷你 CRUD",
            [
                "record Todo(int Id, string Title);",
                'app.MapGet("/todos", () => Results.Ok(new List<Todo>()));',
                'app.MapGet("/todos/{id}", (int id) => Results.Ok(id));',
                'app.MapPost("/todos", (Todo todo) => Results.Created("/todos/1", todo));',
                'app.MapDelete("/todos/{id}", (int id) => Results.NoContent());',
            ],
            ["MapGet", "MapPost", "MapDelete"],
            "crud",
        ),
    ],
    "aspnetRouting": [
        ex(
            "Route constraint {id:int}",
            "Constraint de ruta {id:int}",
            "路由约束 {id:int}",
            ['app.MapGet("/users/{id:int}", (int id) => id);'],
            ["/users/{id:int}", "int id", "MapGet"],
            "id",
        ),
        ex(
            "Optional param {slug?}",
            "Parametro opcional {slug?}",
            "可选参数 {slug?}",
            ['app.MapGet("/blog/{slug?}", (string slug) => slug);'],
            ["/blog/{slug?}", "slug"],
            "slug",
        ),
        ex(
            "Catch-all {*path}",
            "Catch-all {*path}",
            "捕获所有 {*path}",
            ['app.MapGet("/files/{*path}", (string path) => path);'],
            ["{*path}", "string path"],
            "path",
        ),
        ex(
            "Protect a route group",
            "Proteger un grupo",
            "保护路由组",
            ['var admin = app.MapGroup("/admin").RequireAuthorization();'],
            ["MapGroup", "RequireAuthorization", '"/admin"'],
            "protected",
        ),
        ex(
            "Group + endpoint",
            "Grupo + endpoint",
            "分组 + 端点",
            [
                'var admin = app.MapGroup("/admin").RequireAuthorization();',
                'admin.MapGet("/dashboard", () => "ok");',
            ],
            ["/admin", "/dashboard", "RequireAuthorization"],
            "ok",
        ),
        ex(
            "Fallback route",
            "Ruta fallback",
            "Fallback 路由",
            ["app.MapFallback(() => Results.NotFound());"],
            ["MapFallback", "NotFound"],
            "404",
        ),
        ex(
            "Map multiple HTTP methods",
            "Mapear varios metodos",
            "映射多个方法",
            ['app.MapMethods("/contact", new[] { "GET", "POST" }, () => "ok");'],
            ["MapMethods", "GET", "POST"],
            "ok",
        ),
        ex(
            "Group tagging",
            "Tags en grupo",
            "分组打 tag",
            ['app.MapGroup("/api").WithTags("API");'],
            ["WithTags", "API", "MapGroup"],
            "tags",
        ),
        ex(
            "Lowercase URLs",
            "URLs en minuscula",
            "小写 URL",
            [
                "builder.Services.Configure<RouteOptions>(options => options.LowercaseUrls = true);",
            ],
            ["RouteOptions", "LowercaseUrls", "true"],
            "lowercase",
        ),
        ex(
            "Conventional controller route",
            "Ruta convencional de controllers",
            "传统控制器路由",
            [
                'app.MapControllerRoute(name: "default", pattern: "{controller=Home}/{action=Index}/{id?}");',
            ],
            ["MapControllerRoute", "pattern:", "{controller=Home}"],
            "route",
        ),
        ex(
            "Add Produces metadata",
            "Anadir metadata Produces",
            "添加 Produces 元数据",
            ['app.MapGet("/ping", () => "pong").Produces<string>(200);'],
            ["Produces<string>", "200"],
            "produces",
        ),
        ex(
            "Name a product route",
            "Nombrar ruta de producto",
            "命名商品路由",
            ['app.MapGet("/products/{id}", (int id) => id).WithName("GetProduct");'],
            ["WithName", "GetProduct", "/products/{id}"],
            "named",
        ),
        ex(
            "Generate a link by name",
            "Generar link por nombre",
            "按名称生成链接",
            [
                'app.MapGet("/link", (LinkGenerator links) =>',
                '  links.GetPathByName("GetProduct", new { id = 1 }));',
            ],
            ["LinkGenerator", "GetPathByName", "GetProduct"],
            "path",
        ),
        ex(
            "Versioned group",
            "Grupo versionado",
            "版本分组",
            ['var v1 = app.MapGroup("/api/v1");'],
            ["MapGroup", "/api/v1"],
            "v1",
        ),
        ex(
            "Challenge: group + constraints",
            "Desafio: grupo + constraints",
            "挑战：分组 + 约束",
            [
                'var api = app.MapGroup("/api");',
                'api.MapGet("/users/{id:int}", (int id) => id);',
                'api.MapFallback(() => Results.NotFound());',
            ],
            ["/api", "{id:int}", "MapFallback"],
            "routing",
        ),
    ],
    "aspnetControllers": [
        ex(
            "ApiController attribute",
            "Atributo ApiController",
            "ApiController 特性",
            ["[ApiController]"],
            ["[ApiController]"],
            "attribute",
        ),
        ex(
            "Route attribute",
            "Atributo Route",
            "Route 特性",
            ['[Route("api/[controller]")]'],
            ["[Route", "api/[controller]"],
            "route",
        ),
        ex(
            "ControllerBase class",
            "Clase ControllerBase",
            "ControllerBase 类",
            ["public class TodosController : ControllerBase"],
            ["class TodosController", "ControllerBase"],
            "controller",
        ),
        ex(
            "HttpGet action",
            "Accion HttpGet",
            "HttpGet 动作",
            ['[HttpGet] public ActionResult<string> Get() => "ok";'],
            ["[HttpGet]", "ActionResult<string>", "=>"],
            "ok",
        ),
        ex(
            "HttpGet with {id}",
            "HttpGet con {id}",
            "带 {id} 的 HttpGet",
            ['[HttpGet("{id}")] public ActionResult<int> GetById(int id) => id;'],
            ["{id}", "int id", "GetById"],
            "id",
        ),
        ex(
            "Return Ok(...)",
            "Devolver Ok(...)",
            "返回 Ok(...)",
            ['public IActionResult Ping() => Ok("pong");'],
            ["IActionResult", "Ok("],
            "pong",
        ),
        ex(
            "Return NotFound()",
            "Devolver NotFound()",
            "返回 NotFound()",
            ["public IActionResult GetOne(int id) => NotFound();"],
            ["NotFound"],
            "404",
        ),
        ex(
            "HttpPost + FromBody",
            "HttpPost + FromBody",
            "HttpPost + FromBody",
            [
                "public record TodoCreateDto(string Title);",
                "[HttpPost] public IActionResult Create([FromBody] TodoCreateDto dto) => Created(\"\", dto);",
            ],
            ["[HttpPost]", "[FromBody]", "Created("],
            "201",
        ),
        ex(
            "CreatedAtAction",
            "CreatedAtAction",
            "CreatedAtAction",
            [
                "return CreatedAtAction(nameof(GetById), new { id = 1 });",
            ],
            ["CreatedAtAction", "nameof", "GetById"],
            "201",
        ),
        ex(
            "HttpPut returns NoContent",
            "HttpPut devuelve NoContent",
            "HttpPut 返回 NoContent",
            [
                "public record TodoUpdateDto(string Title);",
                "[HttpPut(\"{id}\")] public IActionResult Update(int id, [FromBody] TodoUpdateDto dto) => NoContent();",
            ],
            ["[HttpPut", "NoContent", "{id}", "[FromBody]"],
            "204",
        ),
        ex(
            "HttpDelete returns NoContent",
            "HttpDelete devuelve NoContent",
            "HttpDelete 返回 NoContent",
            ["[HttpDelete(\"{id}\")] public IActionResult Delete(int id) => NoContent();"],
            ["[HttpDelete", "NoContent", "{id}"],
            "204",
        ),
        ex(
            "ProducesResponseType",
            "ProducesResponseType",
            "ProducesResponseType",
            ["[ProducesResponseType(StatusCodes.Status200OK)]"],
            ["ProducesResponseType", "Status200OK"],
            "docs",
        ),
        ex(
            "FromQuery search",
            "Busqueda con FromQuery",
            "FromQuery 搜索",
            ["public IActionResult Search([FromQuery] string q) => Ok(q);"],
            ["[FromQuery]", "Ok("],
            "query",
        ),
        ex(
            "Inject ILogger",
            "Inyectar ILogger",
            "注入 ILogger",
            [
                "private readonly ILogger<TodosController> _logger;",
                "public TodosController(ILogger<TodosController> logger) => _logger = logger;",
            ],
            ["ILogger<TodosController>", "_logger ="],
            "logger",
        ),
        ex(
            "Challenge: controller mini skeleton",
            "Desafio: mini esqueleto controller",
            "挑战：控制器小骨架",
            [
                "[ApiController]",
                "[Route(\"api/[controller]\")]",
                "public class TodosController : ControllerBase",
                "[HttpGet] public ActionResult<string> Get() => \"ok\";",
                "[HttpPost] public IActionResult Create([FromBody] TodoCreateDto dto) => Ok();",
            ],
            ["[ApiController]", "[Route", "[HttpGet]", "[HttpPost]"],
            "controller",
        ),
    ],
    "aspnetBinding": [
        ex(
            "Record DTO",
            "DTO con record",
            "record DTO",
            ["public record TodoCreateDto(string Title);"],
            ["record", "TodoCreateDto"],
            "dto",
        ),
        ex(
            "FromRoute",
            "FromRoute",
            "FromRoute",
            ["public IActionResult Get([FromRoute] int id) => Ok(id);"],
            ["[FromRoute]", "int id"],
            "route",
        ),
        ex(
            "FromQuery",
            "FromQuery",
            "FromQuery",
            ["public IActionResult Search([FromQuery] string q) => Ok(q);"],
            ["[FromQuery]", "string q"],
            "query",
        ),
        ex(
            "FromHeader(Name=...)",
            "FromHeader(Name=...)",
            "FromHeader(Name=...)",
            [
                'public IActionResult Trace([FromHeader(Name="X-Trace-Id")] string traceId) => Ok(traceId);',
            ],
            ["FromHeader", "X-Trace-Id"],
            "header",
        ),
        ex(
            "FromBody",
            "FromBody",
            "FromBody",
            [
                "public record TodoCreateDto(string Title);",
                "public IActionResult Create([FromBody] TodoCreateDto dto) => Ok(dto);",
            ],
            ["[FromBody]", "TodoCreateDto"],
            "body",
        ),
        ex(
            "FromServices injection",
            "Inyeccion con FromServices",
            "FromServices 注入",
            [
                "public interface IClock { DateTime Now { get; } }",
                "public IActionResult Time([FromServices] IClock clock) => Ok(clock.Now);",
            ],
            ["[FromServices]", "IClock"],
            "service",
        ),
        ex(
            "DTO with Required",
            "DTO con Required",
            "带 Required 的 DTO",
            ["public record LoginDto([Required] string Email);"],
            ["[Required]", "LoginDto"],
            "required",
        ),
        ex(
            "ConfigureHttpJsonOptions",
            "ConfigureHttpJsonOptions",
            "ConfigureHttpJsonOptions",
            [
                "builder.Services.ConfigureHttpJsonOptions(options =>",
                "  options.SerializerOptions.WriteIndented = true);",
            ],
            ["ConfigureHttpJsonOptions", "WriteIndented"],
            "json",
        ),
        ex(
            "Disable naming policy",
            "Desactivar naming policy",
            "关闭命名策略",
            [
                "builder.Services.ConfigureHttpJsonOptions(options =>",
                "  options.SerializerOptions.PropertyNamingPolicy = null);",
            ],
            ["PropertyNamingPolicy", "null"],
            "json",
        ),
        ex(
            "Controller JSON options",
            "Opciones JSON en controllers",
            "控制器 JSON 选项",
            [
                "builder.Services.AddControllers()",
                "  .AddJsonOptions(options => options.JsonSerializerOptions.PropertyNameCaseInsensitive = true);",
            ],
            ["AddJsonOptions", "PropertyNameCaseInsensitive"],
            "json",
        ),
        ex(
            "Bind file upload",
            "Bind de subida de archivo",
            "绑定文件上传",
            ["public async Task<IActionResult> Upload(IFormFile file) => Ok(file.FileName);"],
            ["IFormFile", "FileName"],
            "file",
        ),
        ex(
            "Consumes attribute",
            "Atributo Consumes",
            "Consumes 特性",
            ['[Consumes("application/json")]'],
            ["Consumes", "application/json"],
            "content-type",
        ),
        ex(
            "Produces attribute",
            "Atributo Produces",
            "Produces 特性",
            ['[Produces("application/json")]'],
            ["Produces", "application/json"],
            "docs",
        ),
        ex(
            "Combine route + query",
            "Combinar ruta + query",
            "组合 route + query",
            [
                "[HttpGet(\"{id}\")]",
                "public IActionResult Get([FromRoute] int id, [FromQuery] string q) => Ok();",
            ],
            ["{id}", "[FromRoute]", "[FromQuery]"],
            "combo",
        ),
        ex(
            "Challenge: minimal API binding",
            "Desafio: binding en minimal API",
            "挑战：Minimal API 绑定",
            ['app.MapGet("/search", ([FromQuery] string q) => Results.Ok(q));'],
            ["[FromQuery]", "Results.Ok", "/search"],
            "ok",
        ),
    ],
    "aspnetDI": [
        ex(
            "AddSingleton",
            "AddSingleton",
            "AddSingleton",
            ["builder.Services.AddSingleton<IClock, SystemClock>();"],
            ["AddSingleton", "IClock", "SystemClock"],
            "singleton",
        ),
        ex(
            "AddScoped",
            "AddScoped",
            "AddScoped",
            ["builder.Services.AddScoped<ITodoRepository, TodoRepository>();"],
            ["AddScoped", "ITodoRepository"],
            "scoped",
        ),
        ex(
            "AddTransient",
            "AddTransient",
            "AddTransient",
            ["builder.Services.AddTransient<IEmailSender, SmtpEmailSender>();"],
            ["AddTransient", "IEmailSender"],
            "transient",
        ),
        ex(
            "Constructor injection",
            "Inyeccion por constructor",
            "构造函数注入",
            ["public TodosController(ITodoRepository repo) => _repo = repo;"],
            ["ITodoRepository", "_repo"],
            "inject",
        ),
        ex(
            "DI in Minimal API",
            "DI en Minimal API",
            "Minimal API 中注入",
            ['app.MapGet("/time", (IClock clock) => clock.Now);'],
            ["IClock", "clock.Now", "MapGet"],
            "time",
        ),
        ex(
            "Configure options",
            "Configurar options",
            "配置 options",
            [
                'builder.Services.Configure<ApiOptions>(builder.Configuration.GetSection("Api"));',
            ],
            ["Configure<ApiOptions>", "GetSection", "Api"],
            "options",
        ),
        ex(
            "Inject IOptions",
            "Inyectar IOptions",
            "注入 IOptions",
            ["public TodosController(IOptions<ApiOptions> options) => _api = options.Value;"],
            ["IOptions<ApiOptions>", "options.Value"],
            "options",
        ),
        ex(
            "AddHttpClient",
            "AddHttpClient",
            "AddHttpClient",
            ["builder.Services.AddHttpClient<GithubClient>();"],
            ["AddHttpClient", "GithubClient"],
            "http",
        ),
        ex(
            "Typed client constructor",
            "Constructor typed client",
            "Typed client 构造函数",
            ["public GithubClient(HttpClient http) => _http = http;"],
            ["HttpClient", "_http"],
            "typed",
        ),
        ex(
            "AddDbContext",
            "AddDbContext",
            "AddDbContext",
            ["builder.Services.AddDbContext<AppDbContext>();"],
            ["AddDbContext", "AppDbContext"],
            "db",
        ),
        ex(
            "Resolve from app.Services",
            "Resolver desde app.Services",
            "从 app.Services 获取",
            ["var clock = app.Services.GetRequiredService<IClock>();"],
            ["GetRequiredService", "IClock"],
            "resolve",
        ),
        ex(
            "TryAddSingleton",
            "TryAddSingleton",
            "TryAddSingleton",
            ["builder.Services.TryAddSingleton<IClock, SystemClock>();"],
            ["TryAddSingleton", "IClock"],
            "tryadd",
        ),
        ex(
            "Register + use service",
            "Registrar + usar servicio",
            "注册 + 使用服务",
            [
                "builder.Services.AddSingleton<IClock, SystemClock>();",
                'app.MapGet("/now", (IClock clock) => clock.Now);',
            ],
            ["AddSingleton", "MapGet", "IClock"],
            "now",
        ),
        ex(
            "Factory via ILoggerFactory",
            "Crear logger con ILoggerFactory",
            "用 ILoggerFactory 创建 logger",
            [
                'var logger = app.Services.GetRequiredService<ILoggerFactory>().CreateLogger("Startup");',
            ],
            ["ILoggerFactory", "CreateLogger"],
            "logger",
        ),
        ex(
            "Challenge: endpoint + options",
            "Desafio: endpoint + options",
            "挑战：端点 + options",
            [
                'builder.Services.Configure<ApiOptions>(builder.Configuration.GetSection("Api"));',
                'app.MapGet("/base-url", (IOptions<ApiOptions> o) => o.Value.BaseUrl);',
            ],
            ["Configure<ApiOptions>", "IOptions<ApiOptions>", "BaseUrl"],
            "url",
        ),
    ],
    "aspnetMiddleware": [
        ex(
            "Inline middleware header",
            "Middleware inline con header",
            "内联中间件加 header",
            [
                "app.Use(async (context, next) =>",
                "{",
                "  context.Response.Headers[\"X-App\"] = \"CodeCrafters\";",
                "  await next();",
                "});",
            ],
            ["app.Use", "Headers", "X-App"],
            "header",
        ),
        ex(
            "UseRouting",
            "UseRouting",
            "UseRouting",
            ["app.UseRouting();"],
            ["UseRouting"],
            "routing",
        ),
        ex(
            "UseAuthentication",
            "UseAuthentication",
            "UseAuthentication",
            ["app.UseAuthentication();"],
            ["UseAuthentication"],
            "auth",
        ),
        ex(
            "UseAuthorization",
            "UseAuthorization",
            "UseAuthorization",
            ["app.UseAuthorization();"],
            ["UseAuthorization"],
            "authz",
        ),
        ex(
            "UseCors",
            "UseCors",
            "UseCors",
            ["app.UseCors();"],
            ["UseCors"],
            "cors",
        ),
        ex(
            "UseExceptionHandler",
            "UseExceptionHandler",
            "UseExceptionHandler",
            ['app.UseExceptionHandler("/error");'],
            ["UseExceptionHandler", "/error"],
            "errors",
        ),
        ex(
            "UseStatusCodePages",
            "UseStatusCodePages",
            "UseStatusCodePages",
            ["app.UseStatusCodePages();"],
            ["UseStatusCodePages"],
            "status",
        ),
        ex(
            "Map a branch",
            "Mapear una rama",
            "分支 Map",
            ['app.Map("/admin", adminApp => adminApp.MapGet("/ping", () => "ok"));'],
            ["app.Map", "/admin", "/ping"],
            "ok",
        ),
        ex(
            "Middleware class signature",
            "Firma de middleware",
            "中间件类签名",
            [
                "public class RequestTimingMiddleware",
                "{",
                "  public Task InvokeAsync(HttpContext context, RequestDelegate next) => next(context);",
                "}",
            ],
            ["RequestTimingMiddleware", "InvokeAsync", "RequestDelegate"],
            "class",
        ),
        ex(
            "UseMiddleware<T>",
            "UseMiddleware<T>",
            "UseMiddleware<T>",
            ["app.UseMiddleware<RequestTimingMiddleware>();"],
            ["UseMiddleware", "RequestTimingMiddleware"],
            "use",
        ),
        ex(
            "Extension method",
            "Metodo de extension",
            "扩展方法",
            [
                "public static IApplicationBuilder UseRequestTiming(this IApplicationBuilder app)",
                "  => app.UseMiddleware<RequestTimingMiddleware>();",
            ],
            ["IApplicationBuilder", "UseRequestTiming", "UseMiddleware"],
            "ext",
        ),
        ex(
            "Response compression",
            "Compresion de respuesta",
            "响应压缩",
            [
                "builder.Services.AddResponseCompression();",
                "app.UseResponseCompression();",
            ],
            ["AddResponseCompression", "UseResponseCompression"],
            "gzip",
        ),
        ex(
            "Forwarded headers",
            "Forwarded headers",
            "Forwarded headers",
            ["app.UseForwardedHeaders();"],
            ["UseForwardedHeaders"],
            "proxy",
        ),
        ex(
            "Rate limiter (basic)",
            "Rate limiter (basico)",
            "限流（基础）",
            [
                "builder.Services.AddRateLimiter(options =>",
                "  options.AddFixedWindowLimiter(\"fixed\", opt => opt.PermitLimit = 10));",
            ],
            ["AddRateLimiter", "AddFixedWindowLimiter", "PermitLimit"],
            "limit",
        ),
        ex(
            "Challenge: auth order",
            "Desafio: orden de auth",
            "挑战：认证顺序",
            [
                "app.UseAuthentication();",
                "app.UseAuthorization();",
            ],
            ["UseAuthentication", "UseAuthorization"],
            "order",
        ),
    ],
    "aspnetConfig": [
        ex(
            "GetConnectionString",
            "GetConnectionString",
            "GetConnectionString",
            [
                'var conn = builder.Configuration.GetConnectionString("Default");',
            ],
            ["GetConnectionString", "Default"],
            "conn",
        ),
        ex(
            "Config indexer",
            "Indexer de config",
            "配置索引",
            ['var url = builder.Configuration["Api:BaseUrl"];'],
            ["Api:BaseUrl", "Configuration["],
            "url",
        ),
        ex(
            "GetValue<int>",
            "GetValue<int>",
            "GetValue<int>",
            ['var timeout = builder.Configuration.GetValue<int>("Api:TimeoutSeconds");'],
            ["GetValue<int>", "TimeoutSeconds"],
            "timeout",
        ),
        ex(
            "GetSection",
            "GetSection",
            "GetSection",
            ['var section = builder.Configuration.GetSection("Api");'],
            ["GetSection", "Api"],
            "section",
        ),
        ex(
            "Configure<ApiOptions>",
            "Configurar ApiOptions",
            "配置 ApiOptions",
            ['builder.Services.Configure<ApiOptions>(builder.Configuration.GetSection("Api"));'],
            ["Configure<ApiOptions>", "GetSection"],
            "options",
        ),
        ex(
            "Options record",
            "Record de options",
            "Options record",
            ["public record ApiOptions(string BaseUrl, int TimeoutSeconds);"],
            ["record ApiOptions", "BaseUrl", "TimeoutSeconds"],
            "options",
        ),
        ex(
            "Read environment name",
            "Leer nombre de entorno",
            "读取环境名",
            ['var env = builder.Configuration["ASPNETCORE_ENVIRONMENT"];'],
            ["ASPNETCORE_ENVIRONMENT"],
            "env",
        ),
        ex(
            "appsettings.json snippet",
            "Snippet de appsettings.json",
            "appsettings.json 片段",
            ['{ "Api": { "BaseUrl": "https://example.com" } }'],
            ["Api", "BaseUrl", "https://example.com"],
            "json",
        ),
        ex(
            "Production-only HSTS",
            "HSTS solo en produccion",
            "仅生产启用 HSTS",
            [
                "if (app.Environment.IsProduction())",
                "  app.UseHsts();",
            ],
            ["Environment.IsProduction", "UseHsts"],
            "hsts",
        ),
        ex(
            "Options in an endpoint",
            "Options en un endpoint",
            "端点使用 Options",
            ['app.MapGet("/config", (IOptions<ApiOptions> o) => o.Value.BaseUrl);'],
            ["IOptions<ApiOptions>", "Value.BaseUrl"],
            "base-url",
        ),
        ex(
            "UseUrls",
            "UseUrls",
            "UseUrls",
            ['builder.WebHost.UseUrls("http://0.0.0.0:8080");'],
            ["UseUrls", "8080"],
            "urls",
        ),
        ex(
            "AddJsonFile",
            "AddJsonFile",
            "AddJsonFile",
            ['builder.Configuration.AddJsonFile("appsettings.Local.json", optional: true);'],
            ["AddJsonFile", "optional: true"],
            "json",
        ),
        ex(
            "AddEnvironmentVariables",
            "AddEnvironmentVariables",
            "AddEnvironmentVariables",
            ['builder.Configuration.AddEnvironmentVariables(prefix: "CC_");'],
            ["AddEnvironmentVariables", "CC_"],
            "env",
        ),
        ex(
            "Inject IHostEnvironment",
            "Inyectar IHostEnvironment",
            "注入 IHostEnvironment",
            ['app.MapGet("/env", (IHostEnvironment e) => e.EnvironmentName);'],
            ["IHostEnvironment", "EnvironmentName"],
            "env",
        ),
        ex(
            "Challenge: env-based appsettings",
            "Desafio: appsettings por entorno",
            "挑战：按环境加载 appsettings",
            [
                'var file = "appsettings." + app.Environment.EnvironmentName + ".json";',
                'builder.Configuration.AddJsonFile(file, optional: true);',
            ],
            ["EnvironmentName", "AddJsonFile", "optional: true"],
            "file",
        ),
    ],
    "aspnetLogging": [
        ex(
            "LogInformation",
            "LogInformation",
            "LogInformation",
            ['app.Logger.LogInformation("Server starting");'],
            ["LogInformation", "Server"],
            "log",
        ),
        ex(
            "LogWarning",
            "LogWarning",
            "LogWarning",
            ['app.Logger.LogWarning("Cache miss");'],
            ["LogWarning"],
            "warn",
        ),
        ex(
            "LogError with exception",
            "LogError con excepcion",
            "带异常的 LogError",
            ['_logger.LogError(ex, "Boom");'],
            ["LogError", "ex"],
            "error",
        ),
        ex(
            "Structured log {Id}",
            "Log estructurado {Id}",
            "结构化日志 {Id}",
            ['_logger.LogInformation("Todo created {Id}", id);'],
            ["Todo created {Id}", "id"],
            "structured",
        ),
        ex(
            "BeginScope",
            "BeginScope",
            "BeginScope",
            ['_logger.BeginScope("TraceId:{TraceId}", traceId);'],
            ["BeginScope", "{TraceId}"],
            "scope",
        ),
        ex(
            "HTTP logging middleware",
            "Middleware de HTTP logging",
            "HTTP 日志中间件",
            [
                "builder.Services.AddHttpLogging(o => o.LoggingFields = HttpLoggingFields.All);",
                "app.UseHttpLogging();",
            ],
            ["AddHttpLogging", "UseHttpLogging", "HttpLoggingFields.All"],
            "http logs",
        ),
        ex(
            "AddConsole provider",
            "Anadir provider console",
            "添加 Console provider",
            ["builder.Logging.ClearProviders();", "builder.Logging.AddConsole();"],
            ["ClearProviders", "AddConsole"],
            "console",
        ),
        ex(
            "Minimum log level",
            "Nivel minimo de log",
            "最小日志级别",
            ["builder.Logging.SetMinimumLevel(LogLevel.Warning);"],
            ["SetMinimumLevel", "LogLevel.Warning"],
            "level",
        ),
        ex(
            "Filter noisy logs",
            "Filtrar logs ruidosos",
            "过滤噪声日志",
            ["builder.Logging.AddFilter(\"Microsoft\", LogLevel.Warning);"],
            ["AddFilter", "Microsoft", "LogLevel.Warning"],
            "filter",
        ),
        ex(
            "Developer exception page",
            "Developer exception page",
            "开发异常页",
            [
                "if (app.Environment.IsDevelopment())",
                "  app.UseDeveloperExceptionPage();",
            ],
            ["IsDevelopment", "UseDeveloperExceptionPage"],
            "dev",
        ),
        ex(
            "Log inside an endpoint",
            "Log dentro de un endpoint",
            "在端点里打 log",
            [
                'app.MapGet("/time", (ILogger<Program> log) =>',
                "{",
                "  log.LogInformation(\"Time endpoint\");",
                "  return DateTime.UtcNow;",
                "});",
            ],
            ["ILogger<Program>", "LogInformation", "DateTime.UtcNow"],
            "time",
        ),
        ex(
            "Activity tag",
            "Tag en Activity",
            "Activity 打 tag",
            ['Activity.Current?.AddTag("user.id", userId);'],
            ["Activity.Current", "AddTag"],
            "tag",
        ),
        ex(
            "Logger from ILoggerFactory",
            "Logger desde ILoggerFactory",
            "从 ILoggerFactory 创建 logger",
            ['var logger = app.Services.GetRequiredService<ILoggerFactory>().CreateLogger("Startup");'],
            ["ILoggerFactory", "CreateLogger"],
            "factory",
        ),
        ex(
            "Log template {Url}",
            "Template {Url}",
            "模板 {Url}",
            ['app.Logger.LogInformation("Listening on {Url}", "http://localhost:5000");'],
            ["Listening on {Url}", "localhost"],
            "url",
        ),
        ex(
            "Challenge: logs that help",
            "Desafio: logs que ayudan",
            "挑战：有用的日志",
            [
                'app.Logger.LogInformation("Startup mode {Mode}", app.Environment.EnvironmentName);',
                'app.Logger.LogWarning("Cache miss for {Key}", "todos");',
            ],
            ["{Mode}", "{Key}", "LogWarning"],
            "logs",
        ),
    ],
    "aspnetValidation": [
        ex(
            "Required on DTO",
            "Required en DTO",
            "DTO 上的 Required",
            ["public record CreateTodoDto([Required] string Title);"],
            ["[Required]", "CreateTodoDto"],
            "required",
        ),
        ex(
            "StringLength attribute",
            "Atributo StringLength",
            "StringLength 特性",
            [
                "public class CreateTodoDto",
                "{",
                "  [StringLength(100)]",
                "  public string Title { get; set; }",
                "}",
            ],
            ["StringLength(100)", "Title"],
            "length",
        ),
        ex(
            "ModelState check",
            "Chequeo de ModelState",
            "ModelState 检查",
            ["if (!ModelState.IsValid) return BadRequest(ModelState);"],
            ["ModelState.IsValid", "BadRequest"],
            "400",
        ),
        ex(
            "ValidationProblem(ModelState)",
            "ValidationProblem(ModelState)",
            "ValidationProblem(ModelState)",
            ["return ValidationProblem(ModelState);"],
            ["ValidationProblem", "ModelState"],
            "problem",
        ),
        ex(
            "Results.Problem",
            "Results.Problem",
            "Results.Problem",
            ['return Results.Problem(statusCode: 500, title: "Oops");'],
            ["Results.Problem", "statusCode:", "500"],
            "500",
        ),
        ex(
            "Map error endpoint",
            "Mapear endpoint de error",
            "映射错误端点",
            ['app.MapGet("/error", () => Results.Problem("Boom"));'],
            ["/error", "Results.Problem"],
            "problem",
        ),
        ex(
            "BadRequest with payload",
            "BadRequest con payload",
            "带 payload 的 BadRequest",
            ['return BadRequest(new { error = "Invalid" });'],
            ["BadRequest", "error ="],
            "400",
        ),
        ex(
            "Minimal API ValidationProblem",
            "ValidationProblem en minimal API",
            "Minimal API 的 ValidationProblem",
            [
                "return Results.ValidationProblem(",
                "  new Dictionary<string, string[]>",
                "  {",
                "    [\"title\"] = new[] { \"Required\" }",
                "  });",
            ],
            ["Results.ValidationProblem", "Dictionary<string, string[]>"],
            "422",
        ),
        ex(
            "UseExceptionHandler",
            "UseExceptionHandler",
            "UseExceptionHandler",
            ['app.UseExceptionHandler("/error");'],
            ["UseExceptionHandler", "/error"],
            "handler",
        ),
        ex(
            "Status code pages",
            "Status code pages",
            "状态码页面",
            ["app.UseStatusCodePages();"],
            ["UseStatusCodePages"],
            "status",
        ),
        ex(
            "Return NotFound()",
            "Devolver NotFound()",
            "返回 NotFound()",
            ["return NotFound();"],
            ["NotFound"],
            "404",
        ),
        ex(
            "Return Conflict()",
            "Devolver Conflict()",
            "返回 Conflict()",
            ["return Conflict(new { message = \"Already exists\" });"],
            ["Conflict", "Already exists"],
            "409",
        ),
        ex(
            "Challenge: clean error response",
            "Desafio: error limpio",
            "挑战：干净的错误响应",
            [
                "if (!ModelState.IsValid)",
                "  return ValidationProblem(ModelState);",
                "return Ok();",
            ],
            ["ValidationProblem", "ModelState"],
            "ok",
        ),
        ex(
            "ProblemDetails title",
            "Titulo en ProblemDetails",
            "ProblemDetails 标题",
            ['return Results.Problem(title: "Validation failed", statusCode: 400);'],
            ["Problem(title:", "statusCode:", "400"],
            "problem",
        ),
        ex(
            "Challenge: validate + create",
            "Desafio: validar + crear",
            "挑战：验证 + 创建",
            [
                "if (!ModelState.IsValid) return BadRequest(ModelState);",
                "return Created(\"\", new { ok = true });",
            ],
            ["BadRequest", "Created("],
            "201",
        ),
    ],
    "aspnetEFCore": [
        ex(
            "AddDbContext + UseSqlite",
            "AddDbContext + UseSqlite",
            "AddDbContext + UseSqlite",
            [
                'builder.Services.AddDbContext<AppDbContext>(o => o.UseSqlite("Data Source=app.db"));',
            ],
            ["AddDbContext", "UseSqlite", "Data Source"],
            "sqlite",
        ),
        ex(
            "DbContext + DbSet",
            "DbContext + DbSet",
            "DbContext + DbSet",
            [
                "public class AppDbContext : DbContext",
                "{",
                "  public DbSet<Todo> Todos { get; set; }",
                "}",
            ],
            ["DbContext", "DbSet<Todo>", "Todos"],
            "dbset",
        ),
        ex(
            "Entity class",
            "Clase entidad",
            "实体类",
            [
                "public class Todo",
                "{",
                "  public int Id { get; set; }",
                "  public string Title { get; set; }",
                "}",
            ],
            ["public int Id", "public string Title"],
            "entity",
        ),
        ex(
            "Add migration",
            "Anadir migracion",
            "添加迁移",
            ["dotnet ef migrations add InitialCreate"],
            ["dotnet ef", "migrations add", "InitialCreate"],
            "migration",
        ),
        ex(
            "Update database",
            "Actualizar base de datos",
            "更新数据库",
            ["dotnet ef database update"],
            ["database update"],
            "updated",
        ),
        ex(
            "MigrateAsync",
            "MigrateAsync",
            "MigrateAsync",
            ["await db.Database.MigrateAsync();"],
            ["Database.MigrateAsync"],
            "migrated",
        ),
        ex(
            "Add entity",
            "Anadir entidad",
            "添加实体",
            ['db.Todos.Add(new Todo { Title = "Learn ASP.NET" });'],
            ["Todos.Add", "new Todo", "Title ="],
            "added",
        ),
        ex(
            "SaveChangesAsync",
            "SaveChangesAsync",
            "SaveChangesAsync",
            ["await db.SaveChangesAsync();"],
            ["SaveChangesAsync"],
            "saved",
        ),
        ex(
            "ToListAsync",
            "ToListAsync",
            "ToListAsync",
            ["var todos = await db.Todos.ToListAsync();"],
            ["Todos.ToListAsync"],
            "list",
        ),
        ex(
            "FindAsync",
            "FindAsync",
            "FindAsync",
            ["var todo = await db.Todos.FindAsync(id);"],
            ["FindAsync", "id"],
            "one",
        ),
        ex(
            "Endpoint with DbContext",
            "Endpoint con DbContext",
            "带 DbContext 的端点",
            ['app.MapGet("/todos", async (AppDbContext db) => await db.Todos.ToListAsync());'],
            ["AppDbContext", "ToListAsync", "MapGet"],
            "ok",
        ),
        ex(
            "Update entity + save",
            "Actualizar entidad + save",
            "更新实体 + 保存",
            [
                'todo.Title = "Updated";',
                "await db.SaveChangesAsync();",
            ],
            ["todo.Title", "SaveChangesAsync"],
            "updated",
        ),
        ex(
            "Remove entity",
            "Eliminar entidad",
            "删除实体",
            [
                "db.Todos.Remove(todo);",
                "await db.SaveChangesAsync();",
            ],
            ["Remove(todo)", "SaveChangesAsync"],
            "deleted",
        ),
        ex(
            "AsNoTracking",
            "AsNoTracking",
            "AsNoTracking",
            ["await db.Todos.AsNoTracking().ToListAsync();"],
            ["AsNoTracking", "ToListAsync"],
            "fast",
        ),
        ex(
            "Challenge: create + save in endpoint",
            "Desafio: crear + guardar en endpoint",
            "挑战：端点里创建并保存",
            [
                'app.MapPost("/todos", async (AppDbContext db) =>',
                "{",
                '  db.Todos.Add(new Todo { Title = "Hi" });',
                "  await db.SaveChangesAsync();",
                "  return Results.Ok();",
                "});",
            ],
            ["MapPost", "Todos.Add", "SaveChangesAsync"],
            "201",
        ),
    ],
    "aspnetEFQueries": [
        ex(
            "Where filter",
            "Filtro Where",
            "Where 过滤",
            ['db.Todos.Where(t => t.Title.Contains("api"));'],
            ["Where", "Contains"],
            "filter",
        ),
        ex(
            "OrderByDescending",
            "OrderByDescending",
            "OrderByDescending",
            ["db.Todos.OrderByDescending(t => t.Id);"],
            ["OrderByDescending", "t.Id"],
            "order",
        ),
        ex(
            "Select projection",
            "Proyeccion con Select",
            "Select 投影",
            [
                "public record TodoDto(int Id, string Title);",
                "db.Todos.Select(t => new TodoDto(t.Id, t.Title));",
            ],
            ["Select", "new TodoDto"],
            "dto",
        ),
        ex(
            "Include relationship",
            "Include de relacion",
            "Include 关系",
            ["db.Posts.Include(p => p.Comments);"],
            ["Include", "Comments"],
            "include",
        ),
        ex(
            "ThenInclude",
            "ThenInclude",
            "ThenInclude",
            ["db.Posts.Include(p => p.Comments).ThenInclude(c => c.Author);"],
            ["ThenInclude", "Author"],
            "include",
        ),
        ex(
            "HasMany relationship",
            "Relacion HasMany",
            "HasMany 关系",
            [
                "modelBuilder.Entity<Post>()",
                "  .HasMany(p => p.Comments)",
                "  .WithOne(c => c.Post);",
            ],
            ["HasMany", "WithOne", "Comments"],
            "model",
        ),
        ex(
            "HasKey",
            "HasKey",
            "HasKey",
            ["modelBuilder.Entity<Todo>().HasKey(t => t.Id);"],
            ["HasKey", "t.Id"],
            "key",
        ),
        ex(
            "FirstOrDefaultAsync",
            "FirstOrDefaultAsync",
            "FirstOrDefaultAsync",
            ["await db.Todos.FirstOrDefaultAsync(t => t.Id == id);"],
            ["FirstOrDefaultAsync", "Id == id"],
            "one",
        ),
        ex(
            "AnyAsync",
            "AnyAsync",
            "AnyAsync",
            ["await db.Todos.AnyAsync(t => t.Id == id);"],
            ["AnyAsync", "Id == id"],
            "bool",
        ),
        ex(
            "CountAsync",
            "CountAsync",
            "CountAsync",
            ["await db.Todos.CountAsync();"],
            ["CountAsync"],
            "count",
        ),
        ex(
            "Skip/Take paging",
            "Paginacion Skip/Take",
            "Skip/Take 分页",
            ["db.Todos.Skip(10).Take(10);"],
            ["Skip(10)", "Take(10)"],
            "page",
        ),
        ex(
            "AsNoTracking",
            "AsNoTracking",
            "AsNoTracking",
            ["db.Todos.AsNoTracking();"],
            ["AsNoTracking"],
            "fast",
        ),
        ex(
            "FromSqlRaw",
            "FromSqlRaw",
            "FromSqlRaw",
            ['db.Todos.FromSqlRaw("SELECT * FROM Todos");'],
            ["FromSqlRaw", "SELECT"],
            "sql",
        ),
        ex(
            "Split query",
            "Split query",
            "Split query",
            ["db.Posts.AsSplitQuery().Include(p => p.Comments);"],
            ["AsSplitQuery", "Include"],
            "split",
        ),
        ex(
            "Challenge: include + filter",
            "Desafio: include + filtro",
            "挑战：include + filter",
            [
                "await db.Posts",
                "  .Include(p => p.Comments)",
                '  .Where(p => p.Title.Contains("news"))',
                "  .ToListAsync();",
            ],
            ["Include", "Where", "ToListAsync"],
            "query",
        ),
    ],
    "aspnetAuth": [
        ex(
            "AddAuthentication",
            "AddAuthentication",
            "AddAuthentication",
            ['builder.Services.AddAuthentication("Bearer");'],
            ["AddAuthentication", "Bearer"],
            "auth",
        ),
        ex(
            "AddAuthorization",
            "AddAuthorization",
            "AddAuthorization",
            ["builder.Services.AddAuthorization();"],
            ["AddAuthorization"],
            "authz",
        ),
        ex(
            "UseAuthentication + UseAuthorization",
            "UseAuthentication + UseAuthorization",
            "UseAuthentication + UseAuthorization",
            ["app.UseAuthentication();", "app.UseAuthorization();"],
            ["UseAuthentication", "UseAuthorization"],
            "pipeline",
        ),
        ex(
            "AddJwtBearer",
            "AddJwtBearer",
            "AddJwtBearer",
            ['builder.Services.AddAuthentication("Bearer").AddJwtBearer();'],
            ["AddJwtBearer", "Bearer"],
            "jwt",
        ),
        ex(
            "Authorize attribute",
            "Atributo Authorize",
            "Authorize 特性",
            ["[Authorize]"],
            ["[Authorize]"],
            "secure",
        ),
        ex(
            "AllowAnonymous attribute",
            "Atributo AllowAnonymous",
            "AllowAnonymous 特性",
            ["[AllowAnonymous]"],
            ["[AllowAnonymous]"],
            "public",
        ),
        ex(
            "RequireAuthorization endpoint",
            "RequireAuthorization en endpoint",
            "端点 RequireAuthorization",
            ['app.MapGet("/me", () => "ok").RequireAuthorization();'],
            ["RequireAuthorization", "/me"],
            "me",
        ),
        ex(
            "Authorization policy",
            "Policy de autorizacion",
            "授权 policy",
            ['builder.Services.AddAuthorization(o => o.AddPolicy("admin", p => p.RequireRole("Admin")));'],
            ["AddPolicy", "RequireRole", "Admin"],
            "policy",
        ),
        ex(
            "Authorize(Policy=...)",
            "Authorize(Policy=...)",
            "Authorize(Policy=...)",
            ['[Authorize(Policy="admin")]'],
            ["Policy=", "admin"],
            "policy",
        ),
        ex(
            "Read user name",
            "Leer nombre de usuario",
            "读取用户名",
            ["return User.Identity?.Name;"],
            ["User.Identity", "Name"],
            "name",
        ),
        ex(
            "Read a claim",
            "Leer un claim",
            "读取 claim",
            ['User.FindFirst("sub")?.Value;'],
            ["FindFirst", "sub"],
            "claim",
        ),
        ex(
            "RequireClaim policy",
            "Policy RequireClaim",
            "RequireClaim policy",
            ['builder.Services.AddAuthorization(o => o.AddPolicy("scope", p => p.RequireClaim("scope", "todo.read")));'],
            ["RequireClaim", "todo.read"],
            "claim",
        ),
        ex(
            "Fallback policy",
            "Fallback policy",
            "Fallback policy",
            [
                "o.FallbackPolicy = new AuthorizationPolicyBuilder()",
                "  .RequireAuthenticatedUser()",
                "  .Build();",
            ],
            ["FallbackPolicy", "RequireAuthenticatedUser", "Build"],
            "fallback",
        ),
        ex(
            "Authorize scheme",
            "Authorize scheme",
            "认证 scheme",
            ['[Authorize(AuthenticationSchemes = "Bearer")]'],
            ["AuthenticationSchemes", "Bearer"],
            "scheme",
        ),
        ex(
            "Challenge: protect admin group",
            "Desafio: proteger admin group",
            "挑战：保护 admin 分组",
            ['app.MapGroup("/admin").RequireAuthorization("admin");'],
            ["MapGroup", "/admin", "RequireAuthorization"],
            "admin",
        ),
    ],
    "aspnetSwagger": [
        ex(
            "AddSwaggerGen",
            "AddSwaggerGen",
            "AddSwaggerGen",
            ["builder.Services.AddSwaggerGen();"],
            ["AddSwaggerGen"],
            "swagger",
        ),
        ex(
            "UseSwagger",
            "UseSwagger",
            "UseSwagger",
            ["app.UseSwagger();"],
            ["UseSwagger"],
            "swagger",
        ),
        ex(
            "UseSwaggerUI",
            "UseSwaggerUI",
            "UseSwaggerUI",
            ["app.UseSwaggerUI();"],
            ["UseSwaggerUI"],
            "ui",
        ),
        ex(
            "MapOpenApi",
            "MapOpenApi",
            "MapOpenApi",
            ["app.MapOpenApi();"],
            ["MapOpenApi"],
            "openapi",
        ),
        ex(
            "SwaggerDoc v1",
            "SwaggerDoc v1",
            "SwaggerDoc v1",
            [
                "builder.Services.AddSwaggerGen(c =>",
                "  c.SwaggerDoc(\"v1\", new OpenApiInfo { Title = \"Todo API\" }));",
            ],
            ["SwaggerDoc", "OpenApiInfo", "Title"],
            "doc",
        ),
        ex(
            "Add XML comments",
            "Anadir XML comments",
            "添加 XML 注释",
            ['builder.Services.AddSwaggerGen(c => c.IncludeXmlComments("MyApi.xml"));'],
            ["IncludeXmlComments", "MyApi.xml"],
            "xml",
        ),
        ex(
            "Swagger endpoint",
            "Endpoint Swagger",
            "Swagger 端点",
            ['app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "v1"));'],
            ["SwaggerEndpoint", "/swagger/v1/swagger.json"],
            "endpoint",
        ),
        ex(
            "Describe responses",
            "Describir respuestas",
            "描述响应",
            ["[ProducesResponseType(StatusCodes.Status201Created)]"],
            ["Status201Created", "ProducesResponseType"],
            "201",
        ),
        ex(
            "Tag endpoints",
            "Tag de endpoints",
            "端点打 tag",
            ['app.MapGet("/todos", () => "list").WithTags("Todos");'],
            ["WithTags", "Todos"],
            "tag",
        ),
        ex(
            "OpenAPI security scheme",
            "Security scheme OpenAPI",
            "OpenAPI 安全方案",
            [
                "c.AddSecurityDefinition(\"Bearer\", new OpenApiSecurityScheme",
                "{",
                "  Type = SecuritySchemeType.Http,",
                "  Scheme = \"bearer\"",
                "});",
            ],
            ["AddSecurityDefinition", "OpenApiSecurityScheme", "Scheme"],
            "security",
        ),
        ex(
            "Add security requirement",
            "Security requirement",
            "安全要求",
            ["c.AddSecurityRequirement(new OpenApiSecurityRequirement());"],
            ["AddSecurityRequirement", "OpenApiSecurityRequirement"],
            "requirement",
        ),
        ex(
            "WithOpenApi on endpoint",
            "WithOpenApi en endpoint",
            "端点 WithOpenApi",
            ['app.MapGet("/ping", () => "pong").WithOpenApi();'],
            ["WithOpenApi", "MapGet"],
            "openapi",
        ),
        ex(
            "Group with tags",
            "Grupo con tags",
            "分组 tags",
            ['app.MapGroup("/api").WithTags("API");'],
            ["MapGroup", "WithTags", "API"],
            "group",
        ),
        ex(
            "Challenge: docs + tags",
            "Desafio: docs + tags",
            "挑战：文档 + tags",
            [
                "builder.Services.AddSwaggerGen();",
                "app.UseSwagger();",
                "app.UseSwaggerUI();",
                'app.MapGet("/todos", () => "list").WithTags("Todos").WithOpenApi();',
            ],
            ["AddSwaggerGen", "UseSwaggerUI", "WithTags"],
            "docs",
        ),
        ex(
            "Challenge: describe API",
            "Desafio: describir API",
            "挑战：描述 API",
            [
                "builder.Services.AddEndpointsApiExplorer();",
                "builder.Services.AddSwaggerGen();",
                "app.UseSwagger();",
                "app.UseSwaggerUI();",
                'app.MapGet("/health", () => "ok").WithOpenApi();',
            ],
            ["AddSwaggerGen", "UseSwagger", "WithOpenApi"],
            "api",
        ),
    ],
    "aspnetTestingDeploy": [
        ex(
            "WebApplicationFactory skeleton",
            "Esqueleto WebApplicationFactory",
            "WebApplicationFactory 骨架",
            [
                "public class ApiFactory : WebApplicationFactory<Program>",
                "{",
                "}",
            ],
            ["WebApplicationFactory<Program>", "ApiFactory"],
            "factory",
        ),
        ex(
            "CreateClient",
            "CreateClient",
            "CreateClient",
            ["var client = factory.CreateClient();"],
            ["CreateClient"],
            "client",
        ),
        ex(
            "GET /health",
            "GET /health",
            "GET /health",
            ['var res = await client.GetAsync("/health");'],
            ["GetAsync", "/health"],
            "200",
        ),
        ex(
            "Assert status code",
            "Assert del status code",
            "断言状态码",
            ["Assert.Equal(HttpStatusCode.OK, res.StatusCode);"],
            ["Assert.Equal", "HttpStatusCode.OK"],
            "ok",
        ),
        ex(
            "Run dotnet test",
            "Ejecutar dotnet test",
            "运行 dotnet test",
            ["dotnet test"],
            ["dotnet test"],
            "tests",
        ),
        ex(
            "ASPNETCORE_ENVIRONMENT",
            "ASPNETCORE_ENVIRONMENT",
            "ASPNETCORE_ENVIRONMENT",
            ["ASPNETCORE_ENVIRONMENT=Production"],
            ["ASPNETCORE_ENVIRONMENT", "Production"],
            "env",
        ),
        ex(
            "dotnet publish",
            "dotnet publish",
            "dotnet publish",
            ["dotnet publish -c Release -o out"],
            ["dotnet publish", "Release", "-o out"],
            "publish",
        ),
        ex(
            "DOTNET_URLS",
            "DOTNET_URLS",
            "DOTNET_URLS",
            ["DOTNET_URLS=http://0.0.0.0:8080"],
            ["DOTNET_URLS", "8080"],
            "urls",
        ),
        ex(
            "ForwardedHeaders in prod",
            "ForwardedHeaders en prod",
            "生产 ForwardedHeaders",
            ["app.UseForwardedHeaders();"],
            ["UseForwardedHeaders"],
            "proxy",
        ),
        ex(
            "Add a readiness endpoint",
            "Anadir endpoint readiness",
            "添加 readiness 端点",
            ['app.MapGet("/ready", () => Results.Ok("ready"));'],
            ["/ready", "Results.Ok"],
            "ready",
        ),
        ex(
            "Docker base image",
            "Imagen base Docker",
            "Docker 基础镜像",
            ["FROM mcr.microsoft.com/dotnet/aspnet:8.0"],
            ["FROM", "dotnet/aspnet:8.0"],
            "docker",
        ),
        ex(
            "Expose port",
            "Exponer puerto",
            "暴露端口",
            ["EXPOSE 8080"],
            ["EXPOSE", "8080"],
            "port",
        ),
        ex(
            "Health check endpoint",
            "Endpoint health check",
            "健康检查端点",
            ['app.MapHealthChecks("/health");'],
            ["MapHealthChecks", "/health"],
            "health",
        ),
        ex(
            "Challenge: integration test",
            "Desafio: test de integracion",
            "挑战：集成测试",
            [
                "var client = factory.CreateClient();",
                'var res = await client.GetAsync("/health");',
                "Assert.Equal(HttpStatusCode.OK, res.StatusCode);",
            ],
            ["CreateClient", "GetAsync", "Assert.Equal"],
            "test",
        ),
        ex(
            "Challenge: deploy checklist",
            "Desafio: checklist deploy",
            "挑战：部署清单",
            [
                "dotnet test",
                "dotnet publish -c Release -o out",
                "DOTNET_URLS=http://0.0.0.0:8080",
                "ASPNETCORE_ENVIRONMENT=Production",
            ],
            ["dotnet test", "dotnet publish", "DOTNET_URLS"],
            "deploy",
        ),
    ],
}


def main() -> None:
    # Sanity checks
    if len(CATEGORIES) != 15:
        raise SystemExit("CATEGORIES must be 15")
    for cat_dir, _en, _es, _zh in CATEGORIES:
        if cat_dir not in EXERCISES:
            raise SystemExit(f"Missing EXERCISES for {cat_dir}")
        if len(EXERCISES[cat_dir]) != 15:
            raise SystemExit(f"{cat_dir} must have 15 exercises")

    # Prevent double insert
    for lang in ["en", "es", "zh"]:
        arb_path = Path(f"lib/l10n/app_{lang}.arb")
        if arb_path.exists() and f'"{LANG_PREFIX}CorrectTitle"' in arb_path.read_text(encoding="utf-8"):
            raise SystemExit(f"{LANG_PREFIX} already exists in {arb_path}. Remove keys first if regenerating.")

    arb_entries: dict[str, list[str]] = {"en": [], "es": [], "zh": []}

    # Global correct dialog texts
    for lang in ["en", "es", "zh"]:
        if lang == "en":
            title = "Correct ✅"
            expl = "Nice! Your ASP.NET snippet shows the key pieces. Keep going."
        elif lang == "es":
            title = "Correcto ✅"
            expl = "Bien! Tu snippet de ASP.NET tiene las piezas clave. Sigue subiendo nivel."
        else:
            title = "正确 ✅"
            expl = "很好！你的 ASP.NET 片段包含关键点，继续冲。"

        arb_entries[lang].append(arb_line(f"{LANG_PREFIX}CorrectTitle", encode_braces(escape_icu(title))))
        arb_entries[lang].append(
            arb_line(f"{LANG_PREFIX}CorrectExplanation", encode_braces(escape_icu(expl)))
        )

    # Category info texts
    for idx, (cat_dir, en_name, es_name, zh_name) in enumerate(CATEGORIES):
        for lang, name in [("en", en_name), ("es", es_name), ("zh", zh_name)]:
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

        # Model lists
        for lang in ["en", "es", "zh"]:
            write(
                Path(
                    f"lib/data/courses/ASPNet/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"
                ),
                build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/aspnet/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB entries
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            write(
                Path(f"lib/Screens/Courses/aspnet/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"),
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

                # Example code lines (max 6)
                for li in range(6):
                    line = code_lines[li] if li < len(code_lines) else ""
                    items[f"{LANG_PREFIX}{ex_id}ExampleCode{li+1}"] = line

                for k, v in items.items():
                    arb_entries[lang].append(arb_line(k, prep(v)))

    # CoursesMainModelList (EN/ES/ZH)
    for lang in ["en", "es", "zh"]:
        write(
            Path(f"lib/data/mainModel/ASPNet/CoursesMainModelList{lang.upper()}.dart"),
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
