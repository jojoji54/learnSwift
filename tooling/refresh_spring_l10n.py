#!/usr/bin/env python3
"""
Refresh Spring l10n texts (Instructions + Info + Category info) with more
exercise-specific, less templated copy (EN/ES/ZH).

Why:
- Generators tend to produce repetitive copy.
- The app decodes '@' -> '{' and '&' -> '}' at runtime, so ARB values must stay
  ICU-safe (no literal braces) and should avoid literal '@' unless it is brace
  encoding.
"""

from __future__ import annotations

import hashlib
import runpy
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def hpick(items: list[str], seed: str) -> str:
    h = int(hashlib.md5(seed.encode("utf-8")).hexdigest(), 16)
    return items[h % len(items)]


def escape_icu(s: str) -> str:
    # Flutter gen-l10n: escape single quote by doubling
    return s.replace("'", "''")


def encode_braces(s: str) -> str:
    # Avoid literal braces in ARB; screens decode @->{ and &->}
    return s.replace("{", "@").replace("}", "&")


def json_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")


def prep(s: str) -> str:
    # Keep ICU safe + keep our brace-encoding convention.
    return json_escape(encode_braces(escape_icu(s)))


def kw_blob(topic: str, must: list[str]) -> str:
    return (topic + " " + " ".join(must)).lower()


