#!/usr/bin/env python3
"""Generate Spring course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

This repository uses ARB strings with '@' and '&' as stand-ins for '{' and '}'
(to keep ICU happy). Exercise screens call _t() to decode them.

IMPORTANT:
- Avoid literal '{' and '}' in ARB values (we encode them via encode_braces()).
- Avoid literal '@' in localized strings unless it's coming from brace-encoding.
  The app decodes '@' -> '{' at runtime.
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "spring"
START_ID = 4200

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("springBasics", "Spring Boot Basics", "Fundamentos Spring Boot", "Spring Boot 基础"),
    ("springConfig", "Configuration & Properties", "Configuracion y Properties", "配置与属性"),
    ("springDI", "Beans & Dependency Injection", "Beans e Inyeccion", "Bean 与依赖注入"),
    ("springControllers", "REST Controllers", "Controladores REST", "REST 控制器"),
    ("springRequests", "Requests & Validation", "Requests y Validacion", "请求与校验"),
    ("springServices", "Services & Layers", "Servicios y Capas", "服务层与分层"),
    ("springEntities", "JPA Entities", "Entidades JPA", "JPA 实体"),
    ("springRepositories", "Repositories & Queries", "Repositorios y Consultas", "仓库与查询"),
    ("springTransactions", "Transactions", "Transacciones", "事务"),
    ("springSecurity", "Security Basics", "Seguridad Basica", "安全基础"),
    ("springExceptions", "Exception Handling", "Manejo de Excepciones", "异常处理"),
    ("springTesting", "Testing", "Pruebas", "测试"),
    ("springActuator", "Actuator & Monitoring", "Actuator y Monitorizacion", "监控与 Actuator"),
    ("springProfiles", "Profiles & Logging", "Profiles y Logging", "环境与日志"),
    ("springDeploy", "Deployment & Docker", "Deploy y Docker", "部署与 Docker"),
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
    return s.replace("\\", "\\\\").replace('"', "\\\"").replace("\n", "\\n")


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
    return {"en": "More info", "es": "Mas info", "zh": "更多信息"}[lang]


def hint_title(lang: str, idx: int) -> str:
    if lang == "en":
        return f"Hint {idx}"
    if lang == "es":
        return f"Pista {idx}"
    return f"提示 {idx}"


def solution_title(lang: str) -> str:
    return {"en": "Solution", "es": "Solucion", "zh": "答案"}[lang]


def example_title(lang: str) -> str:
    return {"en": "Example", "es": "Ejemplo", "zh": "示例"}[lang]


def enter_code_hint(lang: str) -> str:
    return {
        "en": "Write your Spring code here...",
        "es": "Escribe tu codigo Spring aqui...",
        "zh": "在这里写下你的 Spring 代码...",
    }[lang]


def output_label(lang: str, text: str) -> str:
    if lang == "en":
        return f"Output: {text}"
    if lang == "es":
        return f"Salida: {text}"
    return f"输出: {text}"


# Each exercise spec:
# (topic_en, topic_es, topic_zh, code_lines[], must_tokens[], output_text)
EXERCISES: dict[str, list[tuple[str, str, str, list[str], list[str], str]]] = {
    "springBasics": [
        (
            "Bootstrap a Spring Boot project",
            "Crear un proyecto Spring Boot",
            "创建 Spring Boot 项目",
            ["spring init --dependencies=web demo"],
            ["spring", "init", "--dependencies=web"],
            "Project created.",
        ),
        (
            "Run with Maven wrapper",
            "Arrancar con Maven wrapper",
            "用 Maven wrapper 运行",
            ["./mvnw spring-boot:run"],
            ["./mvnw", "spring-boot:run"],
            "App running.",
        ),
        (
            "Main entry: SpringApplication.run",
            "Entrada: SpringApplication.run",
            "入口：SpringApplication.run",
            [
                "public class DemoApplication {",
                "  public static void main(String[] args) {",
                "    SpringApplication.run(DemoApplication.class, args);",
                "  }",
                "}",
            ],
            ["SpringApplication.run", "main", "DemoApplication.class"],
            "Boot starts.",
        ),
        (
            "Change the port",
            "Cambiar el puerto",
            "修改端口",
            ["server.port=8081"],
            ["server.port"],
            "Port changed.",
        ),
        (
            "Name the app",
            "Poner nombre a la app",
            "设置应用名",
            ["spring.application.name=inventory"],
            ["spring.application.name"],
            "Name set.",
        ),
        (
            "Add web starter dependency",
            "Agregar dependencia web starter",
            "添加 web starter 依赖",
            ["<artifactId>spring-boot-starter-web</artifactId>"],
            ["spring-boot-starter-web"],
            "Web starter added.",
        ),
        (
            "Add actuator dependency",
            "Agregar actuator",
            "添加 actuator",
            ["<artifactId>spring-boot-starter-actuator</artifactId>"],
            ["spring-boot-starter-actuator"],
            "Actuator ready.",
        ),
        (
            "Log a startup message",
            "Log en el arranque",
            "启动日志",
            [
                "private static final Logger log =",
                "  LoggerFactory.getLogger(DemoApplication.class);",
                "log.info(\"ready\");",
            ],
            ["LoggerFactory.getLogger", "log.info"],
            "ready",
        ),
        (
            "Custom banner location",
            "Ubicacion de banner",
            "自定义 banner 位置",
            ["banner.location=classpath:banner.txt"],
            ["banner.location"],
            "Banner loaded.",
        ),
        (
            "Disable the banner",
            "Apagar banner",
            "关闭 banner",
            ["spring.main.banner-mode=off"],
            ["banner-mode", "off"],
            "Banner off.",
        ),
        (
            "Set active profile",
            "Activar profile",
            "启用 profile",
            ["spring.profiles.active=dev"],
            ["spring.profiles.active"],
            "Profile active.",
        ),
        (
            "Build a jar",
            "Construir jar",
            "构建 jar",
            ["./mvnw package"],
            ["./mvnw", "package"],
            "Jar built.",
        ),
        (
            "Run the jar",
            "Ejecutar jar",
            "运行 jar",
            ["java -jar target/app.jar"],
            ["java -jar", "target"],
            "App started.",
        ),
        (
            "Define app version",
            "Definir version de app",
            "定义应用版本",
            ["app.version=1.0.0"],
            ["app.version"],
            "Version set.",
        ),
        (
            "Maven plugin: spring-boot-maven-plugin",
            "Plugin: spring-boot-maven-plugin",
            "插件：spring-boot-maven-plugin",
            ["<artifactId>spring-boot-maven-plugin</artifactId>"],
            ["spring-boot-maven-plugin"],
            "Plugin configured.",
        ),
    ],
    "springConfig": [
        (
            "Switch to YAML",
            "Pasar a YAML",
            "使用 YAML",
            [
                "server:",
                "  port: 8080",
            ],
            ["server:", "port:"],
            "YAML read.",
        ),
        (
            "Nested custom config flag",
            "Flag de config anidada",
            "嵌套自定义开关",
            [
                "app:",
                "  features:",
                "    checkout: true",
            ],
            ["features:", "checkout:"],
            "Flag set.",
        ),
        (
            "Set context path",
            "Cambiar context-path",
            "设置 context-path",
            ["server.servlet.context-path=/api"],
            ["context-path", "/api"],
            "Prefix applied.",
        ),
        (
            "Enable gzip compression",
            "Activar compresion gzip",
            "启用 gzip 压缩",
            ["server.compression.enabled=true"],
            ["compression.enabled", "true"],
            "Compression on.",
        ),
        (
            "Datasource URL",
            "URL de datasource",
            "数据源 URL",
            ["spring.datasource.url=jdbc:postgresql://localhost:5432/app"],
            ["spring.datasource.url", "jdbc:postgresql"],
            "DB url set.",
        ),
        (
            "Datasource user",
            "Usuario de datasource",
            "数据源用户",
            ["spring.datasource.username=appuser"],
            ["spring.datasource.username"],
            "DB user set.",
        ),
        (
            "Datasource password",
            "Password de datasource",
            "数据源密码",
            ["spring.datasource.password=secret"],
            ["spring.datasource.password"],
            "DB password set.",
        ),
        (
            "JPA ddl-auto update",
            "JPA ddl-auto update",
            "JPA ddl-auto update",
            ["spring.jpa.hibernate.ddl-auto=update"],
            ["ddl-auto", "update"],
            "Schema updates.",
        ),
        (
            "Show SQL in logs",
            "Mostrar SQL en logs",
            "在日志里显示 SQL",
            ["spring.jpa.show-sql=true"],
            ["show-sql", "true"],
            "SQL printed.",
        ),
        (
            "Pretty JSON output",
            "JSON bonito",
            "美化 JSON 输出",
            ["spring.jackson.serialization.indent_output=true"],
            ["indent_output", "true"],
            "Indented JSON.",
        ),
        (
            "Limit upload size",
            "Limitar tamano de upload",
            "限制上传大小",
            ["spring.servlet.multipart.max-file-size=10MB"],
            ["max-file-size", "10MB"],
            "Upload limited.",
        ),
        (
            "Import extra properties",
            "Importar properties extra",
            "导入额外 properties",
            ["spring.config.import=classpath:extra.properties"],
            ["spring.config.import", "extra.properties"],
            "Imported.",
        ),
        (
            "Cache static resources",
            "Cachear recursos static",
            "缓存静态资源",
            ["spring.web.resources.cache.period=3600"],
            ["cache.period", "3600"],
            "Cache on.",
        ),
        (
            "Expose actuator endpoints",
            "Exponer endpoints actuator",
            "暴露 actuator 端点",
            ["management.endpoints.web.exposure.include=health,info"],
            ["exposure.include", "health,info"],
            "Actuator exposed.",
        ),
        (
            "Package log level",
            "Log level por paquete",
            "包日志级别",
            ["logging.level.com.example=INFO"],
            ["logging.level", "com.example", "INFO"],
            "Package logging.",
        ),
    ],
    "springDI": [
        (
            "Create a service class",
            "Crear una clase Service",
            "创建 Service 类",
            [
                "public class PriceService {",
                "  public int total(int a, int b) {",
                "    return a + b;",
                "  }",
                "}",
            ],
            ["class PriceService", "return a + b"],
            "Total computed.",
        ),
        (
            "Constructor injection",
            "Inyeccion por constructor",
            "构造函数注入",
            [
                "private final PriceService prices;",
                "public CheckoutService(PriceService prices) {",
                "  this.prices = prices;",
                "}",
            ],
            ["final PriceService", "this.prices"],
            "Injected.",
        ),
        (
            "Manual wiring with new",
            "Cableado manual con new",
            "用 new 手动组装",
            [
                "PriceService prices = new PriceService();",
                "CheckoutService c = new CheckoutService(prices);",
            ],
            ["new PriceService", "new CheckoutService"],
            "Wired.",
        ),
        (
            "Interface + implementation",
            "Interfaz e implementacion",
            "接口与实现",
            [
                "public interface Clock {",
                "  long now();",
                "}",
                "public class SystemClock implements Clock {",
                "  public long now() { return System.currentTimeMillis(); }",
                "}",
            ],
            ["interface Clock", "implements Clock", "System.currentTimeMillis"],
            "Time provided.",
        ),
        (
            "Fake dependency for tests",
            "Fake para tests",
            "测试用 fake 依赖",
            [
                "public class FakeClock implements Clock {",
                "  public long now() { return 123L; }",
                "}",
            ],
            ["class FakeClock", "return 123L"],
            "Deterministic time.",
        ),
        (
            "Read a property via Environment",
            "Leer property con Environment",
            "用 Environment 读取配置",
            ["String mode = env.getProperty(\"spring.profiles.active\");"],
            ["env.getProperty", "spring.profiles.active"],
            "Property read.",
        ),
        (
            "Inject a List of implementations",
            "Inyectar una lista de implementaciones",
            "注入实现列表",
            [
                "private final List<Discount> discounts;",
                "public CheckoutService(List<Discount> discounts) {",
                "  this.discounts = discounts;",
                "}",
            ],
            ["List<Discount>", "this.discounts"],
            "Multiple beans.",
        ),
        (
            "Inject a Map of named beans",
            "Inyectar un Map de beans",
            "注入命名 bean 的 Map",
            [
                "public CheckoutService(Map<String, Discount> discounts) {",
                "  this.discounts = discounts;",
                "}",
            ],
            ["Map<String, Discount>", "this.discounts"],
            "Named beans.",
        ),
        (
            "Optional dependency",
            "Dependencia opcional",
            "可选依赖",
            [
                "public CheckoutService(Optional<CouponService> coupons) {",
                "  this.coupons = coupons.orElse(null);",
                "}",
            ],
            ["Optional<CouponService>", "orElse"],
            "Optional DI.",
        ),
        (
            "Simple bean factory method",
            "Metodo fabrica de bean",
            "简单 bean 工厂方法",
            [
                "public class AppConfig {",
                "  public PriceService priceService() {",
                "    return new PriceService();",
                "  }",
                "}",
            ],
            ["priceService()", "new PriceService"],
            "Bean created.",
        ),
        (
            "ApplicationContext.getBean",
            "ApplicationContext.getBean",
            "ApplicationContext.getBean",
            [
                "Clock clock = context.getBean(Clock.class);",
                "long t = clock.now();",
            ],
            ["getBean", "Clock.class"],
            "Bean fetched.",
        ),
        (
            "Prefer final fields",
            "Preferir campos final",
            "优先使用 final 字段",
            ["private final UserRepository repo;"],
            ["private final", "UserRepository"],
            "Immutable reference.",
        ),
        (
            "Service + Repository layers",
            "Capas Service y Repository",
            "Service 与 Repository 分层",
            [
                "public class UserService {",
                "  private final UserRepository repo;",
                "  public UserService(UserRepository repo) { this.repo = repo; }",
                "}",
            ],
            ["class UserService", "UserRepository", "this.repo"],
            "Layered.",
        ),
        (
            "Challenge: wire two services",
            "Desafio: conectar dos servicios",
            "挑战：连接两个服务",
            [
                "EmailService email = new EmailService();",
                "UserService users = new UserService(repo);",
                "email.send(\"ok\");",
            ],
            ["new EmailService", "new UserService", "send(\"ok\")"],
            "Composed.",
        ),
        (
            "Constructor injection with record DTO",
            "Inyeccion con DTO record",
            "用 record DTO 做注入输入",
            ["public record UserDto(long id, String name) {}"],
            ["record UserDto", "String name"],
            "DTO ready.",
        ),
    ],
    "springControllers": [
        (
            "Create a REST controller",
            "Crear un controlador REST",
            "创建 REST 控制器",
            [
                "RestController",
                "public class HelloController {",
                "  GetMapping(\"/hello\")",
                "  public String hello() { return \"hi\"; }",
                "}",
            ],
            ["RestController", "GetMapping", "\"/hello\""],
            "hi",
        ),
        (
            "Path variable",
            "Path variable",
            "路径参数",
            [
                "GetMapping(\"/users/{id}\")",
                "public String one(PathVariable long id) {",
                "  return \"id=\" + id;",
                "}",
            ],
            ["PathVariable", "{id}", "return"],
            "id=1",
        ),
        (
            "Query param",
            "Query param",
            "查询参数",
            [
                "GetMapping(\"/search\")",
                "public String search(RequestParam String q) {",
                "  return q;",
                "}",
            ],
            ["RequestParam", "q", "return q"],
            "ok",
        ),
        (
            "Return ResponseEntity",
            "Devolver ResponseEntity",
            "返回 ResponseEntity",
            ["return ResponseEntity.ok(\"OK\");"],
            ["ResponseEntity.ok"],
            "200 OK",
        ),
        (
            "Return 201 CREATED",
            "Devolver 201 CREATED",
            "返回 201 CREATED",
            ["return ResponseEntity.status(HttpStatus.CREATED).build();"],
            ["HttpStatus.CREATED", "status("],
            "201 Created",
        ),
        (
            "POST with request body DTO",
            "POST con DTO en body",
            "POST 请求体 DTO",
            [
                "PostMapping(\"/users\")",
                "public void create(RequestBody UserDto dto) {",
                "  service.create(dto);",
                "}",
            ],
            ["PostMapping", "RequestBody", "UserDto"],
            "Created.",
        ),
        (
            "PUT update endpoint",
            "PUT para actualizar",
            "PUT 更新接口",
            [
                "PutMapping(\"/users/{id}\")",
                "public void update(PathVariable long id, RequestBody UserDto dto) {",
                "  service.update(id, dto);",
                "}",
            ],
            ["PutMapping", "update(id", "PathVariable"],
            "Updated.",
        ),
        (
            "DELETE endpoint",
            "DELETE endpoint",
            "DELETE 接口",
            [
                "DeleteMapping(\"/users/{id}\")",
                "public void delete(PathVariable long id) {",
                "  service.delete(id);",
                "}",
            ],
            ["DeleteMapping", "service.delete"],
            "Deleted.",
        ),
        (
            "Controller base path",
            "Base path del controlador",
            "控制器基础路径",
            [
                "RequestMapping(\"/api\")",
                "public class ApiController {",
                "}",
            ],
            ["RequestMapping", "\"/api\""],
            "/api",
        ),
        (
            "Return a list",
            "Devolver una lista",
            "返回列表",
            ["public List<UserDto> all() { return service.all(); }"],
            ["List<UserDto>", "service.all"],
            "List returned.",
        ),
        (
            "Custom header read",
            "Leer header",
            "读取 header",
            ["public String who(RequestHeader(\"X-User\") String user) { return user; }"],
            ["RequestHeader", "X-User"],
            "Header read.",
        ),
        (
            "Status code via annotation name",
            "Status code via ResponseStatus",
            "用 ResponseStatus 设置状态码",
            ["ResponseStatus(HttpStatus.NO_CONTENT)"],
            ["ResponseStatus", "NO_CONTENT"],
            "204 No Content",
        ),
        (
            "Consumes/produces",
            "Consumes/produces",
            "Consumes/produces",
            ["PostMapping(value=\"/events\", consumes=\"application/json\")"],
            ["consumes", "application/json"],
            "JSON accepted.",
        ),
        (
            "Pagination params",
            "Params de paginacion",
            "分页参数",
            [
                "public List<UserDto> page(RequestParam int page, RequestParam int size) {",
                "  return service.page(page, size);",
                "}",
            ],
            ["RequestParam int page", "RequestParam int size"],
            "Paged.",
        ),
        (
            "Challenge: tiny CRUD skeleton",
            "Desafio: CRUD mini",
            "挑战：迷你 CRUD",
            [
                "GetMapping(\"/items\")",
                "PostMapping(\"/items\")",
                "PutMapping(\"/items/{id}\")",
                "DeleteMapping(\"/items/{id}\")",
            ],
            ["GetMapping", "PostMapping", "DeleteMapping"],
            "CRUD ready.",
        ),
    ],
    "springRequests": [
        (
            "DTO with validation hints",
            "DTO con validacion",
            "带校验的 DTO",
            [
                "public class SignupDto {",
                "  NotBlank",
                "  public String email;",
                "}",
            ],
            ["SignupDto", "NotBlank", "String email"],
            "Validated.",
        ),
        (
            "Validate request body",
            "Validar request body",
            "校验请求体",
            ["public void create(Valid RequestBody SignupDto dto) {}"],
            ["Valid", "RequestBody", "SignupDto"],
            "Validated body.",
        ),
        (
            "BindingResult check",
            "Comprobar BindingResult",
            "检查 BindingResult",
            ["if (result.hasErrors()) { return; }"],
            ["result.hasErrors"],
            "Errors handled.",
        ),
        (
            "Custom error message",
            "Mensaje de error custom",
            "自定义错误信息",
            ["throw new IllegalArgumentException(\"bad input\");"],
            ["IllegalArgumentException", "bad input"],
            "400",
        ),
        (
            "Controller method returns DTO",
            "Devolver DTO",
            "返回 DTO",
            ["public UserDto me() { return new UserDto(1L, \"Ana\"); }"],
            ["return new UserDto", "1L"],
            "DTO returned.",
        ),
        (
            "Convert String to int param",
            "Convertir param a int",
            "把参数转成 int",
            ["public int add(RequestParam int a, RequestParam int b) { return a + b; }"],
            ["RequestParam int a", "a + b"],
            "Sum ok.",
        ),
        (
            "Default param value",
            "Valor por defecto",
            "默认参数值",
            ["RequestParam(defaultValue=\"10\") int size"],
            ["defaultValue", "\"10\""],
            "Default used.",
        ),
        (
            "Optional query param",
            "Query param opcional",
            "可选查询参数",
            ["public String q(Optional<String> q) { return q.orElse(\"\"); }"],
            ["Optional<String>", "orElse"],
            "Optional ok.",
        ),
        (
            "Request header to locale",
            "Header a locale",
            "用 header 决定 locale",
            ["public String lang(RequestHeader(\"Accept-Language\") String lang) { return lang; }"],
            ["Accept-Language", "RequestHeader"],
            "Locale read.",
        ),
        (
            "Multipart file param",
            "Parametro MultipartFile",
            "MultipartFile 参数",
            ["public void upload(MultipartFile file) {}"],
            ["MultipartFile", "upload"],
            "Uploaded.",
        ),
        (
            "Return 422 for validation",
            "Devolver 422 por validacion",
            "校验失败返回 422",
            ["return ResponseEntity.unprocessableEntity().build();"],
            ["unprocessableEntity"],
            "422",
        ),
        (
            "Parse JSON field manually",
            "Leer campo JSON a mano",
            "手动读取 JSON 字段",
            ["String email = dto.email;"],
            ["dto.email"],
            "Field read.",
        ),
        (
            "Reject empty string",
            "Rechazar string vacio",
            "拒绝空字符串",
            ["if (q.trim().isEmpty()) { return; }"],
            ["trim().isEmpty"],
            "Rejected.",
        ),
        (
            "Challenge: validate + return 400",
            "Desafio: validar y 400",
            "挑战：校验并返回 400",
            ["if (result.hasErrors()) return ResponseEntity.badRequest().build();"],
            ["badRequest", "hasErrors"],
            "400",
        ),
        (
            "DTO record",
            "DTO record",
            "DTO record",
            ["public record LoginDto(String user, String pass) {}"],
            ["record LoginDto", "String user"],
            "DTO ready.",
        ),
    ],
    "springServices": [
        (
            "Service method extracts logic",
            "Metodo Service extrae logica",
            "把逻辑抽到 Service",
            [
                "public int total(List<Integer> items) {",
                "  return items.stream().mapToInt(i -> i).sum();",
                "}",
            ],
            ["items.stream", "sum()"],
            "Sum.",
        ),
        (
            "Service calls repository",
            "Service llama a repository",
            "Service 调用 repository",
            ["return repo.findById(id).orElseThrow();"],
            ["repo.findById", "orElseThrow"],
            "Found.",
        ),
        (
            "Map entity to DTO",
            "Mapear entity a DTO",
            "把 entity 映射成 DTO",
            ["return new UserDto(u.getId(), u.getName());"],
            ["new UserDto", "getId()", "getName()"],
            "Mapped.",
        ),
        (
            "DTO to entity",
            "DTO a entity",
            "DTO 转 entity",
            [
                "User u = new User();",
                "u.setName(dto.name());",
            ],
            ["setName", "dto.name"],
            "Converted.",
        ),
        (
            "Business rule check",
            "Check de regla de negocio",
            "业务规则检查",
            ["if (price < 0) throw new IllegalStateException(\"bad\");"],
            ["price < 0", "IllegalStateException"],
            "Rule enforced.",
        ),
        (
            "Idempotent update",
            "Update idempotente",
            "幂等更新",
            ["if (Objects.equals(old, next)) return;"],
            ["Objects.equals", "return;"],
            "No-op.",
        ),
        (
            "Service transaction boundary",
            "Limite de transaccion",
            "事务边界",
            ["Transactional"],
            ["Transactional"],
            "Atomic.",
        ),
        (
            "Cache idea",
            "Idea de cache",
            "缓存思路",
            ["Cacheable(\"users\")"],
            ["Cacheable", "\"users\""],
            "Cached.",
        ),
        (
            "Retry idea",
            "Idea de reintento",
            "重试思路",
            ["Retryable(maxAttempts=3)"],
            ["Retryable", "maxAttempts"],
            "Retrying.",
        ),
        (
            "Timeout in service",
            "Timeout en service",
            "Service 超时",
            ["if (tookMs > 500) throw new RuntimeException(\"timeout\");"],
            ["tookMs", "timeout"],
            "Timeout.",
        ),
        (
            "Use Optional return",
            "Devolver Optional",
            "返回 Optional",
            ["public Optional<User> find(long id) { return repo.findById(id); }"],
            ["Optional<User>", "repo.findById"],
            "Optional.",
        ),
        (
            "Batch processing loop",
            "Loop batch",
            "批处理循环",
            ["for (User u : users) { service.process(u); }"],
            ["for (User u", "service.process"],
            "Processed.",
        ),
        (
            "Parallel stream caution",
            "Cuidado con parallel",
            "小心 parallel",
            ["users.parallelStream().forEach(service::process);"],
            ["parallelStream", "forEach"],
            "Parallel.",
        ),
        (
            "Challenge: service + DTO mapping",
            "Desafio: service + mapping",
            "挑战：Service + 映射",
            ["return users.stream().map(this::toDto).toList();"],
            ["stream().map", "toDto"],
            "List DTO.",
        ),
        (
            "Service unit test hint",
            "Hint de test unitario",
            "单元测试提示",
            ["assertEquals(2, service.total(List.of(1,1)));"],
            ["assertEquals", "List.of"],
            "Test green.",
        ),
    ],
    "springEntities": [
        (
            "Define an Entity",
            "Definir una Entity",
            "定义 Entity",
            [
                "Entity",
                "public class User {",
                "  Id",
                "  private Long id;",
                "}",
            ],
            ["Entity", "class User", "Id"],
            "Entity ready.",
        ),
        (
            "Generated id",
            "Id autogenerado",
            "自动生成 id",
            ["GeneratedValue", "private Long id;"],
            ["GeneratedValue", "Long id"],
            "ID generated.",
        ),
        (
            "Column constraints",
            "Constraints de columna",
            "列约束",
            ["Column(nullable=false, unique=true)", "private String email;"],
            ["Column(", "unique=true", "email"],
            "Constraints set.",
        ),
        (
            "Many-to-one relation",
            "Relacion many-to-one",
            "多对一关系",
            ["ManyToOne", "private Team team;"],
            ["ManyToOne", "Team"],
            "Relation.",
        ),
        (
            "One-to-many relation",
            "Relacion one-to-many",
            "一对多关系",
            ["OneToMany(mappedBy=\"team\")", "private List<User> users;"],
            ["OneToMany", "mappedBy", "List<User>"],
            "Relation.",
        ),
        (
            "Enum field",
            "Campo enum",
            "枚举字段",
            ["private Status status;"],
            ["Status", "status"],
            "Enum saved.",
        ),
        (
            "Timestamps",
            "Timestamps",
            "时间戳",
            ["private Instant createdAt;"],
            ["Instant", "createdAt"],
            "Timestamp.",
        ),
        (
            "Embeddable value object",
            "Value object embeddable",
            "可嵌入值对象",
            ["Embeddable", "public class Money {", "private BigDecimal amount;", "}"],
            ["Embeddable", "BigDecimal"],
            "Embedded.",
        ),
        (
            "Embedded in entity",
            "Embedded en entity",
            "在实体里嵌入",
            ["Embedded", "private Money price;"],
            ["Embedded", "Money"],
            "Embedded.",
        ),
        (
            "Index hint",
            "Hint de index",
            "索引提示",
            ["Index(name=\"idx_email\", columnList=\"email\")"],
            ["Index(", "columnList"],
            "Indexed.",
        ),
        (
            "Equals/hashCode",
            "Equals/hashCode",
            "equals/hashCode",
            ["public boolean equals(Object o) { return this == o; }"],
            ["equals(Object o)", "this == o"],
            "Equality.",
        ),
        (
            "ToString safe",
            "ToString seguro",
            "安全 toString",
            ["public String toString() { return \"User(\" + id + \")\"; }"],
            ["toString()", "\"User(\""],
            "Printed.",
        ),
        (
            "DTO projection idea",
            "Idea de proyeccion DTO",
            "DTO 投影思路",
            ["public record UserRow(Long id, String email) {}"],
            ["record UserRow", "String email"],
            "Projection.",
        ),
        (
            "Challenge: entity with relation",
            "Desafio: entity con relacion",
            "挑战：带关系的实体",
            ["Entity", "ManyToOne", "private Team team;"],
            ["Entity", "ManyToOne", "Team"],
            "Related.",
        ),
        (
            "Soft delete flag",
            "Flag de soft delete",
            "软删除标记",
            ["private boolean deleted;"],
            ["boolean deleted"],
            "Soft delete.",
        ),
    ],
    "springRepositories": [
        (
            "JpaRepository interface",
            "Interfaz JpaRepository",
            "JpaRepository 接口",
            ["public interface UserRepo extends JpaRepository<User, Long> {}"],
            ["extends JpaRepository", "User, Long"],
            "Repo ready.",
        ),
        (
            "findById",
            "findById",
            "findById",
            ["Optional<User> u = repo.findById(id);"],
            ["repo.findById", "Optional<User>"],
            "Found.",
        ),
        (
            "findAll",
            "findAll",
            "findAll",
            ["List<User> all = repo.findAll();"],
            ["repo.findAll", "List<User>"],
            "All users.",
        ),
        (
            "Derived query: findByEmail",
            "Query derivada: findByEmail",
            "派生查询：findByEmail",
            ["Optional<User> u = repo.findByEmail(email);"],
            ["findByEmail", "email"],
            "By email.",
        ),
        (
            "Derived query: findAllByStatus",
            "findAllByStatus",
            "findAllByStatus",
            ["List<User> u = repo.findAllByStatus(Status.ACTIVE);"],
            ["findAllByStatus", "Status.ACTIVE"],
            "Filtered.",
        ),
        (
            "Count query",
            "Count query",
            "Count 查询",
            ["long n = repo.count();"],
            ["repo.count"],
            "Counted.",
        ),
        (
            "Exists query",
            "Exists query",
            "Exists 查询",
            ["boolean ok = repo.existsByEmail(email);"],
            ["existsByEmail", "boolean ok"],
            "Exists.",
        ),
        (
            "Delete by id",
            "Borrar por id",
            "按 id 删除",
            ["repo.deleteById(id);"],
            ["deleteById"],
            "Deleted.",
        ),
        (
            "Save entity",
            "Guardar entity",
            "保存实体",
            ["repo.save(user);"],
            ["repo.save"],
            "Saved.",
        ),
        (
            "Paging query",
            "Paging query",
            "分页查询",
            ["Page<User> p = repo.findAll(PageRequest.of(0, 10));"],
            ["PageRequest.of", "Page<User>"],
            "Paged.",
        ),
        (
            "Sorting query",
            "Sorting query",
            "排序查询",
            ["repo.findAll(Sort.by(\"email\"));"],
            ["Sort.by", "\"email\""],
            "Sorted.",
        ),
        (
            "Custom query idea",
            "Idea de query custom",
            "自定义查询思路",
            ["Query(\"select u from User u\")"],
            ["Query(", "select u"],
            "Custom query.",
        ),
        (
            "Native query idea",
            "Idea de native query",
            "原生查询思路",
            ["Query(value=\"select * from users\", nativeQuery=true)"],
            ["nativeQuery=true", "select *"],
            "Native query.",
        ),
        (
            "Projection interface",
            "Proyeccion interface",
            "投影接口",
            ["public interface UserEmailOnly { String getEmail(); }"],
            ["getEmail()", "interface UserEmailOnly"],
            "Projected.",
        ),
        (
            "Challenge: derived query + sort",
            "Desafio: derivada + sort",
            "挑战：派生查询 + sort",
            ["repo.findAllByStatus(Status.ACTIVE, Sort.by(\"email\"));"],
            ["findAllByStatus", "Sort.by"],
            "Filtered+sorted.",
        ),
    ],
    "springTransactions": [
        (
            "Mark a method transactional",
            "Marcar metodo transactional",
            "标记 transactional 方法",
            ["Transactional", "public void transfer() {}"],
            ["Transactional", "transfer"],
            "Atomic.",
        ),
        (
            "Rollback on exception",
            "Rollback con excepcion",
            "异常回滚",
            ["throw new RuntimeException(\"fail\");"],
            ["RuntimeException", "fail"],
            "Rolled back.",
        ),
        (
            "Propagation REQUIRED",
            "Propagation REQUIRED",
            "传播 REQUIRED",
            ["Transactional(propagation=Propagation.REQUIRED)"],
            ["Propagation.REQUIRED"],
            "Required.",
        ),
        (
            "Propagation REQUIRES_NEW",
            "Propagation REQUIRES_NEW",
            "传播 REQUIRES_NEW",
            ["Transactional(propagation=Propagation.REQUIRES_NEW)"],
            ["Propagation.REQUIRES_NEW"],
            "New tx.",
        ),
        (
            "Read-only transaction",
            "Transaccion read-only",
            "只读事务",
            ["Transactional(readOnly=true)"],
            ["readOnly=true"],
            "Read-only.",
        ),
        (
            "Isolation level",
            "Isolation level",
            "隔离级别",
            ["Transactional(isolation=Isolation.READ_COMMITTED)"],
            ["Isolation.READ_COMMITTED"],
            "Isolated.",
        ),
        (
            "Timeout",
            "Timeout",
            "超时",
            ["Transactional(timeout=2)"],
            ["timeout=2"],
            "Timed out.",
        ),
        (
            "RollbackFor checked exception",
            "RollbackFor checked exception",
            "对受检异常回滚",
            ["Transactional(rollbackFor=IOException.class)"],
            ["rollbackFor", "IOException.class"],
            "RollbackFor.",
        ),
        (
            "NoRollbackFor idea",
            "Idea NoRollbackFor",
            "NoRollbackFor 思路",
            ["Transactional(noRollbackFor=IllegalArgumentException.class)"],
            ["noRollbackFor", "IllegalArgumentException.class"],
            "No rollback.",
        ),
        (
            "Transactional on class",
            "Transactional en clase",
            "类级别 transactional",
            ["Transactional", "public class BillingService {}"],
            ["class BillingService", "Transactional"],
            "Tx class.",
        ),
        (
            "Save two entities",
            "Guardar dos entities",
            "保存两个实体",
            ["repo.save(a);", "repo.save(b);"],
            ["repo.save(a)", "repo.save(b)"],
            "Both saved.",
        ),
        (
            "Fail after first save",
            "Fallar tras primer save",
            "第一次保存后失败",
            ["repo.save(a);", "throw new RuntimeException();"],
            ["repo.save(a)", "throw new RuntimeException"],
            "Rollback.",
        ),
        (
            "Transaction template idea",
            "Idea TransactionTemplate",
            "TransactionTemplate 思路",
            ["tx.execute(status -> service.run());"],
            ["tx.execute", "status ->"],
            "Templated.",
        ),
        (
            "Challenge: required + rollback",
            "Desafio: required + rollback",
            "挑战：required + rollback",
            ["Transactional(propagation=Propagation.REQUIRED)", "throw new RuntimeException(\"x\");"],
            ["Propagation.REQUIRED", "RuntimeException(\"x\")"],
            "Rollback.",
        ),
        (
            "Idempotent retry safe write",
            "Write idempotente",
            "幂等写入",
            ["if (repo.existsById(id)) return; repo.save(entity);"],
            ["existsById", "repo.save(entity)"],
            "Idempotent.",
        ),
    ],
    "springSecurity": [
        (
            "PasswordEncoder bean",
            "Bean PasswordEncoder",
            "PasswordEncoder bean",
            ["public PasswordEncoder encoder() { return new BCryptPasswordEncoder(); }"],
            ["BCryptPasswordEncoder", "PasswordEncoder"],
            "Encoder ready.",
        ),
        (
            "Basic auth idea",
            "Idea de basic auth",
            "Basic auth 思路",
            ["http.httpBasic();"],
            ["httpBasic"],
            "Basic auth.",
        ),
        (
            "Require authentication",
            "Requerir autenticacion",
            "需要认证",
            ["auth.anyRequest().authenticated();"],
            ["anyRequest()", "authenticated"],
            "Auth required.",
        ),
        (
            "Permit a public path",
            "Permitir path publico",
            "允许公开路径",
            ["auth.requestMatchers(\"/public/**\").permitAll();"],
            ["permitAll", "/public/**"],
            "Public path.",
        ),
        (
            "Role-based access",
            "Acceso por rol",
            "基于角色访问",
            ["auth.requestMatchers(\"/admin/**\").hasRole(\"ADMIN\");"],
            ["hasRole", "ADMIN"],
            "Role check.",
        ),
        (
            "Disable CSRF for API",
            "Desactivar CSRF para API",
            "为 API 关闭 CSRF",
            ["http.csrf(csrf -> csrf.disable());"],
            ["csrf", "disable()"],
            "CSRF disabled.",
        ),
        (
            "CORS enable",
            "Activar CORS",
            "启用 CORS",
            ["http.cors();"],
            ["cors()"],
            "CORS on.",
        ),
        (
            "SecurityFilterChain bean",
            "Bean SecurityFilterChain",
            "SecurityFilterChain bean",
            ["public SecurityFilterChain filterChain(HttpSecurity http) throws Exception { return http.build(); }"],
            ["SecurityFilterChain", "HttpSecurity", "http.build"],
            "Chain built.",
        ),
        (
            "Logout config",
            "Config logout",
            "配置 logout",
            ["http.logout(l -> l.logoutUrl(\"/logout\"));"],
            ["logoutUrl", "\"/logout\""],
            "Logout.",
        ),
        (
            "Session management stateless",
            "Sesion stateless",
            "无状态 session",
            ["session.sessionCreationPolicy(SessionCreationPolicy.STATELESS);"],
            ["STATELESS", "sessionCreationPolicy"],
            "Stateless.",
        ),
        (
            "Custom user details service",
            "UserDetailsService custom",
            "自定义 UserDetailsService",
            ["public UserDetails loadUserByUsername(String u) { return repo.findByEmail(u).orElseThrow(); }"],
            ["loadUserByUsername", "findByEmail"],
            "Loaded.",
        ),
        (
            "JWT header idea",
            "Idea de header JWT",
            "JWT header 思路",
            ["String token = request.getHeader(\"Authorization\");"],
            ["getHeader", "Authorization"],
            "Token read.",
        ),
        (
            "Fail with 401",
            "Fallar con 401",
            "返回 401",
            ["return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();"],
            ["HttpStatus.UNAUTHORIZED", "status("],
            "401",
        ),
        (
            "Challenge: public + admin rules",
            "Desafio: reglas public + admin",
            "挑战：public + admin 规则",
            ["permitAll()", "hasRole(\"ADMIN\")"],
            ["permitAll", "hasRole(\"ADMIN\")"],
            "Rules set.",
        ),
        (
            "Password check",
            "Check de password",
            "密码校验",
            ["if (!encoder.matches(raw, hash)) throw new RuntimeException();"],
            ["encoder.matches", "raw", "hash"],
            "Checked.",
        ),
    ],
    "springExceptions": [
        (
            "Throw ResponseStatusException",
            "Lanzar ResponseStatusException",
            "抛出 ResponseStatusException",
            ["throw new ResponseStatusException(HttpStatus.NOT_FOUND, \"User not found\");"],
            ["ResponseStatusException", "HttpStatus.NOT_FOUND"],
            "404",
        ),
        (
            "Global handler with ControllerAdvice",
            "Handler global con ControllerAdvice",
            "用 ControllerAdvice 做全局处理",
            ["ControllerAdvice", "public class Errors {}"],
            ["ControllerAdvice", "class Errors"],
            "Handled.",
        ),
        (
            "ExceptionHandler method",
            "Metodo ExceptionHandler",
            "ExceptionHandler 方法",
            ["ExceptionHandler(IllegalArgumentException.class)"],
            ["ExceptionHandler", "IllegalArgumentException.class"],
            "Handled.",
        ),
        (
            "Return problem details",
            "Devolver problem details",
            "返回 problem details",
            ["ProblemDetail p = ProblemDetail.forStatus(400);"],
            ["ProblemDetail.forStatus", "400"],
            "ProblemDetail.",
        ),
        (
            "Custom exception class",
            "Excepcion custom",
            "自定义异常类",
            ["public class NotFound extends RuntimeException {}"],
            ["class NotFound", "extends RuntimeException"],
            "Custom exception.",
        ),
        (
            "Map exception to 404",
            "Mapear excepcion a 404",
            "把异常映射成 404",
            ["return ResponseEntity.status(404).body(\"nope\");"],
            ["status(404)", "body(\"nope\")"],
            "404",
        ),
        (
            "Log error",
            "Log de error",
            "记录错误日志",
            ["log.error(\"boom\", e);"],
            ["log.error", "\"boom\""],
            "Logged.",
        ),
        (
            "Fallback response",
            "Respuesta fallback",
            "兜底响应",
            ["return ResponseEntity.internalServerError().build();"],
            ["internalServerError"],
            "500",
        ),
        (
            "Validation error response",
            "Respuesta de validacion",
            "校验错误响应",
            ["return ResponseEntity.unprocessableEntity().body(\"invalid\");"],
            ["unprocessableEntity", "invalid"],
            "422",
        ),
        (
            "Handle missing entity",
            "Manejar entity ausente",
            "处理实体不存在",
            ["repo.findById(id).orElseThrow(() -> new NotFound());"],
            ["orElseThrow", "new NotFound"],
            "404",
        ),
        (
            "Error DTO",
            "DTO de error",
            "错误 DTO",
            ["public record ErrorDto(String code, String message) {}"],
            ["record ErrorDto", "String message"],
            "Error DTO.",
        ),
        (
            "Return Error DTO",
            "Devolver Error DTO",
            "返回错误 DTO",
            ["return ResponseEntity.badRequest().body(new ErrorDto(\"E1\",\"bad\"));"],
            ["badRequest()", "new ErrorDto"],
            "400",
        ),
        (
            "Challenge: advice + handler",
            "Desafio: advice + handler",
            "挑战：advice + handler",
            ["ControllerAdvice", "ExceptionHandler"],
            ["ControllerAdvice", "ExceptionHandler"],
            "Handled.",
        ),
        (
            "Retry-safe error",
            "Error retry-safe",
            "可重试错误",
            ["return ResponseEntity.status(503).body(\"try later\");"],
            ["status(503)", "try later"],
            "503",
        ),
        (
            "Not null message",
            "Mensaje not null",
            "非空提示",
            ["Objects.requireNonNull(user, \"user is required\");"],
            ["requireNonNull", "required"],
            "Checked.",
        ),
    ],
    "springTesting": [
        (
            "JUnit assertion",
            "Assertion JUnit",
            "JUnit 断言",
            ["assertEquals(4, 2 + 2);"],
            ["assertEquals", "2 + 2"],
            "Green.",
        ),
        (
            "MockMvc perform GET",
            "MockMvc GET",
            "MockMvc GET",
            ["mockMvc.perform(get(\"/health\")).andExpect(status().isOk());"],
            ["mockMvc.perform", "status().isOk"],
            "200",
        ),
        (
            "Test repository save",
            "Test de repo save",
            "测试 repo save",
            ["repo.save(new User());"],
            ["repo.save", "new User"],
            "Saved.",
        ),
        (
            "Stub service",
            "Stub de service",
            "Stub service",
            ["when(service.total()).thenReturn(10);"],
            ["thenReturn(10)"],
            "Stubbed.",
        ),
        (
            "Verify call",
            "Verificar llamada",
            "验证调用",
            ["verify(service).create(dto);"],
            ["verify(service)", "create(dto)"],
            "Verified.",
        ),
        (
            "Argument capture",
            "Capturar argumento",
            "捕获参数",
            ["ArgumentCaptor<UserDto> c = ArgumentCaptor.forClass(UserDto.class);"],
            ["ArgumentCaptor", "forClass(UserDto.class)"],
            "Captured.",
        ),
        (
            "Hamcrest match",
            "Match Hamcrest",
            "Hamcrest 匹配",
            ["assertThat(name, startsWith(\"A\"));"],
            ["assertThat", "startsWith"],
            "Matched.",
        ),
        (
            "Parameterized test idea",
            "Idea de test parametrizado",
            "参数化测试思路",
            ["ValueSource(ints=@1,2,3&)"],
            ["ValueSource", "ints="],
            "Param.",
        ),
        (
            "Test profile active",
            "Profile de test",
            "测试 profile",
            ["System.setProperty(\"spring.profiles.active\", \"test\");"],
            ["spring.profiles.active", "test"],
            "Profile set.",
        ),
        (
            "Test HTTP status 404",
            "Test 404",
            "测试 404",
            ["mockMvc.perform(get(\"/missing\")).andExpect(status().isNotFound());"],
            ["isNotFound"],
            "404",
        ),
        (
            "JSON path expect",
            "Expect JSON path",
            "断言 JSON path",
            ["andExpect(jsonPath(\"$.id\").value(1));"],
            ["jsonPath", "$.id"],
            "JSON ok.",
        ),
        (
            "MockBean idea",
            "Idea MockBean",
            "MockBean 思路",
            ["MockBean", "private UserService service;"],
            ["MockBean", "UserService"],
            "Mocked.",
        ),
        (
            "Integration test hint",
            "Hint de integracion",
            "集成测试提示",
            ["SpringBootTest"],
            ["SpringBootTest"],
            "Integration.",
        ),
        (
            "Challenge: verify + captor",
            "Desafio: verify + captor",
            "挑战：verify + captor",
            ["verify(repo).save(c.capture());"],
            ["capture()", "verify(repo)"],
            "Captured.",
        ),
        (
            "Test container hint",
            "Idea Testcontainers",
            "Testcontainers 思路",
            ["Testcontainers"],
            ["Testcontainers"],
            "Container.",
        ),
    ],
    "springActuator": [
        (
            "Expose health and info",
            "Exponer health e info",
            "暴露 health 和 info",
            ["management.endpoints.web.exposure.include=health,info"],
            ["health,info", "exposure.include"],
            "Exposed.",
        ),
        (
            "Enable env info",
            "Activar env info",
            "启用 env info",
            ["management.info.env.enabled=true"],
            ["info.env.enabled", "true"],
            "Info enabled.",
        ),
        (
            "Custom info key",
            "Info custom",
            "自定义 info",
            ["info.app.name=demo"],
            ["info.app.name", "demo"],
            "Info set.",
        ),
        (
            "Health group idea",
            "Idea health group",
            "Health group 思路",
            ["management.endpoint.health.group.readiness.include=db"],
            ["health.group.readiness", "include=db"],
            "Grouped.",
        ),
        (
            "Metrics endpoint include",
            "Exponer metrics",
            "暴露 metrics",
            ["management.endpoints.web.exposure.include=health,metrics"],
            ["metrics", "exposure.include"],
            "Metrics exposed.",
        ),
        (
            "Prometheus enable",
            "Activar prometheus",
            "启用 prometheus",
            ["<artifactId>micrometer-registry-prometheus</artifactId>"],
            ["micrometer-registry-prometheus"],
            "Prom ready.",
        ),
        (
            "Tracing hint",
            "Hint tracing",
            "Tracing 提示",
            ["<artifactId>micrometer-tracing-bridge-brave</artifactId>"],
            ["micrometer-tracing", "brave"],
            "Tracing.",
        ),
        (
            "Customize base path",
            "Cambiar base path",
            "修改 base path",
            ["management.endpoints.web.base-path=/act"],
            ["base-path", "/act"],
            "Base path.",
        ),
        (
            "Secure actuator path",
            "Proteger actuator",
            "保护 actuator",
            ["auth.requestMatchers(\"/act/**\").hasRole(\"OPS\");"],
            ["hasRole(\"OPS\")", "/act/**"],
            "Protected.",
        ),
        (
            "Loggers endpoint",
            "Endpoint loggers",
            "loggers 端点",
            ["management.endpoints.web.exposure.include=loggers"],
            ["include=loggers"],
            "Loggers.",
        ),
        (
            "Change log level at runtime (idea)",
            "Cambiar log level runtime (idea)",
            "运行时改 log level（思路）",
            ["POST /act/loggers/com.example"],
            ["act/loggers", "com.example"],
            "Changed.",
        ),
        (
            "Slow endpoint alert (idea)",
            "Alerta de endpoint lento",
            "慢接口告警思路",
            ["Timer.builder(\"http.server.requests\")"],
            ["Timer.builder", "http.server.requests"],
            "Timed.",
        ),
        (
            "Custom health indicator (idea)",
            "Health indicator custom",
            "自定义 health indicator",
            ["public Health health() { return Health.up().build(); }"],
            ["Health.up", "build()"],
            "UP",
        ),
        (
            "Readiness/Liveness (idea)",
            "Readiness/Liveness",
            "Readiness/Liveness",
            ["management.endpoint.health.probes.enabled=true"],
            ["probes.enabled", "true"],
            "Probes on.",
        ),
        (
            "Challenge: expose + base-path",
            "Desafio: exponer + base-path",
            "挑战：expose + base-path",
            ["exposure.include=health,info", "base-path=/act"],
            ["exposure.include", "base-path"],
            "Configured.",
        ),
    ],
    "springProfiles": [
        (
            "Dev profile property",
            "Property de dev",
            "dev 配置",
            ["spring.profiles.active=dev"],
            ["profiles.active", "dev"],
            "Dev.",
        ),
        (
            "Profile-specific file name",
            "Archivo por profile",
            "profile 文件名",
            ["application-dev.properties"],
            ["application-dev.properties"],
            "Loaded.",
        ),
        (
            "Log level per profile",
            "Log level por profile",
            "按 profile 设置 log level",
            ["logging.level.root=DEBUG"],
            ["logging.level.root", "DEBUG"],
            "Debug.",
        ),
        (
            "Enable SQL logging only in dev",
            "SQL logging solo en dev",
            "仅在 dev 打印 SQL",
            ["spring.jpa.show-sql=true"],
            ["show-sql=true"],
            "SQL.",
        ),
        (
            "Profile annotation name",
            "Anotacion Profile",
            "Profile 注解名",
            ["Profile(\"dev\")"],
            ["Profile(\"dev\")"],
            "Scoped.",
        ),
        (
            "Conditional bean idea",
            "Idea de bean condicional",
            "条件 bean 思路",
            ["ConditionalOnProperty(name=\"app.feature\", havingValue=\"true\")"],
            ["ConditionalOnProperty", "havingValue"],
            "Conditional.",
        ),
        (
            "Externalize config path",
            "Externalizar config path",
            "外部配置路径",
            ["--spring.config.location=/etc/app/"],
            ["--spring.config.location", "/etc/app"],
            "External config.",
        ),
        (
            "Structured logging idea",
            "Idea de logging estructurado",
            "结构化日志思路",
            ["log.info(\"userId={} action={}\", id, action);"],
            ["action=", "log.info"],
            "Logged.",
        ),
        (
            "MDC request id",
            "MDC request id",
            "MDC request id",
            ["MDC.put(\"requestId\", id);"],
            ["MDC.put", "requestId"],
            "Correlated.",
        ),
        (
            "Logback config file",
            "Archivo logback",
            "logback 配置文件",
            ["logback-spring.xml"],
            ["logback-spring.xml"],
            "Configured.",
        ),
        (
            "Actuator loggers endpoint",
            "Endpoint loggers",
            "loggers 端点",
            ["management.endpoints.web.exposure.include=loggers"],
            ["include=loggers"],
            "Loggers.",
        ),
        (
            "JSON logs idea",
            "Idea logs JSON",
            "JSON 日志思路",
            ["<artifactId>logstash-logback-encoder</artifactId>"],
            ["logstash-logback-encoder"],
            "JSON logs.",
        ),
        (
            "Feature flag property",
            "Feature flag",
            "功能开关",
            ["app.feature.checkout=true"],
            ["app.feature.checkout", "true"],
            "Flag on.",
        ),
        (
            "Challenge: profile + flag",
            "Desafio: profile + flag",
            "挑战：profile + flag",
            ["spring.profiles.active=dev", "app.feature.checkout=true"],
            ["profiles.active", "feature.checkout"],
            "Profile+flag.",
        ),
        (
            "Turn off logs in prod (idea)",
            "Apagar logs en prod (idea)",
            "生产关闭噪音日志",
            ["logging.level.root=WARN"],
            ["root=WARN"],
            "Quieter.",
        ),
    ],
    "springDeploy": [
        (
            "Build jar",
            "Construir jar",
            "构建 jar",
            ["./mvnw package"],
            ["package", "./mvnw"],
            "Built.",
        ),
        (
            "Run jar",
            "Ejecutar jar",
            "运行 jar",
            ["java -jar target/app.jar"],
            ["java -jar", "target/app.jar"],
            "Running.",
        ),
        (
            "Set env var for config",
            "Env var para config",
            "用 env 配置",
            ["SPRING_PROFILES_ACTIVE=prod"],
            ["SPRING_PROFILES_ACTIVE", "prod"],
            "Prod profile.",
        ),
        (
            "Dockerfile base image",
            "Dockerfile base image",
            "Dockerfile 基础镜像",
            ["FROM eclipse-temurin:21-jre"],
            ["FROM", "eclipse-temurin"],
            "Base image.",
        ),
        (
            "Copy jar into image",
            "Copiar jar a imagen",
            "复制 jar 到镜像",
            ["COPY target/app.jar /app.jar"],
            ["COPY", "/app.jar"],
            "Copied.",
        ),
        (
            "Expose port",
            "Exponer puerto",
            "暴露端口",
            ["EXPOSE 8080"],
            ["EXPOSE", "8080"],
            "Exposed.",
        ),
        (
            "Run command",
            "Comando de arranque",
            "启动命令",
            ["ENTRYPOINT [\"java\",\"-jar\",\"/app.jar\"]"],
            ["ENTRYPOINT", "-jar"],
            "Started.",
        ),
        (
            "Build docker image",
            "Construir imagen docker",
            "构建 docker 镜像",
            ["docker build -t demo ."],
            ["docker build", "-t demo"],
            "Image built.",
        ),
        (
            "Run container",
            "Ejecutar contenedor",
            "运行容器",
            ["docker run -p 8080:8080 demo"],
            ["docker run", "-p 8080:8080"],
            "Container running.",
        ),
        (
            "Health check in Docker",
            "Healthcheck en Docker",
            "Docker 健康检查",
            ["HEALTHCHECK CMD curl -f http://localhost:8080/act/health || exit 1"],
            ["HEALTHCHECK", "curl -f", "health"],
            "Healthy.",
        ),
        (
            "Multi-stage build idea",
            "Idea multi-stage",
            "多阶段构建思路",
            ["FROM maven:3-eclipse-temurin-21 as build"],
            ["as build", "maven:3"],
            "Built stage.",
        ),
        (
            "Kubernetes readiness probe (idea)",
            "Readiness probe (idea)",
            "Readiness probe（思路）",
            ["readinessProbe: httpGet: path: /act/health/readiness"],
            ["readinessProbe", "/act/health/readiness"],
            "Ready.",
        ),
        (
            "Logging to stdout",
            "Logs a stdout",
            "日志输出到 stdout",
            ["logging.file.name="],
            ["logging.file.name="],
            "Stdout.",
        ),
        (
            "Challenge: docker run + env profile",
            "Desafio: docker run + env profile",
            "挑战：docker run + env profile",
            ["SPRING_PROFILES_ACTIVE=prod docker run -p 8080:8080 demo"],
            ["SPRING_PROFILES_ACTIVE=prod", "docker run"],
            "Prod container.",
        ),
        (
            "Blue/green idea",
            "Idea blue/green",
            "蓝绿发布思路",
            ["deploy v1 and v2, switch traffic"],
            ["switch traffic"],
            "Safer deploy.",
        ),
    ],
}


def ensure_sizes() -> None:
    for cat_dir, *_ in CATEGORIES:
        if cat_dir not in EXERCISES:
            raise SystemExit(f"Missing EXERCISES for {cat_dir}")
        if len(EXERCISES[cat_dir]) != 15:
            raise SystemExit(f"{cat_dir} has {len(EXERCISES[cat_dir])} exercises, expected 15")


def normalize_must_token(tok: str) -> str:
    tok = tok.strip()
    # Many must-tokens are written with quotes (e.g. "\"/api\"") to reflect Java strings.
    # For regex validation we don't need the quotes; stripping also prevents broken Dart
    # raw string literals like r\"\"/api\"\".
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

    # Worst-case fallback (rare): normal string with escaping.
    escaped = text.replace("\\", "\\\\").replace('"', '\\"')
    return f'"{escaped}"'


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
    lines.append(f"              heroTag: 'introButtonSpring{ex_id}',")
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
    lines.append(f"              heroTag: 'infoButtonSpring{ex_id}',")
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
    lines.append(f"              heroTag: 'runButtonSpring{ex_id}',")
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
    lines.append("                  language: CodeLanguage.java,")
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
            f"import 'package:learnswift/Screens/Courses/spring/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
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


def build_model_list(cat_dir: str, specs, lang: str, base_id: int) -> str:
    var = f"{cat_dir}Model{lang.upper()}"

    lines: list[str] = []
    lines.append("import 'package:learnswift/data/courses/coursesExModel.dart';")
    lines.append("")
    lines.append("import '../../Swift/swiftBasics/sbExModelListZH.dart';")
    lines.append("")
    lines.append(f"List<CoursesExModel> {var} = [")

    for idx, (t_en, t_es, t_zh, _code, _must, _out) in enumerate(specs):
        ex_id = base_id + idx
        n = idx + 1
        challenge = idx % 2 == 1
        label = ex_label(lang, n, challenge)
        topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]

        if lang == "zh":
            name = f"{label}{n}：{topic}"
        else:
            name = f"{label} {n}: {topic}"

        purchased = "getPurchasedTrue" if idx < 8 else "getPurchasedFalse"

        lines.append("  CoursesExModel(")
        lines.append(f"    id: {ex_id},")
        lines.append(f'    exerciseName: "{name}",')
        lines.append(f'    productID: "com.mrrubik.learnswift.{LANG_PREFIX}ex{ex_id}",')
        lines.append(f"    alreadyBuy: purchaseManagerHive.{purchased}({ex_id}),")
        lines.append(f"    completed: purchaseManagerHive.getCompleted({ex_id}),")
        lines.append("  ),")

    lines.append("];")
    lines.append("")

    return "\n".join(lines) + "\n"



def build_courses_main_model_list(lang: str) -> str:
    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/spring/{cat_dir}/{cat_dir}ExMain.dart';"
        )

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import '../../courses/Spring/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';"
        )

    lines.append("")
    lines.append(f"List<CoursesMainModel> coursesSpringMainModelList{lang.upper()} = [")

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



def gen_texts(
    lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]
) -> tuple[str, str, str, str, str, str]:
    # Base copy (we later refine via a refresh script if needed).
    instr_titles = {
        "en": ["Your mission", "Mini quest", "Quick challenge", "Level up"],
        "es": ["Tu mision", "Mini reto", "Mision express", "Sube de nivel"],
        "zh": ["你的任务", "小挑战", "快速关卡", "升级啦"],
    }[lang]
    instr_title = hpick(instr_titles, f"{lang}:{ex_id}:instrTitle")

    must_preview = ", ".join(must[:3])

    if lang == "es":
        instr = (
            f"🎯 Hoy toca: {topic}.\n\n"
            f"Tu objetivo: escribe un snippet corto que incluya: {must_preview}.\n\n"
            "Tip: puedes cambiar nombres, pero no pierdas la idea 😉"
        )
        info = (
            f"Que practicas: {topic}.\n\n"
            "Por que importa: esto aparece en proyectos Spring reales (y te ahorra bugs).\n\n"
            f"Cuando lo usas: cuando necesitas que se vea {must_preview} en tu codigo."
        )
        hint1 = f"Pista: intenta que aparezca: {must_preview}."
        hint2 = "Mira el ejemplo y replica la estructura."
    elif lang == "en":
        instr = (
            f"🎯 Today: {topic}.\n\n"
            f"Goal: write a short snippet that includes: {must_preview}.\n\n"
            "Tip: names can vary, the idea must stay 😉"
        )
        info = (
            f"What you practice: {topic}.\n\n"
            "Why it matters: this shows up in real Spring code (and prevents bugs).\n\n"
            f"When you use it: when your code needs {must_preview}."
        )
        hint1 = f"Hint: make sure you include: {must_preview}."
        hint2 = "Use the example structure; names can change."
    else:
        instr = (
            f"🎯 今天：{topic}。\n\n"
            f"目标：写一个短片段，至少包含：{must_preview}。\n\n"
            "名字可以换，但概念别丢 😉"
        )
        info = (
            f"你在练：{topic}。\n\n"
            "为什么重要：真实 Spring 项目里经常用到，也能少踩坑。\n\n"
            f"什么时候用：当你需要在代码里看到 {must_preview} 的时候。"
        )
        hint1 = f"提示：至少写出：{must_preview}。"
        hint2 = "参考示例结构即可。"

    return instr_title, instr, info_title(lang), info, hint1, hint2



def main() -> None:
    ensure_sizes()

    arb_entries = {"en": [], "es": [], "zh": []}

    # Global correct strings
    correct = {
        "en": ("Correct ✅", "Nice! Your snippet has the key Spring pieces. Keep going."),
        "es": ("Correcto ✅", "Bien! Tu snippet tiene las piezas clave de Spring. Sigue subiendo nivel."),
        "zh": ("正确 ✅", "做得好！你的代码片段包含了关键的 Spring 结构。继续加油。"),
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

    # Category info strings (basic; can be improved later)
    cat_titles = {
        "en": "Spring {name} — Why it matters",
        "es": "Spring {name} — Por que importa",
        "zh": "Spring {name} — 为什么重要",
    }

    cat_contents = {
        "en": "In this category you practice {name}. It matters because these skills show up in real services and keep code maintainable.",
        "es": "En esta categoria practicas {name}. Importa porque esto aparece en servicios reales y mantiene el codigo mantenible.",
        "zh": "本分类练习 {name}。它很重要，因为真实服务都会用到，而且更好维护。",
    }

    for i, (_cat_dir, name_en, name_es, name_zh) in enumerate(CATEGORIES):
        for lang in ["en", "es", "zh"]:
            name = {"en": name_en, "es": name_es, "zh": name_zh}[lang]
            arb_entries[lang].append(
                arb_line(
                    f"{LANG_PREFIX}Cat{i}InfoTitle",
                    encode_braces(escape_icu(cat_titles[lang].format(name=name))),
                )
            )
            arb_entries[lang].append(
                arb_line(
                    f"{LANG_PREFIX}Cat{i}InfoContent",
                    encode_braces(escape_icu(cat_contents[lang].format(name=name))),
                )
            )

    # Generate per category
    for cat_index, (cat_dir, _n_en, _n_es, _n_zh) in enumerate(CATEGORIES):
        specs = EXERCISES[cat_dir]
        base_id = START_ID + cat_index * 15
        ids = list(range(base_id, base_id + 15))

        # Model lists
        for lang in ["en", "es", "zh"]:
            write(
                Path(
                    f"lib/data/courses/Spring/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"
                ),
                build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/spring/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            # Screen
            write(
                Path(f"lib/Screens/Courses/spring/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"),
                build_exercise_screen(cat_dir, ex_id, must),
            )

            for lang in ["en", "es", "zh"]:
                topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]

                instr_title, instr, info_t, info_c, hint1, hint2 = gen_texts(
                    lang, cat_dir, ex_id, topic, must
                )

                sol = "\n".join(code_lines)
                out = output_label(lang, out_text)

                def prep(s: str) -> str:
                    return encode_braces(escape_icu(s))

                items = {
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
            Path(f"lib/data/mainModel/Spring/CoursesMainModelList{lang.upper()}.dart"),
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
