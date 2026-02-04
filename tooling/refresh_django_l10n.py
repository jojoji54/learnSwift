#!/usr/bin/env python3
"""
Refresh Django l10n texts (InstructionsContent + InfoContent + Category info)
with more exercise-specific, less templated copy.

Why:
- The initial generator produced repetitive "More info" / instructions phrases.
- The app decodes '@'->'{' and '&'->'}' at runtime, so these strings must stay
  ICU-safe (no literal braces) and avoid literal '@' unless it's brace-encoding.
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

    # Special, very concrete scenarios first (more "real life", less template).
    if "login_required" in k:
        return {"en": "a dashboard with private orders", "es": "un dashboard con pedidos privados", "zh": "一个包含私密订单的仪表盘"}[
            lang
        ]
    if "permission_required" in k or "has_perm" in k:
        return {"en": "an editor where only some users can publish", "es": "un editor donde no cualquiera puede publicar", "zh": "一个只有部分用户能发布内容的编辑页"}[
            lang
        ]
    if "csrf_exempt" in k or "csrf" in k and "exempt" in k:
        return {"en": "a payment webhook endpoint", "es": "un endpoint de webhook de pagos", "zh": "一个支付 webhook 接口"}[
            lang
        ]
    if "cache_page" in k:
        return {"en": "a busy homepage that gets hammered", "es": "una home con mucho trafico", "zh": "一个访问量很大的首页"}[
            lang
        ]
    if "patch(" in k or "patch" in k and "return_value" in k:
        return {"en": "a flaky external API you want to fake in tests", "es": "una API externa que quieres simular en tests", "zh": "一个你想在测试里模拟的外部 API"}[
            lang
        ]
    if "createsuperuser" in k:
        return {"en": "an admin panel you need to access today", "es": "un panel admin al que necesitas entrar hoy", "zh": "你现在就要进去的管理后台"}[
            lang
        ]
    if "collectstatic" in k:
        return {"en": "a production deploy where CSS must load", "es": "un deploy donde el CSS no puede fallar", "zh": "一个 CSS 不能掉链子的生产部署"}[
            lang
        ]

    # Broader pools per category.
    pools = {
        "djangoBasics": {
            "en": [
                "a tiny blog MVP",
                "a backoffice prototype",
                "a weekend side project",
                "a quick proof of concept",
            ],
            "es": [
                "un mini blog MVP",
                "un backoffice sencillo",
                "un proyecto de fin de semana",
                "una prueba de concepto rapida",
            ],
            "zh": ["一个小博客 MVP", "一个简单后台", "周末小项目", "快速验证想法"],
        },
        "djangoSettings": {
            "en": ["production settings", "a new app integration", "logging and observability", "caching and performance"],
            "es": ["settings de produccion", "integrar una app nueva", "logging y observabilidad", "cache y rendimiento"],
            "zh": ["生产配置", "接入新应用", "日志与可观测性", "缓存与性能"],
        },
        "djangoUrls": {
            "en": ["clean routes", "a detail page", "an API-ish endpoint", "redirect flows"],
            "es": ["rutas limpias", "una pagina de detalle", "un endpoint tipo API", "flujos con redirects"],
            "zh": ["清晰路由", "详情页", "类似 API 的端点", "跳转流程"],
        },
        "djangoTemplates": {
            "en": ["a product page", "an email template", "a dashboard layout", "a shared base template"],
            "es": ["una pagina de producto", "un email", "un dashboard", "un base template compartido"],
            "zh": ["商品页", "邮件模板", "仪表盘", "共享基础模板"],
        },
        "djangoStatic": {
            "en": ["CSS and images", "user uploads", "media URLs", "static files in production"],
            "es": ["CSS e imagenes", "subidas de usuarios", "URLs de media", "static en produccion"],
            "zh": ["CSS 和图片", "用户上传", "媒体 URL", "生产静态资源"],
        },
        "djangoModels": {
            "en": ["a database table", "relationships between entities", "data constraints", "searchable fields"],
            "es": ["una tabla en la base de datos", "relaciones entre entidades", "reglas de datos", "campos buscables"],
            "zh": ["一张数据表", "实体关系", "数据约束", "可搜索字段"],
        },
        "djangoOrm": {
            "en": ["filtering lists", "avoiding N+1 queries", "reporting/analytics", "fast pagination"],
            "es": ["filtrar listados", "evitar N+1 queries", "reportes/analitica", "paginacion rapida"],
            "zh": ["筛选列表", "避免 N+1 查询", "报表分析", "快速分页"],
        },
        "djangoMigrations": {
            "en": ["a schema change", "a safe deploy", "keeping DB and code in sync", "data backfills"],
            "es": ["un cambio de esquema", "un deploy seguro", "sincronizar DB y codigo", "backfills de datos"],
            "zh": ["表结构变更", "安全部署", "同步代码与数据库", "数据回填"],
        },
        "djangoAdmin": {
            "en": ["moderating content", "support tooling", "an internal backoffice", "fast data edits"],
            "es": ["moderar contenido", "herramientas de soporte", "un backoffice interno", "ediciones rapidas"],
            "zh": ["内容审核", "客服工具", "内部后台", "快速编辑数据"],
        },
        "djangoForms": {
            "en": ["signup", "checkout", "contact forms", "profile editing"],
            "es": ["registro", "checkout", "formularios de contacto", "editar perfil"],
            "zh": ["注册", "结账", "联系表单", "编辑资料"],
        },
        "djangoAuth": {
            "en": ["private pages", "role-based access", "sessions", "admin actions"],
            "es": ["paginas privadas", "roles", "sesiones", "acciones admin"],
            "zh": ["私有页面", "角色权限", "会话", "后台操作"],
        },
        "djangoCBV": {
            "en": ["CRUD screens", "lists", "detail pages", "forms"],
            "es": ["pantallas CRUD", "listas", "paginas de detalle", "formularios"],
            "zh": ["CRUD 页面", "列表", "详情页", "表单"],
        },
        "djangoMiddleware": {
            "en": ["security headers", "request timing", "global checks", "safe defaults"],
            "es": ["headers de seguridad", "timing de requests", "checks globales", "defaults seguros"],
            "zh": ["安全头", "请求耗时", "全局检查", "安全默认值"],
        },
        "djangoTesting": {
            "en": ["a safe refactor", "CI confidence", "bug repros", "faster feedback"],
            "es": ["un refactor seguro", "confianza en CI", "repro de bugs", "feedback rapido"],
            "zh": ["安全重构", "CI 信心", "复现 bug", "更快反馈"],
        },
        "djangoDeploy": {
            "en": ["production", "performance", "caching", "deployment tweaks"],
            "es": ["produccion", "rendimiento", "cache", "detalles de deploy"],
            "zh": ["生产环境", "性能", "缓存", "部署细节"],
        },
    }

    pool = pools.get(cat_dir, {}).get(lang)
    if not pool:
        return {"en": "a real project", "es": "un proyecto real", "zh": "真实项目"}[lang]
    return hpick(pool, f"{lang}:{cat_dir}:{ex_id}:scenario")


def instructions(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str], out_text: str) -> str:
    must_preview = ", ".join(must[:3])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)

    endings = {
        "en": [
            "Keep it tiny, but make the idea obvious ✅",
            "Tiny snippet, big skill. Hit Run when ready 😄",
            "If it reads well, it counts. Let’s go 🚀",
            "Aim for “minimum that proves it” 🎯",
        ],
        "es": [
            "Que sea corto, pero que se entienda ✅",
            "Snippet pequeno, idea grande. Dale a Run cuando lo tengas 😄",
            "Si se entiende, cuenta. Vamos 🚀",
            "Apunta al “minimo que demuestra la idea” 🎯",
        ],
        "zh": ["越小越好，但要看得懂 ✅", "写对了就 Run 😄", "目标：最小但能证明概念 🎯", "做到清晰就算过关 🚀"],
    }[lang]

    templates = {
        "en": [
            "🎯 Mission: {topic}.\n\nScene: you’re building {scene}.\nWrite the minimum snippet that includes: {must}.\n\n{end}",
            "🧩 Mini quest: {topic}.\n\nReal life: {scene}.\nYour snippet should mention: {must}.\n\n{end}",
            "🚀 Today’s goal: {topic}.\n\nContext: {scene}.\nKeep it minimal — but don’t hide the key parts: {must}.\n\n{end}",
            "🎬 Real scenario: {scene}.\n\nShow {topic} with a tiny snippet.\nChecklist: {must}.\n\n{end}",
            "🛠️ Workshop: {topic}.\n\nBuild it like you would in {scene}.\nJust make sure {must} shows up.\n\n{end}",
        ],
        "es": [
            "🎯 Mision: {topic}.\n\nEscena: estas montando {scene}.\nEscribe el snippet minimo que incluya: {must}.\n\n{end}",
            "🧩 Mini reto: {topic}.\n\nVida real: {scene}.\nTu snippet deberia mencionar: {must}.\n\n{end}",
            "🚀 Objetivo de hoy: {topic}.\n\nContexto: {scene}.\nHazlo minimo, pero sin esconder las piezas clave: {must}.\n\n{end}",
            "🎬 Escena real: {scene}.\n\nDemuestra {topic} con un snippet cortito.\nChecklist: {must}.\n\n{end}",
            "🛠️ Taller: {topic}.\n\nPiensa en {scene} y escribe lo minimo.\nCon que aparezca {must}, perfecto.\n\n{end}",
            "👣 Paso a paso (pero rapido): {topic}.\n\n1) Empieza por {must}.\n2) Recorta lo que sobre.\n\nContexto: {scene}.\n{end}",
        ],
        "zh": [
            "🎯 任务：{topic}。\n\n场景：你在做 {scene}。\n写出最小片段，至少要出现：{must}。\n\n{end}",
            "🧩 小关卡：{topic}。\n\n真实场景：{scene}。\n代码里要看到：{must}。\n\n{end}",
            "🚀 今日目标：{topic}。\n\n上下文：{scene}。\n尽量写少，但别漏掉关键点：{must}。\n\n{end}",
            "🎬 场景：{scene}。\n\n用一个很短的片段表达 {topic}。\n清单：{must}。\n\n{end}",
            "🛠️ 小工坊：{topic}。\n\n像真实项目那样写在 {scene} 里会用到的最小代码。\n只要出现：{must}。\n\n{end}",
        ],
    }[lang]

    tpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:instr_tpl")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:instr_end")
    return tpl.format(topic=topic, scene=scene, must=must_preview, out=out_text, end=end)


def info(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str], out_text: str) -> str:
    k = kw_blob(topic, must)
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    must_preview = ", ".join(must[:2]) if must else topic

    # A few keyword-driven "why it matters" blocks (the rest falls back to
    # category-driven copy with exercise-specific details).
    if "startproject" in k:
        why = {
            "en": "startproject scaffolds the whole Django skeleton (settings, urls, manage.py).\nIt saves you from inventing structure and naming everything by hand.",
            "es": "startproject te crea el esqueleto entero (settings, urls, manage.py).\nTe ahorra inventarte carpetas y nombres “a ojo”.",
            "zh": "startproject 会把项目骨架一次性搭好（settings、urls、manage.py）。\n不用你手动“拼目录”，后面更稳。",
        }[lang]
        when = {
            "en": "Use it whenever you start a new Django codebase (even a small prototype).",
            "es": "Lo usas cada vez que arrancas un proyecto nuevo (aunque sea un prototipo).",
            "zh": "每次新建 Django 项目都会用到（哪怕只是原型）。",
        }[lang]
        tip = {"en": "Tip: pick a clean project name now — you’ll type it a lot 😄", "es": "Tip: elige un nombre limpio: lo vas a escribir mil veces 😄", "zh": "小提示：项目名先想好，后面会敲很多次 😄"}[
            lang
        ]
    elif "runserver" in k:
        why = {
            "en": "runserver is your feedback loop: you see errors, logs and changes quickly.\nFast feedback is how you learn (and how you ship).",
            "es": "runserver es tu bucle de feedback: ves errores, logs y cambios al momento.\nFeedback rapido = aprender y avanzar.",
            "zh": "runserver 是最快的反馈回路：错误、日志、改动都能立刻看到。\n反馈越快，学习和迭代越快。",
        }[lang]
        when = {
            "en": "Use it during development when you want to test a route in seconds.",
            "es": "Lo usas en desarrollo para probar una ruta en segundos.",
            "zh": "开发阶段想秒测路由时就用它。",
        }[lang]
        tip = {"en": "Tip: keep the terminal visible — errors here save you time 👀", "es": "Tip: deja la terminal a la vista: te ahorra tiempo 👀", "zh": "小提示：终端别关，很多问题一眼就能看到 👀"}[
            lang
        ]
    elif "startapp" in k:
        why = {
            "en": "startapp creates a reusable app module (models, views, tests) instead of one giant blob.\nModular apps scale better.",
            "es": "startapp crea un modulo reutilizable (models, views, tests) en vez de un megarchivo.\nLas apps modulares escalan mejor.",
            "zh": "startapp 会生成一个可复用的 app 模块（models、views、tests）。\n模块化比“一个大泥团”更好扩展。",
        }[lang]
        when = {
            "en": "Use it when you add a new feature area (blog, billing, support).",
            "es": "Lo usas cuando anades un area nueva (blog, pagos, soporte).",
            "zh": "新增功能域（博客、支付、客服）时就会用到。",
        }[lang]
        tip = {"en": "Tip: name apps by feature, not by tech (e.g. blog, not utils) 🧠", "es": "Tip: nombra por feature, no por “utils” 🧠", "zh": "小提示：按业务命名 app，比 utils 更清晰 🧠"}[
            lang
        ]
    elif "installed_apps" in k:
        why = {
            "en": "INSTALLED_APPS is Django’s “on/off switch” for apps.\nIf it’s not installed, migrations, templates and signals may never load.",
            "es": "INSTALLED_APPS es el “interruptor” de Django.\nSi no registras la app, no cargan migraciones, templates o signals.",
            "zh": "INSTALLED_APPS 就是 Django 的“总开关”。\n没加进去，迁移、模板、信号都可能不加载。",
        }[lang]
        when = {
            "en": "Use it every time you create or add an app, or enable contrib features.",
            "es": "Lo usas cada vez que creas/anades una app o activas contrib.",
            "zh": "每次新增 app 或开启 contrib 功能都会用到。",
        }[lang]
        tip = {"en": "Tip: keep it ordered (project apps together) to avoid duplicates 🧹", "es": "Tip: ordenalo (apps del proyecto juntas) para evitar duplicados 🧹", "zh": "小提示：保持有序，避免重复/冲突 🧹"}[
            lang
        ]
    elif "httpresponse" in k:
        why = {
            "en": "HttpResponse is the simplest “return something” in a view.\nIt helps you learn request/response before templates and models.",
            "es": "HttpResponse es la forma mas directa de “devolver algo” en una vista.\nTe ensena request/response antes de templates y modelos.",
            "zh": "HttpResponse 是视图里最直接的返回方式。\n先把 request/response 流程搞清楚，再上模板/模型更顺。",
        }[lang]
        when = {
            "en": "Use it for quick endpoints, health checks, or tiny debug responses.",
            "es": "Lo usas para endpoints simples, health checks o debug rapido.",
            "zh": "用于简单接口、健康检查、快速调试返回。",
        }[lang]
        tip = {"en": "Tip: once you can return text, JSON is the same game 😄", "es": "Tip: si devuelves texto, luego JSON es el mismo juego 😄", "zh": "小提示：先会返回文本，JSON 也就不远了 😄"}[
            lang
        ]
    elif "render(" in k or ("render" in k and "home.html" in k):
        why = {
            "en": "render keeps Python logic and HTML separate.\nThat separation makes pages easier to maintain and redesign.",
            "es": "render separa la logica Python del HTML.\nEso hace las paginas mas faciles de mantener y retocar.",
            "zh": "render 把 Python 逻辑和 HTML 分开。\n分层清晰，维护和改版都更轻松。",
        }[lang]
        when = {
            "en": "Use it whenever a view needs to show a template (most web pages).",
            "es": "Lo usas cuando una vista tiene que mostrar un template (casi todas).",
            "zh": "视图要渲染页面时（大多数情况）就会用到。",
        }[lang]
        tip = {"en": "Tip: pass only the data the template needs; keep views lean 🧩", "es": "Tip: pasa solo lo necesario al contexto; vistas ligeras 🧩", "zh": "小提示：context 只给必要数据，视图更干净 🧩"}[
            lang
        ]
    elif "path(" in k and "urlpatterns" in k:
        why = {
            "en": "urlpatterns is the routing table: without it, your view is unreachable.\nIt’s the bridge from URL to code.",
            "es": "urlpatterns es la tabla de rutas: sin eso, tu vista no existe.\nEs el puente de URL a codigo.",
            "zh": "urlpatterns 就是路由表：没有它，视图根本到不了。\nURL 到代码的桥梁在这里。",
        }[lang]
        when = {
            "en": "Use it whenever you add a new page or endpoint.",
            "es": "Lo usas cada vez que anades una pagina o endpoint.",
            "zh": "新增页面/接口就需要改它。",
        }[lang]
        tip = {"en": "Tip: give routes a name; reverse() saves you later 🧠", "es": "Tip: pon name a las rutas; reverse() te salva luego 🧠", "zh": "小提示：路由加 name，reverse() 以后更省事 🧠"}[
            lang
        ]
    elif "makemigrations" in k:
        why = {
            "en": "makemigrations turns model changes into a migration file.\nIt’s the first half of shipping schema changes safely.",
            "es": "makemigrations convierte cambios en un archivo de migracion.\nEs la primera mitad de cambiar el esquema sin romper.",
            "zh": "makemigrations 把模型改动变成迁移文件。\n这是“安全改表”的第一步。",
        }[lang]
        when = {
            "en": "Use it after editing models (fields, relations, constraints).",
            "es": "Lo usas despues de tocar modelos (campos, relaciones, constraints).",
            "zh": "改完模型（字段/关系/约束）就要跑它。",
        }[lang]
        tip = {"en": "Tip: review the migration before applying it 👀", "es": "Tip: revisa la migracion antes de aplicarla 👀", "zh": "小提示：执行前先看一眼迁移内容 👀"}[
            lang
        ]
    elif "migrate" in k and "makemigrations" not in k:
        why = {
            "en": "migrate applies migrations to the database.\nThis is what actually changes tables and keeps environments consistent.",
            "es": "migrate aplica migraciones en la base de datos.\nEs lo que cambia tablas de verdad y sincroniza entornos.",
            "zh": "migrate 会把迁移真正应用到数据库。\n表结构一致，环境才不会乱套。",
        }[lang]
        when = {
            "en": "Use it when you pull changes, deploy, or set up a new environment.",
            "es": "Lo usas al traer cambios, al desplegar o al montar un entorno nuevo.",
            "zh": "拉代码、部署、建新环境时都要跑。",
        }[lang]
        tip = {"en": "Tip: run it in staging before production when in doubt 🧯", "es": "Tip: si dudas, primero en staging 🧯", "zh": "小提示：不确定就先在 staging 跑一遍 🧯"}[
            lang
        ]
    elif "admin.site.register" in k:
        why = {
            "en": "Registering a model is what makes it appear in Django admin.\nIt’s the fastest way to get internal CRUD.",
            "es": "Registrar un modelo es lo que lo hace aparecer en el admin.\nEs el atajo para tener CRUD interno.",
            "zh": "注册模型后它才会出现在 admin。\n这是最快的内部 CRUD 开箱即用。",
        }[lang]
        when = {
            "en": "Use it when you want to manage data without building a UI.",
            "es": "Lo usas cuando quieres gestionar datos sin montar UI propia.",
            "zh": "不想自己做管理界面时就用它。",
        }[lang]
        tip = {"en": "Tip: start simple, customize ModelAdmin only when needed 🛠️", "es": "Tip: empieza simple y customiza ModelAdmin cuando haga falta 🛠️", "zh": "小提示：先能用，再逐步定制 ModelAdmin 🛠️"}[
            lang
        ]
    elif "usercreationform" in k:
        why = {
            "en": "UserCreationForm gives you a ready signup form with validation and password handling.\nSafer than rolling your own password logic.",
            "es": "UserCreationForm te da registro con validacion y manejo de passwords.\nMas seguro que inventarte tu propia logica.",
            "zh": "UserCreationForm 提供现成注册表单：校验、密码处理都帮你做了。\n比自己手写更安全。",
        }[lang]
        when = {
            "en": "Use it for signup flows or internal user creation.",
            "es": "Lo usas en signup o alta interna de usuarios.",
            "zh": "注册流程或后台新增用户时会用到。",
        }[lang]
        tip = {"en": "Tip: extend it when you need extra fields; don’t rewrite it ✍️", "es": "Tip: extiendelo si necesitas mas campos; no lo rehagas ✍️", "zh": "小提示：需要额外字段就扩展它，别重写 ✍️"}[
            lang
        ]
    elif "listview" in k:
        why = {
            "en": "ListView is the standard “show a list of objects” pattern.\nLess boilerplate, more consistency.",
            "es": "ListView es el patron estandar de listar objetos.\nMenos boilerplate y mas consistencia.",
            "zh": "ListView 是展示列表的标准方式。\n少写样板代码，也更一致。",
        }[lang]
        when = {
            "en": "Use it for indexes: posts, products, search results.",
            "es": "Lo usas en indices: posts, productos, resultados de busqueda.",
            "zh": "用于文章列表、商品列表、搜索结果等。",
        }[lang]
        tip = {"en": "Tip: override get_queryset for filters 🔍", "es": "Tip: usa get_queryset para filtrar 🔍", "zh": "小提示：需要筛选就改 get_queryset 🔍"}[
            lang
        ]
    elif "detailview" in k:
        why = {
            "en": "DetailView is the “show one object” pattern.\nCleaner than hand-writing get/404 each time.",
            "es": "DetailView es el patron de ver un objeto.\nMas limpio que escribir get/404 cada vez.",
            "zh": "DetailView 是“展示单个对象”的模式。\n比每次手写 get/404 更干净。",
        }[lang]
        when = {
            "en": "Use it for detail pages (post detail, product detail).",
            "es": "Lo usas para paginas de detalle (post, producto).",
            "zh": "用于详情页（文章详情、商品详情）。",
        }[lang]
        tip = {"en": "Tip: set template_name so templates stay predictable 🧭", "es": "Tip: define template_name para templates previsibles 🧭", "zh": "小提示：设好 template_name，模板更好找 🧭"}[
            lang
        ]
    elif "select_related" in k:
        why = {
            "en": "select_related avoids N+1 queries for ForeignKey relations.\nFewer queries = faster pages.",
            "es": "select_related evita N+1 en ForeignKey.\nMenos queries = paginas mas rapidas.",
            "zh": "select_related 能避免 ForeignKey 的 N+1 查询。\n查询少了，页面自然更快。",
        }[lang]
        when = {
            "en": "Use it when listing objects that access related data (author, category…).",
            "es": "Lo usas al listar objetos con datos relacionados (autor, categoria…).",
            "zh": "列表里要用到关联字段（author、category）时就用它。",
        }[lang]
        tip = {"en": "Tip: check query count in debug toolbar 👀", "es": "Tip: mira el numero de queries (debug toolbar) 👀", "zh": "小提示：用 debug toolbar 看 query 数 👀"}[
            lang
        ]
    elif "prefetch_related" in k:
        why = {
            "en": "prefetch_related batches queries for many-to-many / reverse relations.\nIt’s a classic fix for slow list pages.",
            "es": "prefetch_related agrupa queries en many-to-many / inversas.\nFix clasico para listados lentos.",
            "zh": "prefetch_related 会批量预取 many-to-many / 反向关系。\n列表页变慢时它经常救命。",
        }[lang]
        when = {
            "en": "Use it when iterating items and touching related collections.",
            "es": "Lo usas cuando iteras items y tocas colecciones relacionadas.",
            "zh": "循环列表同时访问关联集合时使用。",
        }[lang]
        tip = {"en": "Tip: prefetch only what you need; watch memory 🧠", "es": "Tip: prefetch solo lo necesario; ojo a memoria 🧠", "zh": "小提示：只 prefetch 必要内容，注意内存 🧠"}[
            lang
        ]
    elif "is_valid" in k and "cleaned_data" in k:
        why = {
            "en": "is_valid + cleaned_data is how you get trusted input.\nIt stops raw user data from leaking into your DB.",
            "es": "is_valid + cleaned_data es como obtienes input fiable.\nEvita meter datos crudos en la DB.",
            "zh": "is_valid + cleaned_data 能拿到可信输入。\n别把原始用户数据直接塞进 DB。",
        }[lang]
        when = {
            "en": "Use it on POST handlers before saving anything.",
            "es": "Lo usas en POST antes de guardar nada.",
            "zh": "处理 POST 时，保存前先校验。",
        }[lang]
        tip = {"en": "Tip: keep validation in the form, not the view ✨", "es": "Tip: valida en el form, no en la vista ✨", "zh": "小提示：校验放在 form 里更干净 ✨"}[
            lang
        ]
    elif "commit=false" in k:
        why = {
            "en": "save(commit=False) lets you set extra fields before writing to DB.\nPerfect when the form doesn’t include everything (like author).",
            "es": "save(commit=False) te deja completar campos extra antes de guardar.\nIdeal si el form no trae todo (author, user…).",
            "zh": "save(commit=False) 允许你先补齐字段再保存。\n表单里没有 author 这类字段时很好用。",
        }[lang]
        when = {
            "en": "Use it when you need request.user or computed values attached.",
            "es": "Lo usas cuando necesitas meter request.user o valores calculados.",
            "zh": "需要绑定 request.user 或计算值时使用。",
        }[lang]
        tip = {"en": "Tip: remember to call obj.save() afterwards 😄", "es": "Tip: luego no te olvides de obj.save() 😄", "zh": "小提示：别忘了最后 obj.save() 😄"}[
            lang
        ]
    elif "initial" in k and "contactform" in k:
        why = {
            "en": "Initial data prefills forms so users type less.\nTiny UX detail, big “polish” feeling.",
            "es": "Los datos iniciales rellenan forms para que el usuario escriba menos.\nDetalle pequeno, sensacion “pro”.",
            "zh": "initial 让表单预填：用户少输入，体验更顺。\n小细节，但很加分。",
        }[lang]
        when = {
            "en": "Use it for edit forms, defaults, or known values.",
            "es": "Lo usas en editar, defaults o valores que ya conoces.",
            "zh": "编辑表单、默认值、已知数据时使用。",
        }[lang]
        tip = {"en": "Tip: initial is not validation — still validate on submit ✅", "es": "Tip: initial no valida; valida al enviar ✅", "zh": "小提示：initial 不是校验，提交时还要校验 ✅"}[
            lang
        ]
    elif "authenticate" in k and "login" in k:
        why = {
            "en": "authenticate checks credentials, login attaches the user to the session.\nTwo steps, fewer bugs.",
            "es": "authenticate comprueba credenciales y login mete al usuario en sesion.\nDos pasos, menos bugs.",
            "zh": "authenticate 校验账号密码，login 写入 session。\n职责分开更清晰。",
        }[lang]
        when = {
            "en": "Use it when building a login form or endpoint.",
            "es": "Lo usas al montar un login.",
            "zh": "做登录表单/接口时使用。",
        }[lang]
        tip = {"en": "Tip: handle authenticate(None) gracefully 🙂", "es": "Tip: maneja el None de authenticate 🙂", "zh": "小提示：authenticate 失败会返回 None 🙂"}[
            lang
        ]
    elif "logout" in k:
        why = {
            "en": "logout clears the session so the user is truly signed out.\nIt’s the clean exit door for auth.",
            "es": "logout limpia la sesion para que el usuario salga de verdad.\nEs la puerta de salida de auth.",
            "zh": "logout 会清掉 session，用户才算真正退出。\n这是认证流程的出口。",
        }[lang]
        when = {
            "en": "Use it for sign-out buttons and security-sensitive flows.",
            "es": "Lo usas en botones de salir y flujos sensibles.",
            "zh": "用于退出按钮和安全敏感流程。",
        }[lang]
        tip = {"en": "Tip: redirect after logout to avoid weird back-button behavior 🧭", "es": "Tip: redirige tras logout para evitar lios con el back 🧭", "zh": "小提示：logout 后做 redirect，避免返回键怪怪的 🧭"}[
            lang
        ]
    elif "set_expiry" in k:
        why = {
            "en": "Session expiry controls how long a login stays valid.\nIt’s a balance between convenience and security.",
            "es": "La expiracion de sesion decide cuanto dura un login.\nEquilibrio entre comodidad y seguridad.",
            "zh": "会话过期时间决定登录能保持多久。\n在方便与安全之间取平衡。",
        }[lang]
        when = {
            "en": "Use it for “remember me”, kiosks, or stricter admin sessions.",
            "es": "Lo usas para “remember me”, kioscos o admin mas estricto.",
            "zh": "用于“记住我”、自助机、或更严格的后台会话。",
        }[lang]
        tip = {"en": "Tip: shorter expiry for sensitive areas is a good default 🔐", "es": "Tip: para zonas sensibles, expira antes 🔐", "zh": "小提示：敏感区域设置更短过期更安全 🔐"}[
            lang
        ]
    elif "get_object_or_404" in k:
        why = {
            "en": "get_object_or_404 is the common pattern: fetch or return 404.\nCleaner code, fewer edge-case bugs.",
            "es": "get_object_or_404 es el patron: o existe o 404.\nCodigo mas limpio, menos bugs raros.",
            "zh": "get_object_or_404：取到就用，取不到就 404。\n更干净，也更少边界 bug。",
        }[lang]
        when = {
            "en": "Use it on detail pages and edit views by id/slug.",
            "es": "Lo usas en detalle y editar por id/slug.",
            "zh": "详情页、按 id/slug 编辑时常用。",
        }[lang]
        tip = {"en": "Tip: pair it with slugs for nice URLs 🧭", "es": "Tip: combinalo con slugs para URLs bonitas 🧭", "zh": "小提示：配合 slug，URL 更友好 🧭"}[
            lang
        ]
    elif "reverse" in k or "redirect" in k:
        why = {
            "en": "reverse/redirect avoid hardcoded URLs.\nChange a route once and navigation stays correct.",
            "es": "reverse/redirect evitan URLs hardcodeadas.\nCambias una ruta y el resto sigue bien.",
            "zh": "reverse/redirect 不用硬编码 URL。\n改一次路由，跳转都跟着对。",
        }[lang]
        when = {
            "en": "Use it after POST requests, after saves, and for predictable flows.",
            "es": "Lo usas tras POST, tras guardar y para flujos previsibles.",
            "zh": "POST 后、保存后、需要稳定流程时使用。",
        }[lang]
        tip = {"en": "Tip: redirect after POST helps prevent double submits ✅", "es": "Tip: redirect tras POST evita dobles envios ✅", "zh": "小提示：POST 后 redirect 可防重复提交 ✅"}[
            lang
        ]
    elif "models.model" in k:
        why = {
            "en": "models.Model is where DB tables start.\nOnce the model is right, everything else gets easier.",
            "es": "models.Model es donde empiezan tus tablas.\nSi el modelo esta bien, lo demas es mas facil.",
            "zh": "models.Model 是数据表的起点。\n模型设计好，后面就顺了。",
        }[lang]
        when = {
            "en": "Use it whenever you need persistent data (posts, products, users).",
            "es": "Lo usas cuando necesitas datos persistentes (posts, productos, usuarios).",
            "zh": "只要需要持久化数据就会用到。",
        }[lang]
        tip = {"en": "Tip: evolve models via migrations, not manual DB edits 🧬", "es": "Tip: evoluciona con migraciones, no tocando la DB a mano 🧬", "zh": "小提示：用迁移演进，不要手改数据库 🧬"}[
            lang
        ]
    elif "foreignkey" in k:
        why = {
            "en": "ForeignKey models one-to-many relationships (post -> author).\nThat’s how relational data stays connected.",
            "es": "ForeignKey modela 1-a-N (post -> autor).\nAsi conectas datos de verdad.",
            "zh": "ForeignKey 表示一对多关系（文章 -> 作者）。\n关系型数据的核心。",
        }[lang]
        when = {
            "en": "Use it when one thing belongs to another (comment -> post, order -> user).",
            "es": "Lo usas cuando algo pertenece a otra cosa (comentario->post, pedido->user).",
            "zh": "一个东西属于另一个东西时用（评论->文章）。",
        }[lang]
        tip = {"en": "Tip: choose on_delete intentionally ⚠️", "es": "Tip: elige bien on_delete ⚠️", "zh": "小提示：on_delete 要慎重 ⚠️"}[
            lang
        ]
    elif "manytomanyfield" in k:
        why = {
            "en": "ManyToManyField models tags/likes/roles without manual join tables.\nPowerful, but watch queries.",
            "es": "ManyToManyField modela tags/likes/roles sin tablas a mano.\nPotente, pero ojo a queries.",
            "zh": "ManyToManyField 适合标签/点赞/角色等多对多。\n很方便，但要注意查询效率。",
        }[lang]
        when = {
            "en": "Use it when both sides can have many of the other (post <-> tag).",
            "es": "Lo usas cuando ambos lados pueden tener muchos (post <-> tag).",
            "zh": "双方都可能很多时用（文章<->标签）。",
        }[lang]
        tip = {"en": "Tip: prefetch_related is your friend on list pages 🔍", "es": "Tip: prefetch_related ayuda en listados 🔍", "zh": "小提示：列表页配 prefetch_related 🔍"}[
            lang
        ]
    elif "__str__" in k:
        why = {
            "en": "__str__ makes admin and debugging readable.\nTiny method, big quality-of-life upgrade.",
            "es": "__str__ hace admin y debug legibles.\nMetodo pequeno, mejora grande.",
            "zh": "__str__ 让 admin/debug 更可读。\n小方法，大提升。",
        }[lang]
        when = {
            "en": "Use it on any model you’ll see in admin or logs.",
            "es": "Lo usas en cualquier modelo que veras en admin o logs.",
            "zh": "模型会出现在 admin/log 里就写它。",
        }[lang]
        tip = {"en": "Tip: return something humans recognize (title, email, id) 👀", "es": "Tip: devuelve algo humano (titulo, email, id) 👀", "zh": "小提示：返回人能认出来的东西 👀"}[
            lang
        ]
    elif "objects.filter" in k or ".filter(" in k:
        why = {
            "en": "filter() is how you narrow data to what the user asked for.\nGood filters turn noise into signal.",
            "es": "filter() es como reduces datos a lo que el usuario pide.\nConvierte ruido en señal.",
            "zh": "filter() 用来把数据缩到用户真正想看的那部分。\n过滤做得好，列表才有价值。",
        }[lang]
        when = {
            "en": "Use it for search, categories, date ranges, status filters…",
            "es": "Lo usas en busqueda, categorias, rangos de fecha, estados…",
            "zh": "搜索、分类、日期范围、状态筛选都靠它。",
        }[lang]
        tip = {"en": "Tip: QuerySets are lazy; chain filters safely ✨", "es": "Tip: QuerySets son lazy; encadena filters ✨", "zh": "小提示：QuerySet 是惰性的，可以链式写 ✨"}[
            lang
        ]
    elif "order_by" in k:
        why = {
            "en": "order_by controls how lists feel (latest first, top ranked).\nSorting is part of UX.",
            "es": "order_by decide como se ve un listado (ultimos, top).\nOrdenar tambien es UX.",
            "zh": "order_by 决定列表排序（最新、最热）。\n排序也是 UX。",
        }[lang]
        when = {
            "en": "Use it on feeds, dashboards and admin lists.",
            "es": "Lo usas en feeds, dashboards y listas del admin.",
            "zh": "信息流、仪表盘、后台列表都会用。",
        }[lang]
        tip = {"en": "Tip: add DB indexes for common order/filter fields 📈", "es": "Tip: pon indices en campos comunes 📈", "zh": "小提示：常用排序字段记得加索引 📈"}[
            lang
        ]
    elif "modelform" in k:
        why = {
            "en": "ModelForm builds a form from a model.\nLess duplication, fewer validation bugs.",
            "es": "ModelForm crea un form desde un modelo.\nMenos duplicacion, menos bugs.",
            "zh": "ModelForm 可以从模型直接生成表单。\n少重复，也少校验 bug。",
        }[lang]
        when = {
            "en": "Use it for CRUD screens backed by models.",
            "es": "Lo usas en pantallas CRUD de modelos.",
            "zh": "模型 CRUD 页面很常用。",
        }[lang]
        tip = {"en": "Tip: select fields explicitly to avoid exposing sensitive data 🔒", "es": "Tip: declara fields para no exponer de mas 🔒", "zh": "小提示：fields 明确写，避免暴露敏感字段 🔒"}[
            lang
        ]
    elif "form.errors" in k:
        why = {
            "en": "form.errors is how users learn what to fix.\nGood errors reduce support and frustration.",
            "es": "form.errors es como el usuario sabe que arreglar.\nBuenos errores = menos frustracion y soporte.",
            "zh": "form.errors 让用户知道哪里填错。\n错误信息好，支持压力就小。",
        }[lang]
        when = {
            "en": "Use it when validation fails so the UI isn’t silent.",
            "es": "Lo usas cuando falla validacion para que la UI no se quede muda.",
            "zh": "校验失败时别沉默，把错误展示出来。",
        }[lang]
        tip = {"en": "Tip: keep messages actionable (“email is required”) 🧠", "es": "Tip: mensajes accionables (“email requerido”) 🧠", "zh": "小提示：错误信息要可行动 🧠"}[
            lang
        ]
    elif "objects.create" in k:
        why = {
            "en": "objects.create is the shortest way to persist new data.\nGreat for seed data and simple writes.",
            "es": "objects.create es el atajo para guardar datos.\nGenial para seed y escrituras simples.",
            "zh": "objects.create 是最短的写入方式。\n做种子数据或简单写入很方便。",
        }[lang]
        when = {
            "en": "Use it when you want to create a record in one shot.",
            "es": "Lo usas cuando quieres crear un registro del tiron.",
            "zh": "一次性创建记录时用。",
        }[lang]
        tip = {"en": "Tip: for bulk inserts, use bulk_create for speed 🚀", "es": "Tip: para muchos, bulk_create es mas rapido 🚀", "zh": "小提示：大量插入用 bulk_create 更快 🚀"}[
            lang
        ]
    elif "post_save" in k and "connect" in k:
        why = {
            "en": "Signals let you react to events (like “a user was created”).\nPowerful, but keep them predictable.",
            "es": "Los signals te dejan reaccionar a eventos (como “se creo un usuario”).\nPotentes, pero usalos con cabeza.",
            "zh": "Signals 让你对事件做反应（比如“用户创建了”）。\n很强大，但要保持可控。",
        }[lang]
        when = {
            "en": "Use it for side effects like creating a Profile after User creation.",
            "es": "Lo usas para efectos como crear Profile al crear User.",
            "zh": "用于创建用户后自动建 Profile 这类副作用。",
        }[lang]
        tip = {"en": "Tip: avoid heavy work in signals; push to background if needed ⚙️", "es": "Tip: no metas trabajo pesado en signals; delega si hace falta ⚙️", "zh": "小提示：signal 里别做重活，需要就丢到后台 ⚙️"}[
            lang
        ]
    elif "override_settings" in k:
        why = {
            "en": "override_settings lets tests run with temporary config.\nTest edge cases without changing global settings.",
            "es": "override_settings te deja tests con config temporal.\nPruebas casos sin tocar settings globales.",
            "zh": "override_settings 让测试用临时配置跑。\n不用改全局 settings 也能测边界情况。",
        }[lang]
        when = {
            "en": "Use it when behavior depends on settings (DEBUG, cache, emails).",
            "es": "Lo usas cuando el comportamiento depende de settings (DEBUG, cache, email).",
            "zh": "行为依赖 settings（DEBUG、缓存、邮件）时使用。",
        }[lang]
        tip = {"en": "Tip: keep overrides minimal so tests stay readable 👀", "es": "Tip: overrides pequenos para que el test se lea 👀", "zh": "小提示：只覆盖必要项，测试更好读 👀"}[
            lang
        ]
    elif "login_required" in k:
        why = {
            "en": "login_required is the doorman: it keeps anonymous users out of private views.\nIt’s one of the easiest ways to avoid accidental data leaks.",
            "es": "login_required es el portero: deja fuera a usuarios anonimos de vistas privadas.\nEs una de las formas mas faciles de evitar fugas de datos por despiste.",
            "zh": "login_required 就像门卫：没登录的人进不去私有页面。\n它能帮你避免“忘了保护路由”这种低级安全坑。",
        }[lang]
        when = {
            "en": "Use it on routes like /dashboard, /settings, invoices, orders… anything that should be private.",
            "es": "Usalo en rutas tipo /dashboard, /settings, facturas, pedidos… todo lo que sea privado.",
            "zh": "用于 /dashboard、/settings、订单、发票这类私有页面。",
        }[lang]
        tip = {"en": "Tip: test it with an anonymous client to confirm the redirect 🔒", "es": "Tip: prueba como anonimo para ver el redirect 🔒", "zh": "小提示：用匿名用户测一次跳转 🔒"}[
            lang
        ]
    elif "permission_required" in k or "has_perm" in k:
        why = {
            "en": "Permissions are how you stop “oops, everyone can edit everything”.\nThey let you ship roles without sprinkling if-statements everywhere.",
            "es": "Los permisos evitan el clasico “ups, cualquiera puede editar todo”.\nTe dejan meter roles sin llenar el codigo de ifs.",
            "zh": "权限能避免“所有人都能改所有东西”。\n它让角色控制更干净，不需要到处写 if。",
        }[lang]
        when = {
            "en": "Use it for edit/delete actions, admin tools, and any feature that should be role-gated.",
            "es": "Usalo en acciones de editar/borrar, herramientas internas y cualquier feature con roles.",
            "zh": "用于编辑/删除、内部工具、以及需要按角色限制的功能。",
        }[lang]
        tip = {"en": "Tip: name permissions explicitly (e.g. blog.change_post) so it’s readable 👀", "es": "Tip: usa nombres claros (blog.change_post) para que se lea bien 👀", "zh": "小提示：权限名写清楚（如 blog.change_post）👀"}[
            lang
        ]
    elif "csrf_exempt" in k:
        why = {
            "en": "Sometimes webhooks can’t send CSRF tokens, so you need an exception.\nBut it lowers protection, so keep it narrow and verify the request.",
            "es": "A veces un webhook no puede mandar token CSRF y necesitas una excepcion.\nPero baja proteccion: mantenlo acotado y valida la request.",
            "zh": "有些 webhook 不能带 CSRF token，所以需要例外。\n但保护会降低：务必做签名/密钥验证，并且只开给这一条路由。",
        }[lang]
        when = {
            "en": "Use it for endpoints called by third-parties (Stripe, GitHub), not for regular forms.",
            "es": "Usalo para endpoints externos (Stripe, GitHub), no para formularios normales.",
            "zh": "用于第三方回调（Stripe、GitHub），不要用于普通表单。",
        }[lang]
        tip = {"en": "Tip: verify signatures before processing the payload 🛡️", "es": "Tip: verifica firmas antes de procesar el payload 🛡️", "zh": "小提示：先验签再处理 payload 🛡️"}[
            lang
        ]
    elif "cache_page" in k:
        why = {
            "en": "Caching a view saves CPU/DB work when many users request the same page.\nIt’s a simple performance win that scales.",
            "es": "Cachear una vista ahorra CPU/DB cuando mucha gente pide lo mismo.\nEs un win de rendimiento facil y muy real.",
            "zh": "缓存视图能减少 CPU/数据库压力，尤其是高访问页面。\n这是最直接的性能收益之一。",
        }[lang]
        when = {
            "en": "Use it for pages that don’t change every second (homepages, catalog pages, landing pages).",
            "es": "Usalo en paginas que no cambian cada segundo (home, catalogo, landing).",
            "zh": "用于不需要秒级更新的页面（首页、列表页、落地页）。",
        }[lang]
        tip = {"en": "Tip: cache the expensive view, not every view. Measure first 📈", "es": "Tip: cachea lo caro, no todo. Mide primero 📈", "zh": "小提示：缓存“贵的”，别全缓存。先量化 📈"}[
            lang
        ]
    elif "patch" in k and "return_value" in k:
        why = {
            "en": "Mocking with patch lets you test logic without network calls.\nFast tests = faster refactors and fewer scary releases.",
            "es": "Mockear con patch te deja probar logica sin llamadas a la red.\nTests rapidos = refactors mas seguros y releases menos nerviosos.",
            "zh": "patch 能让你不依赖网络就测试逻辑。\n测试快，改代码就更稳，发布也更安心。",
        }[lang]
        when = {
            "en": "Use it when the code depends on an API, time, randomness, or anything flaky.",
            "es": "Usalo cuando dependes de una API, del tiempo, de random… o de cosas inestables.",
            "zh": "用于依赖 API、时间、随机数、以及不稳定外部因素的代码。",
        }[lang]
        tip = {"en": "Tip: mock the boundary (HTTP/client), not your own logic 🎯", "es": "Tip: mockea el borde (HTTP/cliente), no tu propia logica 🎯", "zh": "小提示：mock 边界（HTTP/客户端），别 mock 自己的业务逻辑 🎯"}[
            lang
        ]
    else:
        # Category-driven fallback with exercise-specific details (topic + must).
        why_pool = {
            "djangoBasics": {
                "en": "These basics set the project skeleton so you don’t invent structure on the fly.",
                "es": "Estos basicos te dan esqueleto y estructura para no improvisar carpetas.",
                "zh": "基础步骤决定项目骨架，避免后面越写越乱。",
            },
            "djangoSettings": {
                "en": "Settings are where small config mistakes become big production bugs.",
                "es": "Settings es donde un detalle pequeno se convierte en bug gordo en produccion.",
                "zh": "配置里一个小细节，到了生产可能就是大事故。",
            },
            "djangoUrls": {
                "en": "Good routing is your app’s GPS: it connects URLs to the right logic.",
                "es": "Las URLs son el GPS: conectan rutas con la logica correcta.",
                "zh": "路由就像 GPS：把 URL 正确指到对应逻辑。",
            },
            "djangoTemplates": {
                "en": "Templates help you keep HTML clean while views stay focused on data.",
                "es": "Las plantillas te dejan HTML limpio y las vistas centradas en datos.",
                "zh": "模板让 HTML 干净，视图专注处理数据。",
            },
            "djangoStatic": {
                "en": "Static/media config is what makes your app look right in production.",
                "es": "Static/media es lo que hace que tu app se vea bien en produccion.",
                "zh": "静态/媒体配置决定了生产环境资源能不能正常加载。",
            },
            "djangoModels": {
                "en": "Models are your source of truth: they define data shape and relationships.",
                "es": "Los modelos son tu verdad: definen datos y relaciones.",
                "zh": "模型是数据的“真相来源”：结构、关系都在这里定。",
            },
            "djangoOrm": {
                "en": "The ORM is how you ask the DB questions without writing raw SQL all day.",
                "es": "El ORM es tu forma de preguntarle cosas a la DB sin escribir SQL a mano todo el dia.",
                "zh": "ORM 让你不用天天手写 SQL 也能高效查询数据。",
            },
            "djangoMigrations": {
                "en": "Migrations keep your DB and code synced when your schema changes.",
                "es": "Las migraciones sincronizan DB y codigo cuando el esquema cambia.",
                "zh": "迁移用来同步数据库结构与代码变化。",
            },
            "djangoAdmin": {
                "en": "Admin customization turns “usable” into “actually productive”.",
                "es": "Tocar el admin convierte “usable” en “productivo de verdad”.",
                "zh": "定制后台能把“能用”变成“真好用”。",
            },
            "djangoForms": {
                "en": "Forms give you validation and clean data instead of manual parsing.",
                "es": "Los forms te dan validacion y datos limpios, sin parseo manual.",
                "zh": "表单提供校验与清洗数据，不用你手搓解析。",
            },
            "djangoAuth": {
                "en": "Auth is where UX and security meet. Get it right early.",
                "es": "Auth es donde UX y seguridad se juntan. Mejor hacerlo bien desde el principio.",
                "zh": "认证是体验与安全的交叉点，越早做好越省事。",
            },
            "djangoCBV": {
                "en": "CBVs help you reuse patterns (list/detail/create) without copy-paste.",
                "es": "Las CBV te ayudan a reutilizar patrones (list/detail/create) sin copiar-pegar.",
                "zh": "类视图让 list/detail/create 这些模式更可复用。",
            },
            "djangoMiddleware": {
                "en": "Middleware is the guardrail layer: great for security and cross-cutting concerns.",
                "es": "Middleware es la barandilla: perfecto para seguridad y cosas transversales.",
                "zh": "中间件像护栏：适合做安全与通用逻辑。",
            },
            "djangoTesting": {
                "en": "Tests buy you speed: you can change code without fear.",
                "es": "Los tests te compran velocidad: cambias codigo sin miedo.",
                "zh": "测试换来速度：改代码不慌。",
            },
            "djangoDeploy": {
                "en": "Deploy/perf tweaks are what keep a project alive under real traffic.",
                "es": "Deploy/rendimiento es lo que mantiene vivo un proyecto con trafico real.",
                "zh": "部署与性能优化决定了项目能不能扛住真实流量。",
            },
        }.get(cat_dir)

        base = (
            why_pool[lang]
            if why_pool
            else {"en": "This shows up in real projects.", "es": "Esto sale en proyectos reales.", "zh": "真实项目一定会遇到。"}[lang]
        )
        why = (
            f"{base}\nThis exercise is about {topic} — and the key clue is: {must_preview}."
            if lang == "en"
            else (
                f"{base}\nEste ejercicio va de {topic} y la pista clave es: {must_preview}."
                if lang == "es"
                else f"{base}\n这一关是 {topic}，关键线索是：{must_preview}。"
            )
        )
        when = (
            f"You'll use it in {scene}, especially when you need {must_preview}."
            if lang == "en"
            else (
                f"Lo usaras en {scene}, sobre todo cuando necesitas {must_preview}."
                if lang == "es"
                else f"在 {scene} 里会用到，尤其是需要 {must_preview} 的时候。"
            )
        )
        tip = (
            f"Tip: start by writing {must_preview}, then trim anything extra."
            if lang == "en"
            else (
                f"Tip: empieza por escribir {must_preview} y luego recorta lo que sobre."
                if lang == "es"
                else f"小提示：先写出 {must_preview}，再把多余的删掉。"
            )
        )

    # Keep the user's preferred structure, but ensure content is exercise-specific.
    if lang == "en":
        return f"What you practice: {topic}.\n\nWhy it matters: {why}\n\nWhen you use it: {when}\n\n{tip}"
    if lang == "es":
        return f"Que practicas: {topic}.\n\nPor que importa: {why}\n\nCuando lo usas: {when}\n\n{tip}"
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

            # Find the JSON string value and replace it while preserving the rest of the line.
            colon = line.find(":", line.find(needle))
            if colon == -1:
                continue
            start_quote = line.find('"', colon + 1)
            if start_quote == -1:
                continue

            # Scan for the closing quote (not escaped).
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
    g = runpy.run_path(str(ROOT / "tooling" / "generate_django.py"))
    categories = g["CATEGORIES"]
    exercises = g["EXERCISES"]
    start_id = g["START_ID"]
    lang_prefix = g["LANG_PREFIX"]

    # --- Category info (15 categories) ---
    cat_info = {
        "djangoBasics": {
            "en": ("Django Fundamentals — Why it matters", "You build the project skeleton: startproject, runserver, first app.\n\nWhy it matters: good structure early saves you from messy refactors later.\n\nUse it when you want to ship a Django app fast without chaos. 🚀"),
            "es": ("Fundamentos Django — Por que importa", "Aqui montas la base: startproject, runserver y tu primera app.\n\nPor que importa: una estructura buena al inicio te ahorra refactors dolorosos luego.\n\nLo usaras cada vez que quieras arrancar un proyecto Django sin caos. 🚀"),
            "zh": ("Django 基础 — 为什么重要", "这一类带你把骨架搭起来：startproject、runserver、第一 个 app。\n\n为什么重要：基础打牢，后面就不容易越写越乱。\n\n想快速启动 Django 项目时，你会一直用到它。🚀"),
        },
        "djangoSettings": {
            "en": ("Settings & Apps — Why it matters", "You learn where Django gets its rules: INSTALLED_APPS, DATABASES, MIDDLEWARE…\n\nWhy it matters: small config mistakes become big production outages.\n\nUse it when you move from “works on my machine” to real environments. ⚙️"),
            "es": ("Settings y Apps — Por que importa", "Aqui entiendes de donde salen las reglas: INSTALLED_APPS, DATABASES, MIDDLEWARE…\n\nPor que importa: un detalle de config puede romper produccion.\n\nLo usaras al pasar de “me funciona a mi” a entornos reales. ⚙️"),
            "zh": ("设置与应用 — 为什么重要", "你会摸清 Django 的“规则本”：INSTALLED_APPS、DATABASES、MIDDLEWARE…\n\n为什么重要：配置的小坑，到了生产就是大坑。\n\n从本机跑通到多环境部署时，这里必用。⚙️"),
        },
        "djangoUrls": {
            "en": ("URLs & Views — Why it matters", "Routes connect users to features: path(), include(), views.\n\nWhy it matters: clean URLs make apps predictable and easy to grow.\n\nUse it when you build pages, APIs, and redirects without 404 drama. 🧭"),
            "es": ("URLs y Views — Por que importa", "Las rutas conectan al usuario con tus features: path(), include(), views.\n\nPor que importa: URLs limpias hacen la app mas predecible y escalable.\n\nLo usaras al crear paginas, endpoints y redirects sin drama de 404. 🧭"),
            "zh": ("URL 与视图 — 为什么重要", "路由把用户带到功能：path()、include()、views。\n\n为什么重要：URL 清晰，项目就更可维护、更好扩展。\n\n做页面、做接口、做跳转都离不开这里。🧭"),
        },
        "djangoTemplates": {
            "en": ("Templates — Why it matters", "You build the UI layer: inheritance, blocks, filters, includes.\n\nWhy it matters: templates keep HTML readable while Python stays focused on data.\n\nUse it for pages, emails, dashboards… basically all the “what users see”. 🧩"),
            "es": ("Plantillas — Por que importa", "Aqui construyes la capa UI: herencia, blocks, filtros e includes.\n\nPor que importa: mantienes HTML legible y el Python centrado en datos.\n\nLo usaras en paginas, emails, dashboards… todo lo que el usuario ve. 🧩"),
            "zh": ("模板 — 为什么重要", "你会做 UI 层：继承、block、过滤器、include。\n\n为什么重要：HTML 更清爽，Python 专注处理数据。\n\n页面、邮件、仪表盘…用户看到的几乎都在这里。🧩"),
        },
        "djangoStatic": {
            "en": ("Static & Media — Why it matters", "CSS, images, uploads: you wire static files and user media correctly.\n\nWhy it matters: a “working app” that looks broken is still broken.\n\nUse it whenever you deploy and assets must load reliably. 🖼️"),
            "es": ("Static y Media — Por que importa", "CSS, imagenes y uploads: configuras static y media bien.\n\nPor que importa: una app que funciona pero “se ve rota” sigue siendo un problema.\n\nLo usaras siempre que despliegues y los assets tengan que cargar si o si. 🖼️"),
            "zh": ("静态与媒体 — 为什么重要", "CSS、图片、上传：把 static 和 media 走通。\n\n为什么重要：功能正常但资源加载失败，用户只会觉得“坏了”。\n\n部署时资源必须稳定加载，这一类就很关键。🖼️"),
        },
        "djangoModels": {
            "en": ("Models — Why it matters", "You model the data: fields, relations, constraints.\n\nWhy it matters: good models prevent bad data and make queries simpler.\n\nUse it for products, users, posts… any real database-backed app. 🧱"),
            "es": ("Modelos — Por que importa", "Aqui modelas datos: campos, relaciones, constraints.\n\nPor que importa: buenos modelos evitan datos malos y simplifican queries.\n\nLo usaras en productos, usuarios, posts… cualquier app con base de datos. 🧱"),
            "zh": ("模型 — 为什么重要", "你会建数据模型：字段、关系、约束。\n\n为什么重要：模型设计好，数据更干净，查询也更简单。\n\n产品、用户、文章…只要有数据库就离不开它。🧱"),
        },
        "djangoOrm": {
            "en": ("ORM & QuerySets — Why it matters", "You learn to ask the DB smart questions: filter, order, annotate, optimize.\n\nWhy it matters: performance problems often start as “just one more query”.\n\nUse it to build fast lists, searches and reports. 🔍"),
            "es": ("ORM y QuerySets — Por que importa", "Aprendes a preguntar bien a la DB: filter, order, annotate, optimizar.\n\nPor que importa: los problemas de rendimiento suelen empezar con “una query mas”.\n\nLo usaras para listados rapidos, busquedas y reportes. 🔍"),
            "zh": ("ORM 查询 — 为什么重要", "你会用 QuerySet 提问：filter、order、annotate、优化。\n\n为什么重要：性能问题经常是“多了一点点查询”堆出来的。\n\n做列表、搜索、报表都靠它。🔍"),
        },
        "djangoMigrations": {
            "en": ("Migrations — Why it matters", "Schema changes with confidence: makemigrations, migrate, and friends.\n\nWhy it matters: DB and code must stay in sync or production breaks.\n\nUse it every time your models evolve. 🧬"),
            "es": ("Migraciones — Por que importa", "Cambios de esquema con cabeza: makemigrations, migrate y compania.\n\nPor que importa: DB y codigo deben ir sincronizados o produccion se rompe.\n\nLo usaras cada vez que tus modelos evolucionen. 🧬"),
            "zh": ("迁移 — 为什么重要", "有把握地改表结构：makemigrations、migrate 等。\n\n为什么重要：代码与数据库不同步，生产就会炸。\n\n模型一变，迁移就要跟上。🧬"),
        },
        "djangoAdmin": {
            "en": ("Admin — Why it matters", "Turn Django admin into a real tool: list_display, search, filters, forms.\n\nWhy it matters: internal tooling saves time every single day.\n\nUse it for moderation, support, and quick data ops. 🛠️"),
            "es": ("Admin — Por que importa", "Conviertes el admin en una herramienta real: list_display, search, filtros, forms.\n\nPor que importa: las herramientas internas ahorran tiempo cada dia.\n\nLo usaras para moderacion, soporte y operaciones rapidas. 🛠️"),
            "zh": ("管理后台 — 为什么重要", "把 admin 变成真正的工具：列表字段、搜索、过滤、表单。\n\n为什么重要：内部工具每天都在省时间。\n\n用于审核、支持、数据运维都很香。🛠️"),
        },
        "djangoForms": {
            "en": ("Forms — Why it matters", "Validation and clean input: forms, ModelForm, widgets, errors.\n\nWhy it matters: bad input is where bugs and security issues start.\n\nUse it for signup, checkout, contact… all user input. ✍️"),
            "es": ("Formularios — Por que importa", "Validacion y input limpio: forms, ModelForm, widgets, errores.\n\nPor que importa: el input malo es donde nacen bugs y problemas de seguridad.\n\nLo usaras en registro, checkout, contacto… todo lo que el usuario escribe. ✍️"),
            "zh": ("表单 — 为什么重要", "校验与清洗输入：Form、ModelForm、widget、errors。\n\n为什么重要：脏输入是 bug 和安全问题的起点。\n\n注册、结账、联系表单…用户输入都靠它。✍️"),
        },
        "djangoAuth": {
            "en": ("Authentication — Why it matters", "Logins, sessions, permissions: who can do what.\n\nWhy it matters: auth is where UX and security collide.\n\nUse it to protect private pages and role-gated actions. 🔐"),
            "es": ("Autenticacion — Por que importa", "Login, sesiones, permisos: quien puede hacer que.\n\nPor que importa: auth es donde UX y seguridad chocan.\n\nLo usaras para proteger paginas privadas y acciones con roles. 🔐"),
            "zh": ("认证 — 为什么重要", "登录、会话、权限：谁能做什么。\n\n为什么重要：认证是体验与安全的交界处。\n\n保护私有页面、角色操作都靠它。🔐"),
        },
        "djangoCBV": {
            "en": ("Class-Based Views — Why it matters", "Reusable patterns for CRUD: ListView, DetailView, CreateView…\n\nWhy it matters: less copy-paste, more consistent behavior.\n\nUse it when your app grows beyond a couple of views. 🧠"),
            "es": ("Vistas basadas en clases — Por que importa", "Patrones reutilizables para CRUD: ListView, DetailView, CreateView…\n\nPor que importa: menos copia-pega y comportamiento mas consistente.\n\nLo usaras cuando tu app crezca mas alla de 2 vistas sueltas. 🧠"),
            "zh": ("类视图 — 为什么重要", "CRUD 的可复用模式：ListView、DetailView、CreateView…\n\n为什么重要：少复制粘贴，行为更一致。\n\n项目一长大，类视图就派上用场。🧠"),
        },
        "djangoMiddleware": {
            "en": ("Middleware & Security — Why it matters", "Cross-cutting logic: headers, CSRF, timing, safety defaults.\n\nWhy it matters: good guardrails prevent whole classes of bugs.\n\nUse it to make security and observability “always on”. 🛡️"),
            "es": ("Middleware y Seguridad — Por que importa", "Logica transversal: headers, CSRF, timing, defaults seguros.\n\nPor que importa: una buena barandilla evita familias enteras de bugs.\n\nLo usaras para que seguridad y observabilidad esten “siempre activas”. 🛡️"),
            "zh": ("中间件与安全 — 为什么重要", "横切逻辑：安全头、CSRF、耗时统计、默认防护。\n\n为什么重要：护栏做得好，可以少掉一堆同类型 bug。\n\n让安全与可观测性“常开”就靠它。🛡️"),
        },
        "djangoTesting": {
            "en": ("Testing — Why it matters", "Tests, client, mocks: ship changes without fear.\n\nWhy it matters: fast tests make refactors and releases safe.\n\nUse it to catch regressions before users do. 🧪"),
            "es": ("Pruebas — Por que importa", "Tests, client, mocks: cambiar sin miedo.\n\nPor que importa: tests rapidos hacen refactors y releases seguros.\n\nLo usaras para cazar regresiones antes que los usuarios. 🧪"),
            "zh": ("测试 — 为什么重要", "测试、client、mock：改代码更稳。\n\n为什么重要：测试快，重构和发布就不怕。\n\n让回归在上线前就被抓住。🧪"),
        },
        "djangoDeploy": {
            "en": ("Deploy & Performance — Why it matters", "Production knobs: caching, settings, static, performance.\n\nWhy it matters: real traffic is unforgiving.\n\nUse it to keep apps fast and stable under load. 📦"),
            "es": ("Deploy y Rendimiento — Por que importa", "Detalles de produccion: cache, settings, static, rendimiento.\n\nPor que importa: el trafico real no perdona.\n\nLo usaras para que la app aguante y siga rapida. 📦"),
            "zh": ("部署与性能 — 为什么重要", "生产环境的旋钮：缓存、配置、静态资源、性能。\n\n为什么重要：真实流量从不手下留情。\n\n让应用又快又稳地扛住压力。📦"),
        },
    }

    # --- Build per-language updates ---
    updates_by_lang: dict[str, dict[str, str]] = {"en": {}, "es": {}, "zh": {}}

    # Category info keys live in category_info.dart mapping, so keep keys stable.
    for i, (cat_dir, _en, _es, _zh) in enumerate(categories):
        if cat_dir not in cat_info:
            continue
        for lang in ["en", "es", "zh"]:
            title, content = cat_info[cat_dir][lang]
            updates_by_lang[lang][f"{lang_prefix}Cat{i}InfoTitle"] = title
            updates_by_lang[lang][f"{lang_prefix}Cat{i}InfoContent"] = content

    # Exercises: InstructionsContent + InfoContent
    ex_id = start_id
    for cat_dir, _en, _es, _zh in categories:
        for (t_en, t_es, t_zh, _code, must, out_text) in exercises[cat_dir]:
            topics = {"en": t_en, "es": t_es, "zh": t_zh}
            for lang in ["en", "es", "zh"]:
                updates_by_lang[lang][f"{lang_prefix}{ex_id}InstructionsContent"] = instructions(
                    lang, cat_dir, ex_id, topics[lang], must, out_text
                )
                updates_by_lang[lang][f"{lang_prefix}{ex_id}InfoContent"] = info(
                    lang, cat_dir, ex_id, topics[lang], must, out_text
                )
            ex_id += 1

    for lang in ["en", "es", "zh"]:
        update_arb(ROOT / "lib" / "l10n" / f"app_{lang}.arb", updates_by_lang[lang])


if __name__ == "__main__":
    main()