def scenario_for(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    k = kw_blob(topic, must)

    # Special, concrete scenarios first.
    if "server.port" in k:
        return {"en": "running two services locally", "es": "levantar dos servicios en local", "zh": "本地同时跑两个服务"}[lang]
    if "spring.datasource" in k or "jdbc:" in k:
        return {"en": "connecting your API to a real database", "es": "conectar tu API a una base de datos real", "zh": "把接口连上真实数据库"}[lang]
    if "restcontroller" in k or "getmapping" in k or "postmapping" in k:
        return {"en": "building a small REST API for a mobile app", "es": "montar una API REST para una app movil", "zh": "给移动端做一个小 REST API"}[lang]
    if "jparepository" in k or "findby" in k:
        return {"en": "shipping a feature that reads/writes data", "es": "sacar una feature que lee/escribe datos", "zh": "上线读写数据的功能"}[lang]
    if "transactional" in k or "rollback" in k:
        return {"en": "a money transfer that must be atomic", "es": "una transferencia que debe ser atomica", "zh": "必须原子化的转账"}[lang]
    if "bcrypt" in k or "authenticated" in k or "hasrole" in k:
        return {"en": "a login-protected admin area", "es": "un panel admin con login", "zh": "需要登录的管理区"}[lang]
    if "responsestatusexception" in k or "controlleradvice" in k:
        return {"en": "making your API errors predictable", "es": "hacer que los errores de tu API sean predecibles", "zh": "让 API 错误更可预期"}[lang]
    if "mockmvc" in k or "assertthat" in k:
        return {"en": "refactoring without breaking endpoints", "es": "refactorizar sin romper endpoints", "zh": "重构但不把接口弄挂"}[lang]
    if "docker" in k or "entrypoint" in k:
        return {"en": "deploying the service as a container", "es": "desplegar el servicio en un contenedor", "zh": "把服务容器化部署"}[lang]

    pools = {
        "springBasics": {
            "en": ["starting a new microservice", "building a demo for a client", "setting up a clean repo", "bootstrapping a weekend project"],
            "es": ["arrancar un microservicio nuevo", "hacer una demo para un cliente", "dejar un repo limpio", "empezar un proyecto de fin de semana"],
            "zh": ["启动新微服务", "做客户演示", "把仓库搭干净", "周末小项目起步"],
        },
        "springConfig": {
            "en": ["tuning an app for production", "moving between dev/stage/prod", "fixing config bugs", "making deployments reproducible"],
            "es": ["ajustar la app para produccion", "moverte entre dev/stage/prod", "cazar bugs de config", "hacer deploys repetibles"],
            "zh": ["调优生产配置", "切换 dev/stage/prod", "修配置坑", "让部署可复现"],
        },
        "springDI": {
            "en": ["keeping code testable", "avoiding tight coupling", "building clean layers", "swapping implementations safely"],
            "es": ["mantener el codigo testeable", "evitar acoplamientos", "hacer capas limpias", "cambiar implementaciones sin miedo"],
            "zh": ["保持可测试", "避免强耦合", "做干净分层", "安全替换实现"],
        },
        "springControllers": {
            "en": ["designing endpoints", "handling inputs", "returning clean responses", "documenting an API by code"],
            "es": ["disenar endpoints", "manejar inputs", "devolver respuestas limpias", "documentar una API con codigo"],
            "zh": ["设计接口", "处理输入", "返回干净响应", "用代码表达 API"],
        },
        "springRequests": {
            "en": ["validating user input", "stopping bad data early", "building stable DTOs", "avoiding messy parsing"],
            "es": ["validar input", "parar datos malos pronto", "montar DTOs estables", "evitar parseo feo"],
            "zh": ["校验输入", "尽早挡住脏数据", "构建稳定 DTO", "避免手搓解析"],
        },
        "springServices": {
            "en": ["keeping controllers thin", "centralizing business rules", "mapping entities and DTOs", "making logic reusable"],
            "es": ["dejar controladores finitos", "centralizar reglas de negocio", "mapear entities y DTOs", "reutilizar logica"],
            "zh": ["让控制器变薄", "集中业务规则", "实体与 DTO 映射", "复用逻辑"],
        },
        "springEntities": {
            "en": ["modeling your database", "avoiding schema surprises", "expressing relations", "keeping data consistent"],
            "es": ["modelar tu base de datos", "evitar sorpresas de esquema", "expresar relaciones", "mantener consistencia"],
            "zh": ["建模数据库", "避免结构惊喜", "表达关系", "保持一致性"],
        },
        "springRepositories": {
            "en": ["writing queries fast", "keeping reads predictable", "shipping filters/search", "avoiding SQL spaghetti"],
            "es": ["sacar queries rapido", "hacer lecturas predecibles", "filtros/busquedas", "evitar SQL espagueti"],
            "zh": ["快速写查询", "让读取可预期", "上线过滤搜索", "避免 SQL 乱糟糟"],
        },
        "springTransactions": {
            "en": ["protecting critical writes", "making operations atomic", "recovering from failures", "keeping data correct"],
            "es": ["proteger escrituras criticas", "hacer operaciones atomicas", "recuperarte de fallos", "mantener datos correctos"],
            "zh": ["保护关键写入", "保证原子性", "故障恢复", "保持数据正确"],
        },
        "springSecurity": {
            "en": ["protecting endpoints", "auth + roles", "secure defaults", "avoiding scary leaks"],
            "es": ["proteger endpoints", "auth + roles", "defaults seguros", "evitar sustos"],
            "zh": ["保护接口", "认证与角色", "安全默认值", "避免泄露"],
        },
        "springExceptions": {
            "en": ["making errors consistent", "returning good status codes", "debugging faster", "helping clients handle failures"],
            "es": ["hacer errores consistentes", "devolver buenos status", "debug mas rapido", "ayudar al cliente a manejar fallos"],
            "zh": ["让错误一致", "返回正确状态码", "更快定位问题", "让客户端好处理"],
        },
        "springTesting": {
            "en": ["catching regressions", "safe refactors", "confidence in CI", "faster feedback loops"],
            "es": ["cazar regresiones", "refactors seguros", "confianza en CI", "feedback rapido"],
            "zh": ["抓回归", "安全重构", "CI 更稳", "更快反馈"],
        },
        "springActuator": {
            "en": ["monitoring prod", "health checks", "metrics", "operational debugging"],
            "es": ["monitorizar prod", "health checks", "metricas", "debug operativo"],
            "zh": ["监控生产", "健康检查", "指标", "运维排障"],
        },
        "springProfiles": {
            "en": ["separating dev/prod", "reducing config chaos", "improving logs", "feature flags"],
            "es": ["separar dev/prod", "bajar el caos de config", "mejorar logs", "feature flags"],
            "zh": ["区分 dev/prod", "减少配置混乱", "改善日志", "功能开关"],
        },
        "springDeploy": {
            "en": ["shipping the service", "running in Docker", "deploy scripts", "production habits"],
            "es": ["poner el servicio en marcha", "correr en Docker", "scripts de deploy", "habitos de produccion"],
            "zh": ["把服务跑起来", "Docker 运行", "部署脚本", "生产习惯"],
        },
    }

    pool = pools.get(cat_dir, {}).get(lang)
    if not pool:
        return {"en": "a real project", "es": "un proyecto real", "zh": "真实项目"}[lang]
    return hpick(pool, f"{lang}:{cat_dir}:{ex_id}:scene")


def instructions(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str], out_text: str) -> str:
    must_preview = ", ".join(must[:3])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)

    endings = {
        "en": [
            "Keep it small, but make the idea obvious ✅",
            "If it reads well, it counts. Hit Run 😄",
            "Minimum snippet, maximum clarity 🎯",
            "You’re building real muscle here 💪",
        ],
        "es": [
            "Corto, pero clarito ✅",
            "Si se entiende, cuenta. Dale a Run 😄",
            "Minimo snippet, maxima claridad 🎯",
            "Esto es musculo real 💪",
        ],
        "zh": [
            "越短越好，但要一眼看懂 ✅",
            "写清楚就算过关，点 Run 😄",
            "最小片段，最大清晰 🎯",
            "这就是实战肌肉 💪",
        ],
    }[lang]

    templates = {
        "en": [
            "🎯 Mission: {topic}.\n\nScene: {scene}.\nWrite the minimum snippet that includes: {must}.\n\n{end}",
            "🧩 Mini quest: {topic}.\n\nReal life: {scene}.\nChecklist: {must}.\n\n{end}",
            "🚀 Goal: {topic}.\n\nContext: {scene}.\nMake sure {must} shows up.\n\n{end}",
            "🎬 Scene: {scene}.\n\nShow {topic} with a tiny snippet.\nMust-have: {must}.\n\n{end}",
        ],
        "es": [
            "🎯 Mision: {topic}.\n\nEscena: {scene}.\nEscribe lo minimo que incluya: {must}.\n\n{end}",
            "🧩 Mini reto: {topic}.\n\nVida real: {scene}.\nChecklist: {must}.\n\n{end}",
            "🚀 Objetivo: {topic}.\n\nContexto: {scene}.\nAsegurate de que aparezca: {must}.\n\n{end}",
            "🎬 Escena: {scene}.\n\nDemuestra {topic} con un snippet cortito.\nImprescindible: {must}.\n\n{end}",
            "👣 Pasos rapidos:\n1) Escribe {must}.\n2) Recorta lo que sobre.\n\nTema: {topic}.\nEscena: {scene}.\n\n{end}",
        ],
        "zh": [
            "🎯 任务：{topic}。\n\n场景：{scene}。\n写出最小片段，至少包含：{must}。\n\n{end}",
            "🧩 小挑战：{topic}。\n\n真实场景：{scene}。\n清单：{must}。\n\n{end}",
            "🚀 目标：{topic}。\n\n上下文：{scene}。\n确保出现：{must}。\n\n{end}",
            "🎬 场景：{scene}。\n\n用很短的片段表达 {topic}。\n必须出现：{must}。\n\n{end}",
        ],
    }[lang]

    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:instr")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:end")
    return tmpl.format(topic=topic, scene=scene, must=must_preview, end=end)


def info_content(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    must_preview = ", ".join(must[:3])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)

    why_base = {
        "springBasics": {
            "en": "Basics are boring… until they fail in production.",
            "es": "La base parece aburrida… hasta que falla en produccion.",
            "zh": "基础看起来无聊…直到生产出事。",
        },
        "springConfig": {
            "en": "Config is where “works on my machine” goes to die.",
            "es": "La config es donde muere el “a mi me funciona”.",
            "zh": "配置是“我这能跑”最容易翻车的地方。",
        },
        "springDI": {
            "en": "DI keeps code testable and reduces glue-code chaos.",
            "es": "La DI mantiene el codigo testeable y reduce el caos.",
            "zh": "依赖注入让代码更可测试，也更干净。",
        },
        "springControllers": {
            "en": "Controllers are your contract with the outside world.",
            "es": "Los controladores son tu contrato con el mundo exterior.",
            "zh": "控制器就是你对外的“合同”。",
        },
        "springRequests": {
            "en": "Validating early is cheaper than debugging later.",
            "es": "Validar pronto es mas barato que debugear tarde.",
            "zh": "越早校验，越少后期痛苦。",
        },
        "springServices": {
            "en": "Services keep business rules in one place.",
            "es": "Los services dejan las reglas de negocio en un solo sitio.",
            "zh": "Service 层把业务规则集中起来。",
        },
        "springEntities": {
            "en": "Good data models prevent weird bugs and weird reports.",
            "es": "Un buen modelo de datos evita bugs raros y reportes raros.",
            "zh": "数据模型做对了，很多怪 bug 就消失了。",
        },
        "springRepositories": {
            "en": "Repositories are speed: you ship queries without drowning in SQL.",
            "es": "Los repos son velocidad: sacas queries sin ahogarte en SQL.",
            "zh": "仓库层让你更快写查询，不用被 SQL 淹没。",
        },
        "springTransactions": {
            "en": "Transactions are your safety net for critical writes.",
            "es": "Las transacciones son la red de seguridad de tus escrituras criticas.",
            "zh": "事务是关键写入的安全网。",
        },
        "springSecurity": {
            "en": "Security is product quality. Treat it like one.",
            "es": "La seguridad es calidad de producto. Tratalo como tal.",
            "zh": "安全就是产品质量的一部分。",
        },
        "springExceptions": {
            "en": "Consistent errors make clients (and you) happier.",
            "es": "Errores consistentes hacen feliz al cliente (y a ti).",
            "zh": "错误一致，客户端好写，你也省事。",
        },
        "springTesting": {
            "en": "Tests buy you speed: change code without fear.",
            "es": "Los tests te compran velocidad: cambias codigo sin miedo.",
            "zh": "测试换来速度：改代码不慌。",
        },
        "springActuator": {
            "en": "Observability helps you debug production without guessing.",
            "es": "La observabilidad te deja debugear produccion sin adivinar.",
            "zh": "可观测性让你不靠猜来排障。",
        },
        "springProfiles": {
            "en": "Profiles keep dev/prod differences explicit, not accidental.",
            "es": "Los profiles hacen que dev/prod sea explicito, no accidental.",
            "zh": "Profile 让 dev/prod 差异更明确。",
        },
        "springDeploy": {
            "en": "Deploy skills are what turn code into something users can touch.",
            "es": "El deploy es lo que convierte codigo en algo que el usuario toca.",
            "zh": "部署把代码变成用户真正能用的东西。",
        },
    }.get(cat_dir)

    base = why_base[lang] if why_base else {"en": "This shows up in real projects.", "es": "Esto sale en proyectos reales.", "zh": "真实项目一定会遇到。"}[lang]

    if lang == "en":
        why = f"{base}\nThis exercise focuses on {topic} — look for: {must_preview}."
        when = f"You’ll use it in {scene}, especially when {must_preview} matters."
        tip = f"Tip: start by writing {must_preview}, then trim anything extra."
        return f"What you practice: {topic}.\n\nWhy it matters: {why}\n\nWhen you use it: {when}\n\n{tip}"
    if lang == "es":
        why = f"{base}\nEste ejercicio va de {topic} — fijate en: {must_preview}."
        when = f"Lo usaras en {scene}, sobre todo cuando {must_preview} importa."
        tip = f"Tip: empieza por escribir {must_preview} y luego recorta lo que sobre."
        return f"Que practicas: {topic}.\n\nPor que importa: {why}\n\nCuando lo usas: {when}\n\n{tip}"
    why = f"{base}\n这一关练的是 {topic} —— 关键点是：{must_preview}。"
    when = f"在 {scene} 里会用到，尤其是 {must_preview} 这类细节。"
    tip = f"小提示：先写出 {must_preview}，再把多余的删掉。"
    return f"你在练：{topic}。\n\n为什么重要：{why}\n\n什么时候用：{when}\n\n{tip}"


def update_arb(path: Path, updates: dict[str, str]) -> None:
    text = path.read_text(encoding="utf-8").splitlines(keepends=True)
    out: list[str] = []

    for line in text:
        replaced = False
        for key, value in updates.items():
            needle = f'"{key}"'
            if needle not in line:
                continue

            colon = line.find(":", line.find(needle))
            if colon == -1:
                continue
            start_quote = line.find('"', colon + 1)
            if start_quote == -1:
                continue

            # Scan for the end quote (handling escapes) to preserve trailing comma/spaces.
            i = start_quote + 1
            escaped = False
            while i < len(line):
                ch = line[i]
                if escaped:
                    escaped = False
                elif ch == "\\":
                    escaped = True
                elif ch == '"':
                    break
                i += 1

            if i >= len(line) or line[i] != '"':
                continue

            new_line = line[: start_quote + 1] + prep(value) + line[i:]
            out.append(new_line)
            replaced = True
            break

        if not replaced:
            out.append(line)

    path.write_text("".join(out), encoding="utf-8")


def main() -> None:
    g = runpy.run_path(str(ROOT / "tooling" / "generate_spring.py"))
    categories = g["CATEGORIES"]
    exercises = g["EXERCISES"]
    start_id = g["START_ID"]
    lang_prefix = g["LANG_PREFIX"]

    # --- Category info (15 categories) ---
    cat_info = {
        "springBasics": {
            "en": ("Spring Boot Basics — Why it matters", "You set up the skeleton: project, run, properties, jar.\n\nWhy it matters: if the base is shaky, everything later hurts.\n\nUse it when you start a new service and want to move fast. 🚀"),
            "es": ("Fundamentos Spring Boot — Por que importa", "Aqui montas la base: proyecto, arranque, properties y jar.\n\nPor que importa: si la base tiembla, todo lo de despues duele.\n\nLo usaras cada vez que arranques un servicio y quieras ir rapido. 🚀"),
            "zh": ("Spring Boot 基础 — 为什么重要", "这一类把骨架搭起来：建项目、启动、配置、打包。\n\n为什么重要：基础不稳，后面改到怀疑人生。\n\n想快速启动一个服务时，这里必用。🚀"),
        },
        "springConfig": {
            "en": ("Configuration & Properties — Why it matters", "You control behaviour without touching code: ports, DB, JSON, uploads.\n\nWhy it matters: bad config causes the weirdest production bugs.\n\nUse it when you move between dev/stage/prod safely. ⚙️"),
            "es": ("Configuracion y Properties — Por que importa", "Controlas el comportamiento sin tocar codigo: puertos, DB, JSON, uploads.\n\nPor que importa: una mala config crea los bugs mas raros.\n\nLo usaras para moverte entre dev/stage/prod sin sustos. ⚙️"),
            "zh": ("配置与属性 — 为什么重要", "不用改代码就能调行为：端口、数据库、JSON、上传。\n\n为什么重要：配置错了，生产 bug 特别玄学。\n\n在 dev/stage/prod 切换时非常关键。⚙️"),
        },
        "springDI": {
            "en": ("Beans & Dependency Injection — Why it matters", "You wire pieces without spaghetti: services, repos, fakes for tests.\n\nWhy it matters: DI = testable code + cleaner architecture.\n\nUse it anytime you want to swap implementations safely. 🧩"),
            "es": ("Beans e Inyeccion — Por que importa", "Conectas piezas sin espagueti: services, repos y fakes para tests.\n\nPor que importa: DI = codigo testeable + arquitectura mas limpia.\n\nLo usaras cuando quieras cambiar implementaciones sin miedo. 🧩"),
            "zh": ("Bean 与依赖注入 — 为什么重要", "把模块接起来不打结：service、repo、测试 fake。\n\n为什么重要：依赖注入让代码更可测试、结构更干净。\n\n想安全替换实现时会一直用到。🧩"),
        },
        "springControllers": {
            "en": ("REST Controllers — Why it matters", "Endpoints are your API contract: input, output, status codes.\n\nWhy it matters: clean controllers make clients happy.\n\nUse it for mobile apps, frontends, integrations… everything. 🧭"),
            "es": ("Controladores REST — Por que importa", "Los endpoints son tu contrato: input, output y status codes.\n\nPor que importa: controladores limpios = clientes felices.\n\nLo usaras en apps moviles, frontends e integraciones. 🧭"),
            "zh": ("REST 控制器 — 为什么重要", "接口就是契约：输入、输出、状态码。\n\n为什么重要：控制器清晰，客户端好用。\n\n移动端、前端、集成…都离不开。🧭"),
        },
        "springRequests": {
            "en": ("Requests & Validation — Why it matters", "You stop bad data at the door: DTOs, validation, defaults.\n\nWhy it matters: fixing bad data later is expensive.\n\nUse it whenever users can type… which is always. 🛡️"),
            "es": ("Requests y Validacion — Por que importa", "Paras datos malos en la puerta: DTOs, validacion y defaults.\n\nPor que importa: arreglar datos rotos despues es caro.\n\nLo usaras siempre que haya input de usuario. 🛡️"),
            "zh": ("请求与校验 — 为什么重要", "把脏数据挡在门口：DTO、校验、默认值。\n\n为什么重要：后面修数据更贵。\n\n只要有用户输入，就会用到。🛡️"),
        },
        "springServices": {
            "en": ("Services & Layers — Why it matters", "You keep controllers thin and put rules in services.\n\nWhy it matters: business logic needs one home.\n\nUse it when features grow and you want sanity. 🧠"),
            "es": ("Servicios y Capas — Por que importa", "Dejas el controlador fino y metes reglas en services.\n\nPor que importa: la logica de negocio necesita una casa.\n\nLo usaras cuando el proyecto crece y quieres cordura. 🧠"),
            "zh": ("服务层与分层 — 为什么重要", "控制器薄一点，规则放到 service。\n\n为什么重要：业务逻辑要有一个固定的家。\n\n功能变多时，分层能救命。🧠"),
        },
        "springEntities": {
            "en": ("JPA Entities — Why it matters", "You model tables and relations: ids, columns, associations.\n\nWhy it matters: a clean model prevents ugly data bugs.\n\nUse it whenever your app stores anything. 🧱"),
            "es": ("Entidades JPA — Por que importa", "Modelas tablas y relaciones: ids, columnas y asociaciones.\n\nPor que importa: un modelo limpio evita bugs feos de datos.\n\nLo usaras siempre que guardes algo en DB. 🧱"),
            "zh": ("JPA 实体 — 为什么重要", "建模表和关系：id、列、关联。\n\n为什么重要：模型干净，数据 bug 就少。\n\n只要存数据就会用到。🧱"),
        },
        "springRepositories": {
            "en": ("Repositories & Queries — Why it matters", "You fetch data fast: derived queries, paging, sorting.\n\nWhy it matters: good queries = good performance.\n\nUse it for search, filters, lists, dashboards. 🔎"),
            "es": ("Repositorios y Consultas — Por que importa", "Sacas datos rapido: queries derivadas, paging y sorting.\n\nPor que importa: buenas queries = buen rendimiento.\n\nLo usaras en busquedas, filtros, listas y dashboards. 🔎"),
            "zh": ("仓库与查询 — 为什么重要", "快速取数据：派生查询、分页、排序。\n\n为什么重要：查询写得好，性能就稳。\n\n搜索、过滤、列表、看板都需要。🔎"),
        },
        "springTransactions": {
            "en": ("Transactions — Why it matters", "You keep writes atomic and recover from failures.\n\nWhy it matters: data correctness is everything.\n\nUse it for payments, inventory, and any critical operation. 🧯"),
            "es": ("Transacciones — Por que importa", "Mantienes escrituras atomicas y te recuperas de fallos.\n\nPor que importa: la consistencia de datos lo es todo.\n\nLo usaras en pagos, inventario y operaciones criticas. 🧯"),
            "zh": ("事务 — 为什么重要", "保证写入原子性，失败也能回滚。\n\n为什么重要：数据正确性就是底线。\n\n支付、库存、关键流程必用。🧯"),
        },
        "springSecurity": {
            "en": ("Security Basics — Why it matters", "Auth, roles, CSRF, headers… the stuff attackers love.\n\nWhy it matters: a secure app is a quality app.\n\nUse it when endpoints must not be public. 🔐"),
            "es": ("Seguridad Basica — Por que importa", "Auth, roles, CSRF… lo que a los atacantes les encanta.\n\nPor que importa: una app segura es una app de calidad.\n\nLo usaras cuando tus endpoints no pueden ser publicos. 🔐"),
            "zh": ("安全基础 — 为什么重要", "认证、角色、CSRF…攻击者最爱找的地方。\n\n为什么重要：安全就是质量。\n\n接口不能公开时，这里必用。🔐"),
        },
        "springExceptions": {
            "en": ("Exception Handling — Why it matters", "You return consistent errors and status codes.\n\nWhy it matters: predictable errors make clients stable.\n\nUse it to avoid mystery 500s. 🧰"),
            "es": ("Manejo de Excepciones — Por que importa", "Devuelves errores consistentes y buenos status codes.\n\nPor que importa: errores predecibles = clientes estables.\n\nLo usaras para evitar 500 misteriosos. 🧰"),
            "zh": ("异常处理 — 为什么重要", "返回一致的错误与状态码。\n\n为什么重要：错误可预期，客户端更稳定。\n\n用它避免神秘 500。🧰"),
        },
        "springTesting": {
            "en": ("Testing — Why it matters", "You lock behaviour down with tests: unit + HTTP + repo.\n\nWhy it matters: tests make refactors safe.\n\nUse it before shipping, always. 🧪"),
            "es": ("Pruebas — Por que importa", "Bloqueas comportamiento con tests: unit + HTTP + repo.\n\nPor que importa: los tests hacen el refactor seguro.\n\nLo usaras antes de desplegar, siempre. 🧪"),
            "zh": ("测试 — 为什么重要", "用测试锁住行为：单元、HTTP、仓库。\n\n为什么重要：测试让重构更安全。\n\n上线前一定要有。🧪"),
        },
        "springActuator": {
            "en": ("Actuator & Monitoring — Why it matters", "Health, metrics, loggers… tools for production sanity.\n\nWhy it matters: you can’t fix what you can’t see.\n\nUse it for on-call life. 📟"),
            "es": ("Actuator y Monitorizacion — Por que importa", "Health, metricas, loggers… herramientas de produccion.\n\nPor que importa: no puedes arreglar lo que no ves.\n\nLo usaras en guardias y en prod. 📟"),
            "zh": ("监控与 Actuator — 为什么重要", "健康、指标、日志…生产排障工具。\n\n为什么重要：看不见就修不好。\n\n值班时特别香。📟"),
        },
        "springProfiles": {
            "en": ("Profiles & Logging — Why it matters", "Different envs need different behaviour, and logs tell the story.\n\nWhy it matters: fewer surprises, faster debugging.\n\nUse it to keep dev and prod honest. 🧭"),
            "es": ("Profiles y Logging — Por que importa", "Cada entorno se comporta distinto, y los logs cuentan la historia.\n\nPor que importa: menos sorpresas y debug mas rapido.\n\nLo usaras para que dev y prod sean honestos. 🧭"),
            "zh": ("环境与日志 — 为什么重要", "不同环境需要不同配置，日志能讲清发生了什么。\n\n为什么重要：少意外、更快排障。\n\n让 dev/prod 更靠谱。🧭"),
        },
        "springDeploy": {
            "en": ("Deployment & Docker — Why it matters", "You turn a jar into a running service: Docker, ports, health checks.\n\nWhy it matters: code isn’t useful until it runs.\n\nUse it to ship with confidence. 🚢"),
            "es": ("Deploy y Docker — Por que importa", "Conviertes un jar en un servicio real: Docker, puertos y health checks.\n\nPor que importa: el codigo no sirve hasta que corre.\n\nLo usaras para desplegar con confianza. 🚢"),
            "zh": ("部署与 Docker — 为什么重要", "把 jar 变成真正跑起来的服务：Docker、端口、健康检查。\n\n为什么重要：代码跑起来才有价值。\n\n用它更稳地发布。🚢"),
        },
    }

    updates = {"en": {}, "es": {}, "zh": {}}

    # Category info updates
    for i, (cat_dir, _en, _es, _zh) in enumerate(categories):
        info = cat_info.get(cat_dir)
        if not info:
            continue
        for lang in ["en", "es", "zh"]:
            title_key = f"{lang_prefix}Cat{i}InfoTitle"
            content_key = f"{lang_prefix}Cat{i}InfoContent"
            updates[lang][title_key] = info[lang][0]
            updates[lang][content_key] = info[lang][1]

    # Exercise updates
    for cat_index, (cat_dir, _n_en, _n_es, _n_zh) in enumerate(categories):
        specs = exercises[cat_dir]
        base_id = start_id + cat_index * 15

        for idx, (t_en, t_es, t_zh, _code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            for lang in ["en", "es", "zh"]:
                topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]

                # Titles
                instr_title_pool = {
                    "en": ["Your mission 🚀", "Mini quest 🧩", "Quick win 🎯", "Level up 💪", "Boss fight 👾"],
                    "es": ["Tu mision 🚀", "Mini reto 🧩", "Quick win 🎯", "Sube de nivel 💪", "Boss fight 👾"],
                    "zh": ["你的任务 🚀", "小挑战 🧩", "快速过关 🎯", "升级啦 💪", "Boss 关 👾"],
                }[lang]
                instr_title = hpick(instr_title_pool, f"{lang}:{cat_dir}:{ex_id}:it")

                info_title_pool = {
                    "en": ["Why this matters ℹ️", "More info 🧠", "Behind the scenes 🔍", "Pro tip 💡"],
                    "es": ["Por que importa ℹ️", "Mas info 🧠", "Detras de escena 🔍", "Pro tip 💡"],
                    "zh": ["为什么重要 ℹ️", "更多信息 🧠", "背后原理 🔍", "小技巧 💡"],
                }[lang]
                info_title = hpick(info_title_pool, f"{lang}:{cat_dir}:{ex_id}:mt")

                updates[lang][f"{lang_prefix}{ex_id}InstructionsTitle"] = instr_title
                updates[lang][f"{lang_prefix}{ex_id}InstructionsContent"] = instructions(
                    lang, cat_dir, ex_id, topic, must, out_text
                )
                updates[lang][f"{lang_prefix}{ex_id}InfoTitle"] = info_title
                updates[lang][f"{lang_prefix}{ex_id}InfoContent"] = info_content(
                    lang, cat_dir, ex_id, topic, must
                )

    # Apply updates
    for lang in ["en", "es", "zh"]:
        update_arb(ROOT / "lib" / "l10n" / f"app_{lang}.arb", updates[lang])


if __name__ == "__main__":
    main()

