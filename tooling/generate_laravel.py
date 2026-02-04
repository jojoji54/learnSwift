#!/usr/bin/env python3
"""Generate Laravel course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

Important repo conventions:
- ARB must be ICU-safe: avoid literal '{' and '}'.
- This app uses '@' and '&' as stand-ins for braces in ARB values.
  Exercise screens call `_t()` to decode them (@->{ and &->}).
- Laravel Blade uses '@' for directives. We cannot store literal '@' in ARB
  (it would be decoded into '{'). For Blade directives we store '#' instead
  and decode it back to '@' in Laravel exercise screens.

So in Laravel exercise strings:
  '{' is written as '@' in ARB
  '}' is written as '&' in ARB
  '@' (Blade directives) is written as '#'
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "laravel"
START_ID = 4675  # Next after Symfony (4450-4674).

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("laravelBasics", "Laravel Basics", "Fundamentos Laravel", "Laravel 基础"),
    ("laravelRouting", "Routing", "Rutas", "路由"),
    ("laravelControllers", "Controllers & Requests", "Controladores y Request", "控制器与请求"),
    ("laravelBlade", "Blade Templates", "Plantillas Blade", "Blade 模板"),
    ("laravelMigrations", "Migrations & Schema", "Migraciones y Esquema", "迁移与结构"),
    ("laravelEloquent", "Eloquent Models", "Modelos Eloquent", "Eloquent 模型"),
    ("laravelRelations", "Eloquent Relationships", "Relaciones Eloquent", "Eloquent 关系"),
    ("laravelValidation", "Validation", "Validacion", "验证"),
    ("laravelMiddleware", "Middleware & Auth", "Middleware y Auth", "中间件与认证"),
    ("laravelApi", "API Resources", "Recursos API", "API 资源"),
    ("laravelStorage", "Files & Storage", "Archivos y Storage", "文件与存储"),
    ("laravelQueues", "Queues & Jobs", "Colas y Jobs", "队列与任务"),
    ("laravelEvents", "Events & Notifications", "Eventos y Notificaciones", "事件与通知"),
    ("laravelTesting", "Testing", "Testing", "测试"),
    ("laravelDeploy", "Deploy & Performance", "Deploy y Rendimiento", "部署与性能"),
]


def camel(s: str) -> str:
    parts = re.split(r"[^A-Za-z0-9]+", s)
    return "".join(p[:1].upper() + p[1:] for p in parts if p)


def escape_icu(s: str) -> str:
    # Flutter gen-l10n: escape single quote by doubling.
    return s.replace("'", "''")


def encode_braces(s: str) -> str:
    # Avoid literal braces in ARB; Laravel exercise screens decode @->{ and &->}.
    return s.replace("{", "@").replace("}", "&")


def json_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")


def arb_line(key: str, value: str) -> str:
    return f'  "{key}": "{json_escape(value)}"'


def dart_escape_double_quoted(s: str) -> str:
    # Used for generating Dart source with "..." strings where $ triggers interpolation.
    return s.replace("\\", "\\\\").replace('"', '\\"').replace("$", "\\$")


def hpick(items: list[str], seed: str) -> str:
    h = int(hashlib.md5(seed.encode("utf-8")).hexdigest(), 16)
    return items[h % len(items)]


def normalize_must_token(tok: str) -> str:
    tok = tok.strip()
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
    if lang == "en":
        return f"Hint {idx} 💡"
    if lang == "es":
        return f"Pista {idx} 💡"
    return f"提示 {idx} 💡"


def solution_title(lang: str) -> str:
    return {"en": "Solution ✅", "es": "Solucion ✅", "zh": "答案 ✅"}[lang]


def example_title(lang: str) -> str:
    return {"en": "Example 📌", "es": "Ejemplo 📌", "zh": "示例 📌"}[lang]


def info_title(lang: str) -> str:
    return {"en": "More info ℹ️", "es": "Mas info ℹ️", "zh": "更多信息 ℹ️"}[lang]


def enter_code_hint(lang: str) -> str:
    return {
        "en": "Write your Laravel code here...",
        "es": "Escribe tu codigo Laravel aqui...",
        "zh": "在这里写下你的 Laravel 代码...",
    }[lang]


def output_label(lang: str, text: str) -> str:
    if lang == "en":
        return f"Output: {text}"
    if lang == "es":
        return f"Salida: {text}"
    return f"输出: {text}"


def emoji_for(cat_dir: str) -> str:
    return {
        "laravelBasics": "🧰",
        "laravelRouting": "🗺️",
        "laravelControllers": "🧠",
        "laravelBlade": "🎭",
        "laravelMigrations": "🧱",
        "laravelEloquent": "🗄️",
        "laravelRelations": "🔗",
        "laravelValidation": "🚧",
        "laravelMiddleware": "🛡️",
        "laravelApi": "📦",
        "laravelStorage": "🗂️",
        "laravelQueues": "📬",
        "laravelEvents": "🔔",
        "laravelTesting": "🧪",
        "laravelDeploy": "🚀",
    }.get(cat_dir, "📦")


def scenario_for(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "route" in k or "routes" in k or "route::" in k or "route:list" in k:
        return {
            "en": "shipping clean URLs that people can share",
            "es": "sacar URLs limpias que se puedan compartir",
            "zh": "做出干净、可分享的 URL",
        }[lang]
    if "blade" in k or "#extends" in k or "#foreach" in k or "view(" in k:
        return {
            "en": "building a page without mixing logic everywhere",
            "es": "montar una pantalla sin mezclar logica por todas partes",
            "zh": "做页面时不把逻辑写得到处都是",
        }[lang]
    if "migrate" in k or "schema::" in k or "migration" in k:
        return {
            "en": "changing the database safely with versioned code",
            "es": "cambiar la base de datos sin miedo y con versionado",
            "zh": "用可回滚的方式改数据库结构",
        }[lang]
    if "eloquent" in k or "::create" in k or "::where" in k or "fillable" in k:
        return {
            "en": "saving real data without hand-written SQL everywhere",
            "es": "guardar datos reales sin SQL suelto por todas partes",
            "zh": "不用到处写 SQL 也能存取数据",
        }[lang]
    if "queue" in k or "job" in k or "dispatch" in k:
        return {
            "en": "keeping the UI fast by pushing slow work to the background",
            "es": "mantener la app rapida mandando lo lento a background",
            "zh": "把慢任务丢到后台，界面更快",
        }[lang]
    if "test" in k or "assert" in k or "php artisan test" in k:
        return {
            "en": "refactoring without fear",
            "es": "refactorizar sin miedo",
            "zh": "重构时不心慌",
        }[lang]

    pools = {
        "laravelBasics": {
            "en": ["bootstrapping a client demo", "starting a new repo", "getting a local environment ready"],
            "es": ["montar una demo para cliente", "arrancar un repo nuevo", "preparar el entorno local"],
            "zh": ["做客户演示", "新建仓库", "准备本地环境"],
        },
        "laravelDeploy": {
            "en": ["deploying on a server", "making production faster", "avoiding config surprises"],
            "es": ["desplegar en un servidor", "hacer prod mas rapido", "evitar sorpresas de config"],
            "zh": ["部署到服务器", "让生产更快", "避免配置翻车"],
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
            "Keep it short, but make the idea obvious ✅",
            "If it reads well, it counts. Hit Run 😄",
            "Small snippet, big clarity 🎯",
            "Names can change; the structure stays 💪",
        ],
        "es": [
            "Corto, pero clarito ✅",
            "Si se entiende, cuenta. Dale a Run 😄",
            "Snippet pequeno, claridad grande 🎯",
            "Puedes cambiar nombres, pero no la idea 💪",
        ],
        "zh": [
            "越短越好，但要一眼看懂 ✅",
            "写清楚就算过关，点 Run 😄",
            "小片段，大清晰 🎯",
            "名字可改，结构别丢 💪",
        ],
    }[lang]

    templates = {
        "en": [
            "{emo} Mission: {topic}.\n\nScene: {scene}.\nChecklist: {must}.\n\n{end}",
            "🎬 Scene: {scene}.\n\nShow {topic} with the minimum snippet.\nMust-have: {must}.\n\n{end}",
            "🧩 Mini quest:\n- Topic: {topic}\n- Needs: {must}\n\nContext: {scene}.\n\n{end}",
            "👣 Quick steps:\n1) Do {topic}.\n2) Include: {must}.\n3) Keep it readable.\n\n{end}",
        ],
        "es": [
            "{emo} Mision: {topic}.\n\nEscena: {scene}.\nChecklist: {must}.\n\n{end}",
            "🎬 Escena real: {scene}.\n\nReto: {topic}.\nImprescindible: {must}.\n\n{end}",
            "🧩 Mini quest Laravel:\n- Tema: {topic}\n- Necesitas: {must}\n\nContexto: {scene}.\n\n{end}",
            "👣 Pasos rapidos:\n1) Haz {topic}.\n2) Incluye: {must}.\n3) Que se lea bien.\n\n{end}",
            "📦 Te lo piden en un proyecto real:\n{topic}.\n\nSi yo reviso tu PR busco: {must}.\nContexto: {scene}.\n\n{end}",
        ],
        "zh": [
            "{emo} 任务：{topic}。\n\n场景：{scene}。\n清单：{must}。\n\n{end}",
            "🎬 场景：{scene}。\n\n用最小片段表达 {topic}。\n必须出现：{must}。\n\n{end}",
            "🧩 小挑战：{topic}\n清单：{must}\n\n{end}",
            "👣 快速步骤：\n1) 做 {topic}\n2) 写出：{must}\n\n{end}",
        ],
    }[lang]

    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:instr")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:end")
    return tmpl.format(topic=topic, scene=scene, must=must_preview, end=end, emo=emo)


def info_content(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    must_preview = ", ".join(must[:2])
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)

    why_lines = {
        "laravelBasics": {
            "en": "Artisan is your control panel. When you know the commands, you move faster.",
            "es": "Artisan es tu panel de control. Si dominas comandos, avanzas mas rapido.",
            "zh": "Artisan 就像控制台面板，熟了就快很多。",
        },
        "laravelRouting": {
            "en": "Routing is the front door: it decides which code runs for a URL.",
            "es": "Routing es la puerta de entrada: decide que codigo responde a una URL.",
            "zh": "路由是大门：URL 进来走哪段代码就靠它。",
        },
        "laravelControllers": {
            "en": "Controllers translate HTTP into your app logic: request in, response out.",
            "es": "Un controlador traduce HTTP: entra request, sale response.",
            "zh": "控制器把 HTTP 翻译成业务：请求进，响应出。",
        },
        "laravelBlade": {
            "en": "Blade keeps your views readable and helps you avoid copy-pasting HTML forever.",
            "es": "Blade mantiene las vistas limpias y evita copiar y pegar HTML sin fin.",
            "zh": "Blade 让模板更清楚，也减少复制粘贴。",
        },
        "laravelMigrations": {
            "en": "Migrations let you version your database. No more manual changes in prod.",
            "es": "Las migraciones versionan la base de datos. Nada de tocar prod a mano.",
            "zh": "迁移把数据库结构写进版本控制，别再手改生产。",
        },
        "laravelEloquent": {
            "en": "Eloquent helps you work with data as objects instead of stringy SQL.",
            "es": "Eloquent te deja trabajar con datos como objetos, no como SQL suelto.",
            "zh": "Eloquent 用对象操作数据，不用到处拼 SQL。",
        },
        "laravelRelations": {
            "en": "Relationships are where your data model becomes useful: connect users, posts, comments.",
            "es": "Las relaciones hacen util tu modelo: conectas users, posts, comments.",
            "zh": "关系让数据模型真正有用：用户、文章、评论串起来。",
        },
        "laravelValidation": {
            "en": "Validation turns messy input into data you can trust.",
            "es": "Validacion convierte input caotico en datos confiables.",
            "zh": "验证让输入更干净可靠。",
        },
        "laravelMiddleware": {
            "en": "Middleware is a checkpoint: auth, throttling, headers, all before your controller runs.",
            "es": "Middleware es un control: auth, rate limit, headers... antes del controlador.",
            "zh": "中间件像检查站：认证、限流、header 都在控制器之前。",
        },
        "laravelApi": {
            "en": "Resources give your API a stable shape, even when the database changes.",
            "es": "Los resources dan forma estable a tu API aunque cambie la base de datos.",
            "zh": "Resource 让 API 输出更稳定，表结构变了也不慌。",
        },
        "laravelStorage": {
            "en": "Storage keeps file handling consistent: local, public, or S3, same API.",
            "es": "Storage hace consistente el manejo de archivos: local o S3, misma API.",
            "zh": "Storage 统一文件操作：本地或 S3 都一样用。",
        },
        "laravelQueues": {
            "en": "Queues move slow work out of the request so users do not wait.",
            "es": "Las colas sacan trabajo lento del request para que el usuario no espere.",
            "zh": "队列把慢任务放后台，用户不用等。",
        },
        "laravelEvents": {
            "en": "Events decouple features: one action can trigger many reactions without spaghetti.",
            "es": "Eventos desacoplan: una accion dispara reacciones sin spaghetti.",
            "zh": "事件让功能解耦：一个动作可以触发很多反应。",
        },
        "laravelTesting": {
            "en": "Tests let you change code with confidence. That is the whole game.",
            "es": "Tests te dejan cambiar codigo con confianza. Ese es el juego.",
            "zh": "测试让你敢改代码，不怕翻车。",
        },
        "laravelDeploy": {
            "en": "Deploy steps keep production stable: cache what you can and clear what you must.",
            "es": "Deploy estable: cachea lo necesario y limpia lo peligroso en el orden correcto.",
            "zh": "部署要稳：该缓存就缓存，该清理就清理。",
        },
    }[cat_dir][lang]

    openers = {
        "en": [
            f"{emo} Why it matters:",
            f"{emo} Behind the scenes:",
            f"{emo} Real-world note:",
            f"{emo} The practical part:",
        ],
        "es": [
            f"{emo} Por que importa:",
            f"{emo} Detras de escena:",
            f"{emo} Nota real:",
            f"{emo} Lo practico:",
        ],
        "zh": [
            f"{emo} 为什么重要：",
            f"{emo} 背后发生了什么：",
            f"{emo} 实战提示：",
            f"{emo} 实用点：",
        ],
    }[lang]

    closers = {
        "en": [
            f"You will use it when you are {scene}.",
            f"In code reviews, people scan for: {must_preview}.",
            "Once this clicks, the next steps feel natural.",
        ],
        "es": [
            f"Lo usas cuando estas en {scene}.",
            f"En un review, yo buscaria: {must_preview}.",
            "Cuando esto encaja, lo siguiente sale solo.",
        ],
        "zh": [
            f"适合用在：{scene}。",
            f"代码评审常见关键字：{must_preview}。",
            "掌握这个后，后面会顺很多。",
        ],
    }[lang]

    templates = {
        "en": [
            "{op}\n{why}\n\nIn this exercise: {topic}.\nSignal: {must}.\n\n{close}",
            "{op}\n{why}\n\nUse it for: {scene}.\nFocus on: {topic}.\n\nKey pieces: {must}.\n\n{close}",
        ],
        "es": [
            "{op}\n{why}\n\nEn este ejercicio: {topic}.\nSenal: {must}.\n\n{close}",
            "{op}\n{why}\n\nLo tipico: {scene}.\nHoy te centras en: {topic}.\n\nPiezas clave: {must}.\n\n{close}",
            "{op}\n{why}\n\nSi mañana te toca {scene}, esto te ahorra tiempo.\nEnfocate en: {topic}.\n\nPistas: {must}.\n\n{close}",
        ],
        "zh": [
            "{op}\n{why}\n\n这题你练：{topic}\n关键字：{must}\n\n{close}",
            "{op}\n{why}\n\n场景：{scene}\n练习点：{topic}\n\n看这两个：{must}\n\n{close}",
        ],
    }[lang]

    opener = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:op")
    close = hpick(closers, f"{lang}:{cat_dir}:{ex_id}:cl")
    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:inf")
    return tmpl.format(op=opener, why=why_lines, topic=topic, must=must_preview, scene=scene, close=close)


def hint1_content(lang: str, ex_id: int, must: list[str]) -> str:
    a = must[0] if must else ""
    b = must[1] if len(must) > 1 else ""
    templates = {
        "en": [
            f"Start by writing: {a} (then add {b}).",
            f"If you are stuck, make sure {a} appears clearly.",
            f"Minimum: include {a} and {b}.",
        ],
        "es": [
            f"Empieza por escribir: {a} (y luego mete {b}).",
            f"Si te atascas, asegurate de que aparezca {a}.",
            f"Minimo: que se vea {a} y {b}.",
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
            "Do not overthink it: the structure matters more than perfect naming ✅",
            f"If your snippet shows {topic}, you are good ✅",
            "Keep it readable: future-you will thank you 😄",
        ],
        "es": [
            "No le des mil vueltas: importa la estructura, no el nombre perfecto ✅",
            f"Si tu snippet deja claro {topic}, vas bien ✅",
            "Que se lea facil: tu yo del futuro te lo agradece 😄",
        ],
        "zh": [
            "别纠结细节：结构比完美命名更重要 ✅",
            f"能看出你在做 {topic} 就行 ✅",
            "写得清楚一点，未来的你会感谢 😄",
        ],
    }[lang]
    return hpick(templates, f"{lang}:{ex_id}:h2")


def gen_texts(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> tuple[str, str, str, str, str, str]:
    # Title variations (keep short; content is where we get narrative).
    instr_titles = {
        "en": [f"{topic} 🧩", f"Mini quest: {topic} 🧩", f"{topic} (Laravel) 🧩"],
        "es": [f"{topic} 🧩", f"Mini reto: {topic} 🧩", f"{topic} (Laravel) 🧩"],
        "zh": [f"{topic} 🧩", f"小挑战：{topic} 🧩", f"{topic}（Laravel）🧩"],
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
    # Category-level info is NOT decoded by _t(), so we can safely use normal braces if needed.
    # Still keep it ICU-safe (no literal { }).
    mapping = {
        "laravelBasics": {
            "en": "You learn the Laravel workflow: Artisan, local server, and the daily commands that keep projects moving.\n\nWhy it matters: speed + consistency. Tooling knowledge turns setup into minutes.\n\nWhen you use it: every new project, every debug session, every time you automate something.\n\nTip: learn the intent of a command, not just the spelling 🧰",
            "es": "Aqui aprendes el flujo Laravel: Artisan, servidor local y comandos del dia a dia.\n\nPor que importa: velocidad y consistencia. Saber tooling convierte setup en minutos.\n\nCuando se usa: al arrancar proyectos, al depurar y al automatizar tareas.\n\nTip: entiende el para que del comando, no solo como se escribe 🧰",
            "zh": "这一类打基础：Artisan、本地运行、常用命令的工作流。\n\n为什么重要：速度和一致性。熟悉工具，搭项目从小时变成分钟。\n\n什么时候用：新项目、排查问题、自动化脚本。\n\n提示：先懂意图，再背命令 🧰",
        },
        "laravelRouting": {
            "en": "Routing defines your public API: paths, parameters, and which controller runs.\n\nWhy it matters: clean routes prevent 404 chaos and keep URLs stable.\n\nWhen you use it: pages, APIs, and every link you share.\n\nRule: predictable URLs = calmer code 🗺️",
            "es": "Routing define tu API publica: paths, parametros y que controlador corre.\n\nPor que importa: rutas limpias evitan el caos del 404 y mantienen URLs estables.\n\nCuando se usa: paginas, APIs y cualquier link.\n\nRegla: URLs previsibles = codigo mas tranquilo 🗺️",
            "zh": "路由定义对外接口：路径、参数、跑哪个控制器。\n\n为什么重要：路由清晰就少 404，URL 也更稳定。\n\n什么时候用：页面、API、任何可分享的链接。\n\n口诀：URL 稳，代码也稳 🗺️",
        },
        "laravelControllers": {
            "en": "Controllers are the glue: read requests, call your app logic, return responses.\n\nWhy it matters: good controllers stay small and predictable.\n\nWhen you use it: basically every feature.\n\nTip: keep controllers thin; push logic to services when it grows 🧠",
            "es": "Los controladores son el pegamento: leen request, llaman tu logica y devuelven response.\n\nPor que importa: un buen controlador es pequeno y predecible.\n\nCuando se usa: en casi cualquier feature.\n\nTip: controlador fino; si crece, mueve logica a servicios 🧠",
            "zh": "控制器是粘合剂：读请求、调用业务、返回响应。\n\n为什么重要：控制器写小一点，项目更好维护。\n\n什么时候用：几乎每个功能。\n\n提示：控制器别胖，复杂逻辑交给 service 🧠",
        },
        "laravelBlade": {
            "en": "Blade is your view layer: layouts, sections, loops, and safe output.\n\nWhy it matters: you avoid duplicating HTML and keep pages consistent.\n\nWhen you use it: dashboards, landing pages, emails.\n\nTip: components are your future best friend 🎭",
            "es": "Blade es tu capa de vistas: layouts, secciones, loops y output seguro.\n\nPor que importa: evitas duplicar HTML y mantienes consistencia.\n\nCuando se usa: paneles, landings, emails.\n\nTip: los componentes te salvan la vida 🎭",
            "zh": "Blade 是视图层：布局、区块、循环，以及安全输出。\n\n为什么重要：少复制粘贴，页面更统一。\n\n什么时候用：后台、落地页、邮件。\n\n提示：组件会成为你的好朋友 🎭",
        },
        "laravelMigrations": {
            "en": "Migrations let you evolve the database with code: create tables, columns, constraints.\n\nWhy it matters: every teammate (and every environment) can reach the same schema.\n\nWhen you use it: always—schema changes are part of life.\n\nTip: keep migrations small and focused 🧱",
            "es": "Migraciones: evolucionas la base con codigo (tablas, columnas, constraints).\n\nPor que importa: todo el equipo y cada entorno llega al mismo esquema.\n\nCuando se usa: siempre; cambiar esquema es parte de la vida.\n\nTip: migraciones pequenas y enfocadas 🧱",
            "zh": "迁移用代码演进数据库：表、列、约束。\n\n为什么重要：团队和环境都能得到一致的结构。\n\n什么时候用：一直用；结构总会变。\n\n提示：迁移尽量小而专一 🧱",
        },
        "laravelEloquent": {
            "en": "Eloquent basics: create, read, update, delete, and write queries that stay readable.\n\nWhy it matters: most app time is database time.\n\nWhen you use it: all CRUD features.\n\nTip: learn a few query patterns well, then combine them 🗄️",
            "es": "Eloquent basico: CRUD y queries legibles.\n\nPor que importa: la mayoria del tiempo de una app es tiempo de base de datos.\n\nCuando se usa: en cualquier CRUD.\n\nTip: domina pocos patrones y combinalos 🗄️",
            "zh": "Eloquent 基础：增删改查，写出可读的查询。\n\n为什么重要：应用的大部分时间都在数据库上。\n\n什么时候用：所有 CRUD。\n\n提示：先把常用查询写熟，再组合 🗄️",
        },
        "laravelRelations": {
            "en": "Relationships connect your models: hasMany, belongsTo, many-to-many.\n\nWhy it matters: real apps are connected data.\n\nWhen you use it: comments, tags, users, orders, everything.\n\nTip: eager load early to avoid N+1 surprises 🔗",
            "es": "Relaciones conectan modelos: hasMany, belongsTo, many-to-many.\n\nPor que importa: las apps reales son datos conectados.\n\nCuando se usa: comments, tags, users, orders, todo.\n\nTip: usa eager load para evitar N+1 🔗",
            "zh": "关系把模型连起来：一对多、多对多等。\n\n为什么重要：真实应用都是关联数据。\n\n什么时候用：评论、标签、用户、订单... 全都有。\n\n提示：尽早预加载，避免 N+1 🔗",
        },
        "laravelValidation": {
            "en": "Validation keeps input clean: rules, custom messages, and Form Requests.\n\nWhy it matters: bad input becomes bugs and support tickets.\n\nWhen you use it: forms, APIs, imports.\n\nTip: validate near the boundary (where data enters) 🚧",
            "es": "Validacion: reglas, mensajes y Form Requests.\n\nPor que importa: input malo se convierte en bugs y tickets.\n\nCuando se usa: forms, APIs, importaciones.\n\nTip: valida en la frontera (donde entra el dato) 🚧",
            "zh": "验证保证输入干净：规则、自定义提示、Form Request。\n\n为什么重要：脏数据会变成 bug 和工单。\n\n什么时候用：表单、API、导入。\n\n提示：在入口处验证最省事 🚧",
        },
        "laravelMiddleware": {
            "en": "Middleware is the gatekeeper: auth, rate limiting, headers, and more.\n\nWhy it matters: you keep controllers focused and security consistent.\n\nWhen you use it: protected routes and cross-cutting concerns.\n\nTip: chain small middleware instead of one giant one 🛡️",
            "es": "Middleware es el portero: auth, rate limit, headers y mas.\n\nPor que importa: controladores mas limpios y seguridad consistente.\n\nCuando se usa: rutas protegidas y cosas transversales.\n\nTip: mejor varios middleware pequenos que uno gigante 🛡️",
            "zh": "中间件是守门员：认证、限流、header 等。\n\n为什么重要：控制器更专注，安全更一致。\n\n什么时候用：保护路由和横切需求。\n\n提示：多个小中间件比一个大怪物更好 🛡️",
        },
        "laravelApi": {
            "en": "API Resources shape your JSON output: stable contracts for clients.\n\nWhy it matters: you can change the database without breaking the API.\n\nWhen you use it: mobile apps, frontends, external integrations.\n\nTip: resources are documentation you can run 📦",
            "es": "Recursos API dan forma al JSON: contratos estables para clientes.\n\nPor que importa: puedes cambiar la base sin romper la API.\n\nCuando se usa: mobile, frontend, integraciones.\n\nTip: un resource es documentacion ejecutable 📦",
            "zh": "API Resource 规范 JSON 输出：给客户端稳定的契约。\n\n为什么重要：表结构变了也不一定要改客户端。\n\n什么时候用：移动端、前端、外部集成。\n\n提示：Resource 就是可运行的文档 📦",
        },
        "laravelStorage": {
            "en": "Storage API for files: upload, read, delete, URLs, disks.\n\nWhy it matters: file logic gets messy fast if you do it ad-hoc.\n\nWhen you use it: avatars, reports, exports.\n\nTip: pick the disk first, then the path 🗂️",
            "es": "Storage para archivos: subir, leer, borrar, URLs y discos.\n\nPor que importa: si lo haces a mano, se vuelve un caos rapido.\n\nCuando se usa: avatars, reports, exports.\n\nTip: elige disco primero, luego path 🗂️",
            "zh": "Storage 管文件：上传、读取、删除、URL、disk。\n\n为什么重要：文件处理很容易变乱。\n\n什么时候用：头像、报表、导出。\n\n提示：先选 disk，再定路径 🗂️",
        },
        "laravelQueues": {
            "en": "Queues and jobs: background work, retries, delayed tasks.\n\nWhy it matters: keep requests fast and resilient.\n\nWhen you use it: emails, image processing, integrations.\n\nTip: if it can fail, make it retryable 📬",
            "es": "Colas y jobs: trabajo en background, reintentos, delays.\n\nPor que importa: requests rapidos y procesos resilientes.\n\nCuando se usa: emails, imagenes, integraciones.\n\nTip: si puede fallar, preparalo para reintentar 📬",
            "zh": "队列和任务：后台执行、重试、延迟。\n\n为什么重要：请求更快，也更抗故障。\n\n什么时候用：邮件、图片处理、集成。\n\n提示：能失败就要能重试 📬",
        },
        "laravelEvents": {
            "en": "Events and notifications: trigger reactions without coupling features.\n\nWhy it matters: cleaner architecture and fewer side effects.\n\nWhen you use it: after checkout, after signup, audit logs.\n\nTip: events should describe facts, not decisions 🔔",
            "es": "Eventos y notificaciones: disparas reacciones sin acoplar features.\n\nPor que importa: arquitectura mas limpia y menos efectos secundarios.\n\nCuando se usa: checkout, signup, auditoria.\n\nTip: un evento cuenta un hecho, no una decision 🔔",
            "zh": "事件和通知：解耦反应，不把功能绑死。\n\n为什么重要：架构更干净，副作用更少。\n\n什么时候用：支付后、注册后、审计日志。\n\n提示：事件描述事实，不描述决定 🔔",
        },
        "laravelTesting": {
            "en": "Testing: HTTP assertions, database checks, fakes, factories.\n\nWhy it matters: shipping features without breaking old ones.\n\nWhen you use it: always, especially before refactors.\n\nTip: test behavior, not implementation 🧪",
            "es": "Testing: HTTP assertions, base de datos, fakes y factories.\n\nPor que importa: sacar features sin romper lo anterior.\n\nCuando se usa: siempre, sobre todo antes de refactors.\n\nTip: testea comportamiento, no implementacion 🧪",
            "zh": "测试：HTTP 断言、数据库断言、fake、factory。\n\n为什么重要：发新功能不把旧功能弄坏。\n\n什么时候用：一直用，重构前更要用。\n\n提示：测行为，不测实现 🧪",
        },
        "laravelDeploy": {
            "en": "Deployment and performance: caches, env config, and safe routines.\n\nWhy it matters: production should be boring.\n\nWhen you use it: every deploy.\n\nTip: cache in the right order, clear with intent 🚀",
            "es": "Deploy y rendimiento: caches, env y rutinas seguras.\n\nPor que importa: produccion deberia ser aburrida.\n\nCuando se usa: en cada deploy.\n\nTip: cachea en orden y limpia con intencion 🚀",
            "zh": "部署与性能：缓存、环境配置、安全流程。\n\n为什么重要：生产越无聊越好。\n\n什么时候用：每次部署。\n\n提示：按顺序缓存，按需要清理 🚀",
        },
    }

    return mapping[cat_dir][lang]


def build_model_list(cat_dir: str, specs: list[ExerciseSpec], lang: str, base_id: int) -> str:
    # Matches the project pattern: import sbExModelListZH.dart to access purchaseManagerHive.
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
        label = ex_label(lang.lower(), n, challenge)
        topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang.lower()]
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

    lines.append("];")
    return "\n".join(lines) + "\n"


def build_exmain(cat_dir: str, ids: list[int]) -> str:
    class_name = f"{camel(cat_dir)}ExMain"

    lines: list[str] = []
    lines.append("import 'package:flutter/material.dart';")
    for ex_id in ids:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/laravel/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
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


def token_to_regex(tok: str) -> str:
    tok = normalize_must_token(tok)
    parts = re.split(r"\s+", tok.strip())
    parts = [re.escape(p) for p in parts if p]
    return r"\s+".join(parts) if parts else ""


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
    lines.append(
        "  String _t(String s) => s.replaceAll('@', '{').replaceAll('&', '}').replaceAll('#', '@');"
    )
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
    lines.append(f'              heroTag: "introButton{camel(cat_dir)}{ex_id}",')
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
    lines.append(f'              heroTag: "infoButton{camel(cat_dir)}{ex_id}",')
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
    lines.append(f'              heroTag: "runButton{camel(cat_dir)}{ex_id}",')
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


def build_courses_main_model_list(lang: str) -> str:
    # Language-specific labels for category generalName.
    names: dict[str, list[str]] = {
        "en": [
            "Laravel Basics",
            "Routing",
            "Controllers",
            "Blade",
            "Migrations",
            "Eloquent Basics",
            "Relationships",
            "Validation",
            "Middleware and Auth",
            "API Resources",
            "Storage",
            "Queues",
            "Events and Notifications",
            "Testing",
            "Deploy and Performance",
        ],
        "es": [
            "Fundamentos Laravel",
            "Rutas",
            "Controladores",
            "Blade",
            "Migraciones",
            "Eloquent Basico",
            "Relaciones",
            "Validacion",
            "Middleware y Auth",
            "Recursos API",
            "Storage",
            "Colas",
            "Eventos y Notificaciones",
            "Testing",
            "Deploy y Rendimiento",
        ],
        "zh": [
            "Laravel 基础",
            "路由",
            "控制器",
            "Blade",
            "迁移",
            "Eloquent 基础",
            "关系",
            "验证",
            "中间件与认证",
            "API 资源",
            "存储",
            "队列",
            "事件与通知",
            "测试",
            "部署与性能",
        ],
    }[lang]

    # Imports
    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")
    for cat_dir, _en, _es, _zh in CATEGORIES:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/laravel/{cat_dir}/{cat_dir}ExMain.dart';"
        )
    for cat_dir, _en, _es, _zh in CATEGORIES:
        lines.append(
            f"import '../../courses/Laravel/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';"
        )
    lines.append("")

    lines.append(f"List<CoursesMainModel> coursesLaravelMainModelList{lang.upper()} = [")
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
    lines.append("];")
    return "\n".join(lines) + "\n"


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
    "laravelBasics": [
        ex(
            "Create a new Laravel project",
            "Crear un proyecto Laravel",
            "创建 Laravel 项目",
            ["composer create-project laravel/laravel blog_api"],
            ["composer", "create-project", "laravel/laravel"],
            "Project created.",
        ),
        ex(
            "Run the local dev server",
            "Arrancar el servidor local",
            "启动本地服务器",
            ["php artisan serve"],
            ["php", "artisan", "serve"],
            "Server running.",
        ),
        ex(
            "Generate the app key",
            "Generar la app key",
            "生成应用 key",
            ["php artisan key:generate"],
            ["artisan", "key:generate"],
            "Key generated.",
        ),
        ex(
            "Run database migrations",
            "Ejecutar migraciones",
            "运行迁移",
            ["php artisan migrate"],
            ["artisan", "migrate"],
            "Migrations ran.",
        ),
        ex(
            "Create a controller",
            "Crear un controlador",
            "创建控制器",
            ["php artisan make:controller PostController"],
            ["make:controller", "PostController"],
            "Controller created.",
        ),
        ex(
            "Create a model with a migration",
            "Crear modelo con migracion",
            "创建模型并生成迁移",
            ["php artisan make:model Post -m"],
            ["make:model", "Post", "-m"],
            "Model and migration created.",
        ),
        ex(
            "Open Tinker to play with code",
            "Abrir Tinker",
            "打开 Tinker",
            ["php artisan tinker"],
            ["artisan", "tinker"],
            "Tinker started.",
        ),
        ex(
            "List all routes",
            "Listar rutas",
            "列出路由",
            ["php artisan route:list"],
            ["artisan", "route:list"],
            "Routes listed.",
        ),
        ex(
            "Clear caches with optimize:clear",
            "Limpiar caches con optimize:clear",
            "清理缓存 optimize:clear",
            ["php artisan optimize:clear"],
            ["artisan", "optimize:clear"],
            "Caches cleared.",
        ),
        ex(
            "Cache config for production",
            "Cachear config para produccion",
            "缓存配置（生产）",
            ["php artisan config:cache"],
            ["artisan", "config:cache"],
            "Config cached.",
        ),
        ex(
            "Cache routes",
            "Cachear rutas",
            "缓存路由",
            ["php artisan route:cache"],
            ["artisan", "route:cache"],
            "Routes cached.",
        ),
        ex(
            "Create a Form Request class",
            "Crear un Form Request",
            "创建 Form Request",
            ["php artisan make:request StorePostRequest"],
            ["make:request", "StorePostRequest"],
            "Request class created.",
        ),
        ex(
            "Create an API Resource",
            "Crear un API Resource",
            "创建 API Resource",
            ["php artisan make:resource PostResource"],
            ["make:resource", "PostResource"],
            "Resource created.",
        ),
        ex(
            "Create a Job",
            "Crear un Job",
            "创建 Job",
            ["php artisan make:job SendReportJob"],
            ["make:job", "SendReportJob"],
            "Job created.",
        ),
        ex(
            "Challenge: model + migration + controller in one go",
            "Desafio: modelo + migracion + controller",
            "挑战：一次生成 model+migration+controller",
            ["php artisan make:model Comment -mcr"],
            ["make:model", "Comment", "-mcr"],
            "Scaffold created.",
        ),
    ],
    "laravelRouting": [
        ex(
            "A basic GET route",
            "Una ruta GET basica",
            "基础 GET 路由",
            [
                "use Illuminate\\Support\\Facades\\Route;",
                "Route::get('/hello', function () {",
                "  return 'Hello';",
                "});",
            ],
            ["Route::get", "/hello", "return"],
            "Hello",
        ),
        ex(
            "Route that returns a view",
            "Ruta que devuelve una vista",
            "返回 view 的路由",
            [
                "Route::get('/home', function () {",
                "  return view('home');",
                "});",
            ],
            ["Route::get", "view(", "home"],
            "View rendered.",
        ),
        ex(
            "Route to a controller action",
            "Ruta a un controlador",
            "路由到控制器",
            [
                "use App\\Http\\Controllers\\PostController;",
                "Route::get('/posts', [PostController::class, 'index']);",
            ],
            ["PostController::class", "'index'", "/posts"],
            "Controller hit.",
        ),
        ex(
            "Route parameter {id}",
            "Parametro de ruta {id}",
            "路由参数 {id}",
            [
                "Route::get('/posts/{id}', function (int $id) {",
                "  return $id;",
                "});",
            ],
            ["/posts/{id}", "int $id", "return $id"],
            "id",
        ),
        ex(
            "Optional parameter {slug?}",
            "Parametro opcional {slug?}",
            "可选参数 {slug?}",
            [
                "Route::get('/blog/{slug?}', function ($slug = 'home') {",
                "  return $slug;",
                "});",
            ],
            ["/blog/{slug?}", "$slug", "'home'"],
            "slug",
        ),
        ex(
            "Name a route",
            "Poner nombre a una ruta",
            "给路由命名",
            ["Route::get('/posts', [PostController::class, 'index'])->name('posts.index');"],
            ["->name", "posts.index", "Route::get"],
            "Named route.",
        ),
        ex(
            "Route group with prefix",
            "Grupo con prefix",
            "路由组前缀",
            [
                "Route::prefix('api')->group(function () {",
                "  Route::get('/ping', fn () => 'pong');",
                "});",
            ],
            ["Route::prefix", "group", "/ping"],
            "pong",
        ),
        ex(
            "Route group with middleware",
            "Grupo con middleware",
            "带中间件的路由组",
            [
                "Route::middleware('auth')->group(function () {",
                "  Route::get('/me', fn () => 'ok');",
                "});",
            ],
            ["middleware", "auth", "/me"],
            "ok",
        ),
        ex(
            "Resource routes",
            "Rutas resource",
            "资源路由",
            ["Route::resource('posts', PostController::class);"],
            ["Route::resource", "posts", "PostController::class"],
            "Resource registered.",
        ),
        ex(
            "Constrain an {id} param to numbers",
            "Restringir {id} a numeros",
            "限制 {id} 为数字",
            ["Route::get('/users/{id}', fn (int $id) => $id)->whereNumber('id');"],
            ["whereNumber", "'id'", "/users/{id}"],
            "numbers only",
        ),
        ex(
            "Route model binding (closure)",
            "Route model binding (closure)",
            "路由模型绑定（closure）",
            [
                "use App\\Models\\Post;",
                "Route::get('/posts/{post}', function (Post $post) {",
                "  return $post->id;",
                "});",
            ],
            ["Post $post", "{post}", "->id"],
            "post id",
        ),
        ex(
            "Fallback route",
            "Ruta fallback",
            "fallback 路由",
            ["Route::fallback(fn () => response('Not found', 404));"],
            ["Route::fallback", "404", "Not found"],
            "404",
        ),
        ex(
            "A POST route",
            "Una ruta POST",
            "POST 路由",
            ["Route::post('/posts', [PostController::class, 'store']);"],
            ["Route::post", "/posts", "'store'"],
            "posted",
        ),
        ex(
            "Match multiple methods",
            "Match de varios metodos",
            "匹配多个方法",
            ["Route::match(['GET', 'POST'], '/contact', [ContactController::class, 'handle']);"],
            ["Route::match", "GET", "POST"],
            "GET or POST",
        ),
        ex(
            "Challenge: prefix + name group",
            "Desafio: group con prefix y name",
            "挑战：prefix + name 组合",
            [
                "Route::name('admin.')->prefix('admin')->group(function () {",
                "  Route::get('/users', fn () => 'ok')->name('users');",
                "});",
            ],
            ["Route::name", "admin.", "prefix"],
            "admin users",
        ),
    ],
    "laravelControllers": [
        ex(
            "Return a view from a controller",
            "Devolver una vista desde un controlador",
            "控制器返回 view",
            [
                "public function index() {",
                "  return view('posts.index');",
                "}",
            ],
            ["return view", "posts.index", "function index"],
            "HTML",
        ),
        ex(
            "Inject Request into an action",
            "Inyectar Request en una accion",
            "注入 Request",
            [
                "use Illuminate\\Http\\Request;",
                "public function store(Request $request) {",
                "  // ...",
                "}",
            ],
            ["Request $request", "function store", "use Illuminate\\Http\\Request"],
            "request in",
        ),
        ex(
            "Read input from Request",
            "Leer input del Request",
            "读取输入",
            [
                "$title = $request->input('title');",
                "return $title;",
            ],
            ["input('title')", "$request", "return"],
            "title",
        ),
        ex(
            "Return JSON",
            "Devolver JSON",
            "返回 JSON",
            ["return response()->json(['ok' => true]);"],
            ["response()->json", "ok", "true"],
            '{"ok":true}',
        ),
        ex(
            "Return 201 Created",
            "Devolver 201 Created",
            "返回 201",
            ["return response('Created', 201);"],
            ["201", "Created", "response("],
            "201",
        ),
        ex(
            "Redirect to a named route",
            "Redirigir a una ruta con nombre",
            "重定向到命名路由",
            ["return redirect()->route('posts.index');"],
            ["redirect()->route", "posts.index"],
            "redirect",
        ),
        ex(
            "Validate input inline",
            "Validar input en la accion",
            "在 action 里验证",
            [
                "$data = $request->validate([",
                "  'title' => 'required|string',",
                "]);",
            ],
            ["$request->validate", "required", "string"],
            "validated",
        ),
        ex(
            "Use a Form Request",
            "Usar un Form Request",
            "使用 Form Request",
            [
                "public function store(StorePostRequest $request) {",
                "  return 'ok';",
                "}",
            ],
            ["StorePostRequest $request", "function store"],
            "ok",
        ),
        ex(
            "Route model binding in controller",
            "Route model binding en controlador",
            "控制器里模型绑定",
            [
                "use App\\Models\\Post;",
                "public function show(Post $post) {",
                "  return $post->id;",
                "}",
            ],
            ["Post $post", "return $post->id", "function show"],
            "id",
        ),
        ex(
            "Inject a service (Cache) into controller",
            "Inyectar un servicio (Cache)",
            "注入服务（Cache）",
            [
                "use Illuminate\\Contracts\\Cache\\Repository as Cache;",
                "public function ping(Cache $cache) {",
                "  return $cache->get('ping');",
                "}",
            ],
            ["Cache $cache", "get('ping')", "Repository as Cache"],
            "cache",
        ),
        ex(
            "Return a file download",
            "Devolver una descarga",
            "返回文件下载",
            ["return response()->download($path);"],
            ["download(", "$path", "response()"],
            "file",
        ),
        ex(
            "Abort with 404",
            "Abortar con 404",
            "abort 404",
            ["abort(404);"],
            ["abort(404)"],
            "404",
        ),
        ex(
            "Return 204 No Content",
            "Devolver 204 No Content",
            "返回 204",
            ["return response()->noContent();"],
            ["noContent()", "response()"],
            "204",
        ),
        ex(
            "Add a custom header",
            "Agregar un header personalizado",
            "添加自定义 header",
            ["return response('ok')->header('X-App', 'CodeCrafters');"],
            ["->header", "X-App", "CodeCrafters"],
            "header",
        ),
        ex(
            "Challenge: validate + create + JSON",
            "Desafio: validar + crear + JSON",
            "挑战：验证 + 创建 + JSON",
            [
                "$data = $request->validate(['title' => 'required|string']);",
                "$post = Post::create($data);",
                "return response()->json(['id' => $post->id], 201);",
            ],
            ["validate", "Post::create", "201"],
            "201 + id",
        ),
    ],
    "laravelBlade": [
        ex(
            "Echo a variable",
            "Imprimir una variable",
            "输出变量",
            ["<h1>{{ $title }}</h1>"],
            ["{{", "$title", "}}"],
            "title rendered",
        ),
        ex(
            "Escape-safe output (default)",
            "Output seguro (escape por defecto)",
            "默认转义输出",
            ["<p>{{ $user->name }}</p>"],
            ["{{", "$user->name", "}}"],
            "name rendered",
        ),
        ex(
            "Extend a layout",
            "Extender un layout",
            "继承布局",
            ["@extends('layouts.app')"],
            ["@extends", "layouts.app"],
            "layout",
        ),
        ex(
            "Create a content section",
            "Crear una seccion content",
            "定义 content 区块",
            [
                "@section('content')",
                "  <p>Hello</p>",
                "@endsection",
            ],
            ["@section", "content", "@endsection"],
            "section",
        ),
        ex(
            "Include a partial",
            "Incluir un partial",
            "包含 partial",
            ["@include('partials.nav')"],
            ["@include", "partials.nav"],
            "included",
        ),
        ex(
            "Loop with foreach",
            "Loop con foreach",
            "foreach 循环",
            [
                "@foreach ($posts as $post)",
                "  <li>{{ $post->title }}</li>",
                "@endforeach",
            ],
            ["@foreach", "$posts", "@endforeach"],
            "list",
        ),
        ex(
            "Conditional if/else",
            "Condicional if/else",
            "if/else 条件",
            [
                "@if ($isAdmin)",
                "  <p>Admin</p>",
                "@else",
                "  <p>User</p>",
                "@endif",
            ],
            ["@if", "@else", "@endif"],
            "branch",
        ),
        ex(
            "CSRF token in a form",
            "CSRF en un formulario",
            "表单 CSRF",
            [
                "<form method=\"POST\">",
                "  @csrf",
                "</form>",
            ],
            ["@csrf", "method=\"POST\""],
            "csrf",
        ),
        ex(
            "Old input helper",
            "Helper old()",
            "old() 回填",
            ["<input name=\"title\" value=\"{{ old('title') }}\">"],
            ["old('title')", "{{", "}}"],
            "old",
        ),
        ex(
            "Show the first error",
            "Mostrar el primer error",
            "显示第一个错误",
            ["<span>{{ $errors->first('title') }}</span>"],
            ["$errors->first", "title"],
            "error",
        ),
        ex(
            "Use a Blade component tag",
            "Usar un componente Blade",
            "使用组件标签",
            ["<x-alert type=\"success\" />"],
            ["<x-alert", "type=\"success\""],
            "component",
        ),
        ex(
            "Use a component slot",
            "Usar un slot en componente",
            "使用 slot",
            [
                "<x-card>",
                "  <p>{{ $content }}</p>",
                "</x-card>",
            ],
            ["<x-card>", "</x-card>", "$content"],
            "slot",
        ),
        ex(
            "Auth-only block",
            "Bloque solo para auth",
            "仅登录可见",
            [
                "@auth",
                "  <p>Hi!</p>",
                "@endauth",
            ],
            ["@auth", "@endauth"],
            "auth",
        ),
        ex(
            "Authorization check (can)",
            "Chequeo de permisos (can)",
            "权限检查 can",
            [
                "@can('update', $post)",
                "  <button>Edit</button>",
                "@endcan",
            ],
            ["@can", "update", "@endcan"],
            "can",
        ),
        ex(
            "Challenge: forelse with empty",
            "Desafio: forelse con empty",
            "挑战：forelse + empty",
            [
                "@forelse ($posts as $post)",
                "  <li>{{ $post->title }}</li>",
                "@empty",
                "  <li>No posts</li>",
                "@endforelse",
            ],
            ["@forelse", "@empty", "@endforelse"],
            "empty state",
        ),
    ],
    # Migrations
    "laravelMigrations": [
        ex(
            "Create a posts table",
            "Crear tabla posts",
            "创建 posts 表",
            [
                "Schema::create('posts', function (Blueprint $table) {",
                "  $table->id();",
                "  $table->timestamps();",
                "});",
            ],
            ["Schema::create", "posts", "timestamps"],
            "table",
        ),
        ex(
            "Add a string title column",
            "Agregar columna title string",
            "添加 title 字符串列",
            ["$table->string('title');"],
            ["string('title')"],
            "title",
        ),
        ex(
            "Add a text body column",
            "Agregar columna body text",
            "添加 body text",
            ["$table->text('body');"],
            ["text('body')"],
            "body",
        ),
        ex(
            "Add a boolean with default",
            "Agregar boolean con default",
            "添加 boolean 默认值",
            ["$table->boolean('published')->default(false);"],
            ["boolean('published')", "default(false)"],
            "published",
        ),
        ex(
            "Add a nullable column",
            "Agregar columna nullable",
            "可空列",
            ["$table->string('subtitle')->nullable();"],
            ["nullable()", "subtitle"],
            "nullable",
        ),
        ex(
            "Add a unique index",
            "Agregar unique",
            "添加 unique",
            ["$table->string('slug')->unique();"],
            ["slug", "unique()"],
            "unique",
        ),
        ex(
            "Add a foreignId with constrained()",
            "Agregar foreignId con constrained()",
            "foreignId + constrained",
            ["$table->foreignId('user_id')->constrained();"],
            ["foreignId('user_id')", "constrained()"],
            "fk",
        ),
        ex(
            "Cascade delete on foreign key",
            "Cascade delete en foreign key",
            "外键级联删除",
            ["$table->foreignId('post_id')->constrained()->onDelete('cascade');"],
            ["onDelete('cascade')", "post_id"],
            "cascade",
        ),
        ex(
            "Add soft deletes",
            "Agregar soft deletes",
            "软删除",
            ["$table->softDeletes();"],
            ["softDeletes()"],
            "soft deletes",
        ),
        ex(
            "Add an index",
            "Agregar index",
            "添加索引",
            ["$table->index('created_at');"],
            ["index('created_at')"],
            "index",
        ),
        ex(
            "Modify a table with Schema::table",
            "Modificar tabla con Schema::table",
            "用 Schema::table 修改",
            [
                "Schema::table('posts', function (Blueprint $table) {",
                "  $table->integer('views')->default(0);",
                "});",
            ],
            ["Schema::table", "integer('views')", "default(0)"],
            "alter",
        ),
        ex(
            "Rename a column",
            "Renombrar una columna",
            "重命名列",
            ["$table->renameColumn('body', 'content');"],
            ["renameColumn", "body", "content"],
            "rename",
        ),
        ex(
            "Drop a column",
            "Eliminar una columna",
            "删除列",
            ["$table->dropColumn('subtitle');"],
            ["dropColumn", "subtitle"],
            "drop",
        ),
        ex(
            "Drop a table",
            "Eliminar una tabla",
            "删除表",
            ["Schema::dropIfExists('drafts');"],
            ["dropIfExists", "drafts"],
            "dropped",
        ),
        ex(
            "Challenge: create comments with FK to posts",
            "Desafio: crear comments con FK a posts",
            "挑战：comments 表外键到 posts",
            [
                "Schema::create('comments', function (Blueprint $table) {",
                "  $table->id();",
                "  $table->foreignId('post_id')->constrained()->onDelete('cascade');",
                "});",
            ],
            ["comments", "foreignId('post_id')", "cascade"],
            "comments",
        ),
    ],
    "laravelEloquent": [
        ex(
            "Allow mass assignment with $fillable",
            "Permitir mass assignment con $fillable",
            "用 $fillable 允许批量赋值",
            ["protected $fillable = ['title', 'body'];"],
            ["$fillable", "title", "body"],
            "fillable",
        ),
        ex(
            "Create a record",
            "Crear un registro",
            "创建记录",
            ["$post = Post::create(['title' => 'Hi']);"],
            ["Post::create", "title", "Hi"],
            "created",
        ),
        ex(
            "Find by id",
            "Buscar por id",
            "按 id 查找",
            ["$post = Post::find($id);"],
            ["Post::find", "$id"],
            "found",
        ),
        ex(
            "Where + first",
            "Where + first",
            "where + first",
            ["$post = Post::where('published', true)->first();"],
            ["where('published'", "first()"],
            "first",
        ),
        ex(
            "Order and get",
            "Ordenar y get",
            "排序并 get",
            ["$posts = Post::orderBy('created_at', 'desc')->get();"],
            ["orderBy", "created_at", "get()"],
            "list",
        ),
        ex(
            "Paginate results",
            "Paginar resultados",
            "分页",
            ["$posts = Post::paginate(10);"],
            ["paginate(10)"],
            "page",
        ),
        ex(
            "Update a model",
            "Actualizar un modelo",
            "更新模型",
            ["$post->update(['title' => 'New']);"],
            ["->update", "title", "New"],
            "updated",
        ),
        ex(
            "Delete a model",
            "Eliminar un modelo",
            "删除模型",
            ["$post->delete();"],
            ["->delete()"],
            "deleted",
        ),
        ex(
            "Cast an attribute",
            "Castear un atributo",
            "类型转换 casts",
            ["protected $casts = ['published' => 'boolean'];"],
            ["$casts", "published", "boolean"],
            "casts",
        ),
        ex(
            "Define an accessor",
            "Definir un accessor",
            "定义 accessor",
            [
                "public function getTitleAttribute($value) {",
                "  return strtoupper($value);",
                "}",
            ],
            ["getTitleAttribute", "strtoupper"],
            "accessor",
        ),
        ex(
            "Define a mutator",
            "Definir un mutator",
            "定义 mutator",
            [
                "public function setTitleAttribute($value) {",
                "  $this->attributes['title'] = trim($value);",
                "}",
            ],
            ["setTitleAttribute", "attributes['title']"],
            "mutator",
        ),
        ex(
            "Create a local scope",
            "Crear un scope local",
            "创建 scope",
            [
                "public function scopePublished($q) {",
                "  return $q->where('published', true);",
                "}",
            ],
            ["scopePublished", "where('published'"],
            "scope",
        ),
        ex(
            "Select specific columns",
            "Seleccionar columnas",
            "选择列",
            ["$posts = Post::select('id', 'title')->get();"],
            ["select('id'", "title", "get()"],
            "select",
        ),
        ex(
            "First or create",
            "First or create",
            "firstOrCreate",
            ["$post = Post::firstOrCreate(['slug' => 'hello']);"],
            ["firstOrCreate", "slug", "hello"],
            "firstOrCreate",
        ),
        ex(
            "Challenge: create + return JSON id",
            "Desafio: crear + devolver JSON id",
            "挑战：创建并返回 id",
            [
                "$post = Post::create(['title' => 'X']);",
                "return response()->json(['id' => $post->id]);",
            ],
            ["Post::create", "response()->json", "->id"],
            "id",
        ),
    ],
    "laravelRelations": [
        ex(
            "hasMany relation",
            "Relacion hasMany",
            "hasMany 关系",
            [
                "public function comments() {",
                "  return $this->hasMany(Comment::class);",
                "}",
            ],
            ["hasMany", "Comment::class", "comments()"],
            "hasMany",
        ),
        ex(
            "belongsTo relation",
            "Relacion belongsTo",
            "belongsTo 关系",
            [
                "public function post() {",
                "  return $this->belongsTo(Post::class);",
                "}",
            ],
            ["belongsTo", "Post::class", "post()"],
            "belongsTo",
        ),
        ex(
            "many-to-many relation",
            "Relacion many-to-many",
            "多对多关系",
            ["return $this->belongsToMany(Tag::class);"],
            ["belongsToMany", "Tag::class"],
            "many-to-many",
        ),
        ex(
            "Pivot timestamps",
            "Timestamps en pivot",
            "pivot 时间戳",
            ["return $this->belongsToMany(Tag::class)->withTimestamps();"],
            ["withTimestamps()", "belongsToMany"],
            "pivot",
        ),
        ex(
            "hasOne relation",
            "Relacion hasOne",
            "hasOne 关系",
            ["return $this->hasOne(Profile::class);"],
            ["hasOne", "Profile::class"],
            "hasOne",
        ),
        ex(
            "Polymorphic morphMany",
            "Polimorfica morphMany",
            "多态 morphMany",
            ["return $this->morphMany(Image::class, 'imageable');"],
            ["morphMany", "imageable", "Image::class"],
            "morph",
        ),
        ex(
            "Eager load relationships",
            "Eager load",
            "预加载",
            ["$posts = Post::with('comments')->get();"],
            ["with('comments')", "get()"],
            "eager",
        ),
        ex(
            "Nested eager loading",
            "Eager load anidado",
            "嵌套预加载",
            ["$posts = Post::with('comments.user')->get();"],
            ["with('comments.user')"],
            "nested",
        ),
        ex(
            "Query via relationship",
            "Query via relacion",
            "通过关系查询",
            ["$approved = $post->comments()->where('approved', true)->get();"],
            ["comments()", "where('approved'", "get()"],
            "query",
        ),
        ex(
            "withCount",
            "withCount",
            "withCount",
            ["$posts = Post::withCount('comments')->get();"],
            ["withCount('comments')", "get()"],
            "count",
        ),
        ex(
            "Attach in many-to-many",
            "Attach en many-to-many",
            "attach",
            ["$post->tags()->attach($tagId);"],
            ["tags()", "attach", "$tagId"],
            "attach",
        ),
        ex(
            "Sync in many-to-many",
            "Sync en many-to-many",
            "sync",
            ["$post->tags()->sync([$tagId]);"],
            ["tags()", "sync", "[$tagId]"],
            "sync",
        ),
        ex(
            "Create related model",
            "Crear relacionado",
            "创建关联",
            ["$post->comments()->create(['body' => 'Hi']);"],
            ["comments()", "create", "body"],
            "create related",
        ),
        ex(
            "Constrain eager loading",
            "Eager load con filtro",
            "预加载过滤",
            [
                "Post::with(['comments' => function ($q) {",
                "  $q->where('approved', true);",
                "}])->get();",
            ],
            ["with(['comments'", "approved", "get()"],
            "filtered",
        ),
        ex(
            "Challenge: chain relations in query",
            "Desafio: encadenar relaciones",
            "挑战：链式关系",
            ["$posts = User::with('posts.comments')->find($id)->posts;"],
            ["with('posts.comments')", "find($id)", "posts"],
            "chain",
        ),
    ],
    "laravelValidation": [
        ex(
            "Required string",
            "Required string",
            "必填字符串",
            ["$request->validate(['title' => 'required|string']);"],
            ["validate", "required", "string"],
            "validated",
        ),
        ex(
            "Validate an email",
            "Validar un email",
            "验证邮箱",
            ["$request->validate(['email' => 'required|email']);"],
            ["email", "required"],
            "email ok",
        ),
        ex(
            "Number with min",
            "Numero con min",
            "数字最小值",
            ["$request->validate(['age' => 'required|integer|min:18']);"],
            ["integer", "min:18", "age"],
            "age ok",
        ),
        ex(
            "Max length",
            "Longitud maxima",
            "最大长度",
            ["$request->validate(['name' => 'required|string|max:50']);"],
            ["max:50", "name"],
            "name ok",
        ),
        ex(
            "Confirmed password",
            "Password confirmed",
            "确认密码",
            ["$request->validate(['password' => 'required|confirmed']);"],
            ["confirmed", "password"],
            "confirmed",
        ),
        ex(
            "Validate array input",
            "Validar un array",
            "验证数组",
            ["$request->validate(['tags' => 'array']);"],
            ["tags", "array"],
            "array",
        ),
        ex(
            "Validate nested field",
            "Validar campo anidado",
            "验证嵌套字段",
            ["$request->validate(['user.name' => 'required|string']);"],
            ["user.name", "required"],
            "nested",
        ),
        ex(
            "Custom message",
            "Mensaje personalizado",
            "自定义提示",
            [
                "$request->validate(",
                "  ['title' => 'required'],",
                "  ['title.required' => 'Need a title'],",
                ");",
            ],
            ["title.required", "Need a title"],
            "message",
        ),
        ex(
            "Form Request rules()",
            "rules() en Form Request",
            "Form Request rules()",
            ["public function rules(): array { return ['title' => 'required']; }"],
            ["function rules", "required", "title"],
            "rules",
        ),
        ex(
            "Form Request authorize()",
            "authorize() en Form Request",
            "Form Request authorize()",
            ["public function authorize(): bool { return true; }"],
            ["authorize", "return true"],
            "authorize",
        ),
        ex(
            "Sometimes validation",
            "Validacion sometimes",
            "sometimes",
            ["$request->validate(['bio' => 'sometimes|string']);"],
            ["sometimes", "bio"],
            "sometimes",
        ),
        ex(
            "Bail early",
            "Bail early",
            "bail",
            ["$request->validate(['title' => 'bail|required|string']);"],
            ["bail", "required"],
            "bail",
        ),
        ex(
            "Conditional required_if",
            "required_if",
            "required_if",
            ["$request->validate(['vat' => 'required_if:country,ES']);"],
            ["required_if", "country,ES"],
            "conditional",
        ),
        ex(
            "Validate an uploaded image",
            "Validar imagen subida",
            "验证上传图片",
            ["$request->validate(['avatar' => 'required|image|max:2048']);"],
            ["image", "max:2048", "avatar"],
            "file ok",
        ),
        ex(
            "Challenge: validate a post payload",
            "Desafio: validar payload de post",
            "挑战：验证 post payload",
            [
                "$request->validate([",
                "  'title' => 'required|string|max:100',",
                "  'body' => 'required|string',",
                "]);",
            ],
            ["title", "max:100", "body"],
            "payload ok",
        ),
    ],
    "laravelMiddleware": [
        ex(
            "Protect a route with auth middleware",
            "Proteger ruta con auth middleware",
            "用 auth 保护路由",
            ["Route::get('/dashboard', fn () => 'ok')->middleware('auth');"],
            ["middleware('auth')", "/dashboard"],
            "protected",
        ),
        ex(
            "Group routes under middleware",
            "Grupo de rutas con middleware",
            "路由组中间件",
            [
                "Route::middleware(['auth', 'verified'])->group(function () {",
                "  Route::get('/settings', fn () => 'ok');",
                "});",
            ],
            ["middleware(['auth'", "verified", "/settings"],
            "group",
        ),
        ex(
            "Create a middleware class",
            "Crear un middleware",
            "创建中间件",
            ["php artisan make:middleware AdminOnly"],
            ["make:middleware", "AdminOnly"],
            "middleware",
        ),
        ex(
            "Middleware handle signature",
            "Firma handle() de middleware",
            "handle() 签名",
            ["public function handle($request, Closure $next) { return $next($request); }"],
            ["function handle", "Closure $next", "$next($request)"],
            "handle",
        ),
        ex(
            "Check auth state",
            "Comprobar auth",
            "检查是否登录",
            ["if (auth()->check()) { return 'yes'; }"],
            ["auth()->check"],
            "check",
        ),
        ex(
            "Get the current user",
            "Obtener el usuario actual",
            "获取当前用户",
            ["$user = auth()->user();"],
            ["auth()->user", "$user"],
            "user",
        ),
        ex(
            "Throttle a route",
            "Throttle una ruta",
            "限流",
            ["Route::get('/api/ping', fn () => 'pong')->middleware('throttle:60,1');"],
            ["throttle:60,1", "/api/ping"],
            "throttle",
        ),
        ex(
            "Use auth:sanctum for API",
            "Usar auth:sanctum",
            "API auth:sanctum",
            ["Route::get('/api/me', fn () => 'ok')->middleware('auth:sanctum');"],
            ["auth:sanctum", "/api/me"],
            "sanctum",
        ),
        ex(
            "Hash a password",
            "Hashear un password",
            "密码哈希",
            ["use Illuminate\\Support\\Facades\\Hash; $hash = Hash::make($password);"],
            ["Hash::make", "$password"],
            "hash",
        ),
        ex(
            "Define a Gate",
            "Definir un Gate",
            "定义 Gate",
            [
                "use Illuminate\\Support\\Facades\\Gate;",
                "Gate::define('update-post', function (User $user, Post $post) {",
                "  return $user->id === $post->user_id;",
                "});",
            ],
            ["Gate::define", "update-post", "return"],
            "gate",
        ),
        ex(
            "Generate a Policy",
            "Generar una Policy",
            "生成 Policy",
            ["php artisan make:policy PostPolicy --model=Post"],
            ["make:policy", "PostPolicy", "--model=Post"],
            "policy",
        ),
        ex(
            "Authorize in controller",
            "Autorizar en controlador",
            "控制器授权",
            ["$this->authorize('update', $post);"],
            ["authorize('update'", "$post"],
            "authorize",
        ),
        ex(
            "can middleware on a route",
            "Middleware can en una ruta",
            "路由 can 中间件",
            ["Route::put('/posts/{post}', [PostController::class, 'update'])->middleware('can:update,post');"],
            ["can:update,post", "Route::put", "{post}"],
            "can",
        ),
        ex(
            "Signed middleware",
            "Middleware signed",
            "signed 中间件",
            ["Route::get('/invite', fn () => 'ok')->middleware('signed');"],
            ["middleware('signed')", "/invite"],
            "signed",
        ),
        ex(
            "Challenge: protect and return 403",
            "Desafio: proteger y devolver 403",
            "挑战：保护并返回 403",
            [
                "if (!auth()->check()) {",
                "  abort(403);",
                "}",
            ],
            ["auth()->check", "abort(403)"],
            "403",
        ),
    ],
    "laravelApi": [
        ex(
            "Create a resource class",
            "Crear una clase Resource",
            "创建 Resource 类",
            ["php artisan make:resource PostResource"],
            ["make:resource", "PostResource"],
            "resource",
        ),
        ex(
            "Basic toArray()",
            "toArray() basico",
            "基本 toArray()",
            [
                "public function toArray($request): array {",
                "  return ['id' => $this->id, 'title' => $this->title];",
                "}",
            ],
            ["toArray", "'id' =>", "'title' =>"],
            "shape",
        ),
        ex(
            "Resource collection",
            "Coleccion de resources",
            "resource collection",
            ["return PostResource::collection($posts);"],
            ["::collection", "$posts"],
            "collection",
        ),
        ex(
            "Add a status code",
            "Agregar status code",
            "设置状态码",
            ["return (new PostResource($post))->response()->setStatusCode(201);"],
            ["setStatusCode(201)", "new PostResource"],
            "201",
        ),
        ex(
            "Include relationship when loaded",
            "Incluir relacion cuando esta cargada",
            "按需包含关系",
            ["'comments' => CommentResource::collection($this->whenLoaded('comments')),"],
            ["whenLoaded('comments')", "CommentResource::collection"],
            "whenLoaded",
        ),
        ex(
            "Add meta with additional()",
            "Agregar meta con additional()",
            "additional() meta",
            ["return PostResource::collection($posts)->additional(['meta' => ['count' => $posts->count()]]);"],
            ["additional", "meta", "count"],
            "meta",
        ),
        ex(
            "Format a date field",
            "Formatear una fecha",
            "格式化日期",
            ["'created' => $this->created_at->toISOString(),"],
            ["created_at", "toISOString"],
            "date",
        ),
        ex(
            "Hide a field",
            "Ocultar un campo",
            "隐藏字段",
            ["'secret' => $this->when(false, $this->secret),"],
            ["when(false", "secret"],
            "hidden",
        ),
        ex(
            "Nested resource",
            "Resource anidado",
            "嵌套 resource",
            ["'author' => new UserResource($this->whenLoaded('author')),"],
            ["new UserResource", "whenLoaded('author')"],
            "nested",
        ),
        ex(
            "Pagination with resources",
            "Paginacion con resources",
            "资源分页",
            ["return PostResource::collection(Post::paginate(10));"],
            ["paginate(10)", "collection("],
            "paginate",
        ),
        ex(
            "Return JSON error shape",
            "Devolver error JSON",
            "返回错误 JSON",
            ["return response()->json(['error' => 'bad request'], 400);"],
            ["error", "400", "bad request"],
            "400",
        ),
        ex(
            "Transform a boolean field",
            "Transformar un boolean",
            "转换 boolean",
            ["'published' => (bool) $this->published,"],
            ["(bool)", "published"],
            "bool",
        ),
        ex(
            "Resource uses request data",
            "Usar datos del request",
            "使用 request 数据",
            ["'debug' => $request->query('debug'),"],
            ["$request", "query('debug')"],
            "request",
        ),
        ex(
            "Add links",
            "Agregar links",
            "添加 links",
            ["'links' => ['self' => route('posts.show', $this->id)],"],
            ["route('posts.show'", "$this->id"],
            "links",
        ),
        ex(
            "Challenge: stable API response",
            "Desafio: respuesta API estable",
            "挑战：稳定 API 输出",
            [
                "return response()->json([",
                "  'data' => PostResource::collection($posts),",
                "  'meta' => ['count' => $posts->count()],",
                "]);",
            ],
            ["PostResource::collection", "meta", "count"],
            "stable",
        ),
    ],
    "laravelStorage": [
        ex(
            "Store an uploaded file",
            "Guardar un archivo subido",
            "保存上传文件",
            ["$path = $request->file('avatar')->store('avatars');"],
            ["file('avatar')", "store('avatars')"],
            "stored",
        ),
        ex(
            "Put a file on public disk",
            "Guardar en disco public",
            "写入 public disk",
            ["Storage::disk('public')->put('report.txt', $content);"],
            ["disk('public')", "put('report.txt'"],
            "saved",
        ),
        ex(
            "Read a file",
            "Leer un archivo",
            "读取文件",
            ["$data = Storage::get($path);"],
            ["Storage::get", "$path"],
            "read",
        ),
        ex(
            "Check if a file exists",
            "Comprobar si existe",
            "检查存在",
            ["if (Storage::exists($path)) { return 'yes'; }"],
            ["Storage::exists", "$path"],
            "exists",
        ),
        ex(
            "Delete a file",
            "Borrar un archivo",
            "删除文件",
            ["Storage::delete($path);"],
            ["Storage::delete", "$path"],
            "deleted",
        ),
        ex(
            "Get a public URL",
            "Obtener URL publica",
            "获取 URL",
            ["$url = Storage::url($path);"],
            ["Storage::url", "$url"],
            "url",
        ),
        ex(
            "Create the storage symlink",
            "Crear symlink storage",
            "创建 storage link",
            ["php artisan storage:link"],
            ["artisan", "storage:link"],
            "linked",
        ),
        ex(
            "Download a stored file",
            "Descargar un archivo",
            "下载文件",
            ["return Storage::download($path);"],
            ["Storage::download", "$path"],
            "download",
        ),
        ex(
            "Temporary URL",
            "URL temporal",
            "临时 URL",
            ["$url = Storage::temporaryUrl($path, now()->addMinutes(10));"],
            ["temporaryUrl", "addMinutes(10)"],
            "temp url",
        ),
        ex(
            "List files in a directory",
            "Listar archivos",
            "列出文件",
            ["$files = Storage::files('avatars');"],
            ["Storage::files", "avatars"],
            "files",
        ),
        ex(
            "File size",
            "Tamano de archivo",
            "文件大小",
            ["$size = Storage::size($path);"],
            ["Storage::size", "$size"],
            "size",
        ),
        ex(
            "Make a directory",
            "Crear un directorio",
            "创建目录",
            ["Storage::makeDirectory('exports');"],
            ["makeDirectory", "exports"],
            "mkdir",
        ),
        ex(
            "Move a file",
            "Mover un archivo",
            "移动文件",
            ["Storage::move('a.txt', 'b.txt');"],
            ["Storage::move", "a.txt", "b.txt"],
            "moved",
        ),
        ex(
            "Copy a file",
            "Copiar un archivo",
            "复制文件",
            ["Storage::copy('a.txt', 'backup/a.txt');"],
            ["Storage::copy", "backup/a.txt"],
            "copied",
        ),
        ex(
            "Challenge: upload and return URL",
            "Desafio: subir y devolver URL",
            "挑战：上传并返回 URL",
            [
                "$path = $request->file('avatar')->store('avatars');",
                "return Storage::url($path);",
            ],
            ["store('avatars')", "Storage::url"],
            "url",
        ),
    ],
    "laravelQueues": [
        ex(
            "Create a job class",
            "Crear un job",
            "创建 job",
            ["php artisan make:job SendWelcomeEmail"],
            ["make:job", "SendWelcomeEmail"],
            "job",
        ),
        ex(
            "Dispatch a job",
            "Dispatch de un job",
            "dispatch job",
            ["SendWelcomeEmail::dispatch($user);"],
            ["::dispatch", "$user"],
            "dispatched",
        ),
        ex(
            "Set queue connection",
            "Configurar QUEUE_CONNECTION",
            "设置 QUEUE_CONNECTION",
            ["QUEUE_CONNECTION=database"],
            ["QUEUE_CONNECTION", "database"],
            "configured",
        ),
        ex(
            "Run a queue worker",
            "Ejecutar queue:work",
            "运行 queue:work",
            ["php artisan queue:work"],
            ["artisan", "queue:work"],
            "worker",
        ),
        ex(
            "See failed jobs",
            "Ver failed jobs",
            "查看失败任务",
            ["php artisan queue:failed"],
            ["queue:failed"],
            "failed",
        ),
        ex(
            "Retry all failed jobs",
            "Reintentar failed jobs",
            "重试失败任务",
            ["php artisan queue:retry all"],
            ["queue:retry", "all"],
            "retried",
        ),
        ex(
            "Delay a job",
            "Delay de un job",
            "延迟 job",
            ["SendWelcomeEmail::dispatch($user)->delay(now()->addMinutes(5));"],
            ["->delay", "addMinutes(5)"],
            "delayed",
        ),
        ex(
            "Send job to a named queue",
            "Enviar a una queue",
            "指定队列",
            ["SendWelcomeEmail::dispatch($user)->onQueue('emails');"],
            ["onQueue('emails')", "::dispatch"],
            "queue",
        ),
        ex(
            "Job handle() method",
            "Metodo handle()",
            "handle() 方法",
            ["public function handle(): void { /* work */ }"],
            ["function handle", "void"],
            "handle",
        ),
        ex(
            "Chain jobs",
            "Encadenar jobs",
            "链式 job",
            ["Bus::chain([new AJob(), new BJob()])->dispatch();"],
            ["Bus::chain", "->dispatch"],
            "chain",
        ),
        ex(
            "Batch jobs",
            "Batch de jobs",
            "batch",
            ["Bus::batch([new AJob(), new BJob()])->dispatch();"],
            ["Bus::batch", "->dispatch"],
            "batch",
        ),
        ex(
            "Restart workers",
            "Reiniciar workers",
            "重启 worker",
            ["php artisan queue:restart"],
            ["queue:restart"],
            "restarted",
        ),
        ex(
            "Fail a job on purpose",
            "Fallar un job a proposito",
            "主动失败",
            ["throw new Exception('Boom');"],
            ["throw new Exception", "Boom"],
            "failed",
        ),
        ex(
            "Timeout property",
            "Propiedad timeout",
            "timeout 属性",
            ["public $timeout = 120;"],
            ["$timeout", "120"],
            "timeout",
        ),
        ex(
            "Challenge: delayed dispatch on a queue",
            "Desafio: dispatch delay y queue",
            "挑战：delay + queue",
            ["SendWelcomeEmail::dispatch($user)->onQueue('emails')->delay(now()->addMinutes(10));"],
            ["onQueue('emails')", "addMinutes(10)"],
            "delayed",
        ),
    ],
    "laravelEvents": [
        ex(
            "Create an event",
            "Crear un event",
            "创建 event",
            ["php artisan make:event OrderPaid"],
            ["make:event", "OrderPaid"],
            "event",
        ),
        ex(
            "Create a listener",
            "Crear un listener",
            "创建 listener",
            ["php artisan make:listener SendReceipt --event=OrderPaid"],
            ["make:listener", "SendReceipt", "--event=OrderPaid"],
            "listener",
        ),
        ex(
            "Dispatch an event",
            "Disparar un event",
            "触发 event",
            ["event(new OrderPaid($order));"],
            ["event(new", "OrderPaid", "$order"],
            "dispatched",
        ),
        ex(
            "Listener handle() method",
            "Metodo handle() del listener",
            "listener handle()",
            ["public function handle(OrderPaid $event): void { /* ... */ }"],
            ["function handle", "OrderPaid $event"],
            "handle",
        ),
        ex(
            "Create a notification",
            "Crear una notification",
            "创建 notification",
            ["php artisan make:notification InvoicePaid"],
            ["make:notification", "InvoicePaid"],
            "notification",
        ),
        ex(
            "Notify a user",
            "Notificar a un usuario",
            "通知用户",
            ["$user->notify(new InvoicePaid($invoice));"],
            ["->notify", "new InvoicePaid"],
            "notified",
        ),
        ex(
            "Queue notifications",
            "Notificaciones en queue",
            "通知进队列",
            ["class InvoicePaid extends Notification implements ShouldQueue {}"],
            ["implements ShouldQueue", "extends Notification"],
            "queued",
        ),
        ex(
            "Database notifications channel",
            "Canal database",
            "database channel",
            ["public function via($notifiable): array { return ['database']; }"],
            ["return ['database']"],
            "database",
        ),
        ex(
            "Mail notifications channel",
            "Canal mail",
            "mail channel",
            ["public function via($notifiable): array { return ['mail']; }"],
            ["return ['mail']"],
            "mail",
        ),
        ex(
            "Event subscriber",
            "Subscriber de eventos",
            "事件订阅者",
            ["public function subscribe($events): void { $events->listen(OrderPaid::class, SendReceipt::class); }"],
            ["subscribe", "listen", "OrderPaid::class"],
            "subscriber",
        ),
        ex(
            "Create an observer",
            "Crear un observer",
            "创建 observer",
            ["php artisan make:observer PostObserver --model=Post"],
            ["make:observer", "PostObserver", "--model=Post"],
            "observer",
        ),
        ex(
            "Observer created() hook",
            "Hook created() del observer",
            "observer created()",
            ["public function created(Post $post): void { /* ... */ }"],
            ["function created", "Post $post"],
            "hook",
        ),
        ex(
            "Broadcast channel (concept)",
            "Canal broadcast (concepto)",
            "broadcast 概念",
            ["Broadcast::channel('orders.{id}', function ($user, $id) { return true; });"],
            ["Broadcast::channel", "orders.{id}", "return true"],
            "broadcast",
        ),
        ex(
            "Send notification with queue",
            "Enviar notification con queue",
            "通知 + 队列",
            ["$user->notify((new InvoicePaid($invoice))->delay(now()->addMinutes(5)));"],
            ["notify(", "delay(", "addMinutes(5)"],
            "delayed",
        ),
        ex(
            "Challenge: event + listener flow",
            "Desafio: flujo event + listener",
            "挑战：event + listener 流程",
            ["event(new OrderPaid($order)); // listener reacts and sends receipt"],
            ["event(new", "OrderPaid"],
            "flow",
        ),
    ],
    "laravelTesting": [
        ex(
            "Create a feature test",
            "Crear un feature test",
            "创建测试",
            ["php artisan make:test PostApiTest"],
            ["make:test", "PostApiTest"],
            "test",
        ),
        ex(
            "Run tests",
            "Ejecutar tests",
            "运行测试",
            ["php artisan test"],
            ["artisan", "test"],
            "running",
        ),
        ex(
            "Assert status 200",
            "Assert status 200",
            "断言 200",
            ["$this->get('/')->assertStatus(200);"],
            ["assertStatus(200)", "$this->get"],
            "200",
        ),
        ex(
            "Assert JSON structure",
            "Assert JSON",
            "断言 JSON",
            ["$this->getJson('/api/ping')->assertJson(['ok' => true]);"],
            ["getJson", "assertJson", "ok"],
            "json",
        ),
        ex(
            "RefreshDatabase trait",
            "Trait RefreshDatabase",
            "RefreshDatabase",
            ["use RefreshDatabase;"],
            ["RefreshDatabase"],
            "db reset",
        ),
        ex(
            "Use a factory",
            "Usar un factory",
            "使用 factory",
            ["$post = Post::factory()->create();"],
            ["Post::factory", "->create()"],
            "factory",
        ),
        ex(
            "Assert database has row",
            "AssertDatabaseHas",
            "断言数据库",
            ["$this->assertDatabaseHas('posts', ['title' => 'Hi']);"],
            ["assertDatabaseHas", "posts", "title"],
            "db",
        ),
        ex(
            "Act as a user",
            "ActingAs",
            "actingAs",
            ["$this->actingAs($user)->get('/dashboard');"],
            ["actingAs", "/dashboard"],
            "auth",
        ),
        ex(
            "Fake notifications",
            "Notification::fake",
            "通知 fake",
            ["Notification::fake();"],
            ["Notification::fake"],
            "fake",
        ),
        ex(
            "Assert notification sent",
            "Assert notification sent",
            "断言通知发送",
            ["Notification::assertSentTo($user, InvoicePaid::class);"],
            ["assertSentTo", "InvoicePaid::class"],
            "sent",
        ),
        ex(
            "Fake events",
            "Event::fake",
            "事件 fake",
            ["Event::fake();"],
            ["Event::fake"],
            "fake",
        ),
        ex(
            "Fake queues",
            "Queue::fake",
            "队列 fake",
            ["Queue::fake();"],
            ["Queue::fake"],
            "fake",
        ),
        ex(
            "Assert job pushed",
            "Assert job pushed",
            "断言 job 推送",
            ["Queue::assertPushed(SendWelcomeEmail::class);"],
            ["assertPushed", "SendWelcomeEmail::class"],
            "pushed",
        ),
        ex(
            "Fake HTTP",
            "Http::fake",
            "HTTP fake",
            ["Http::fake();"],
            ["Http::fake"],
            "http",
        ),
        ex(
            "Challenge: test an API endpoint",
            "Desafio: testear un endpoint API",
            "挑战：测试 API",
            ["$this->getJson('/api/posts')->assertStatus(200);"],
            ["getJson", "/api/posts", "assertStatus(200)"],
            "api test",
        ),
    ],
    "laravelDeploy": [
        ex(
            "Set APP_ENV to production",
            "Poner APP_ENV en production",
            "设置 APP_ENV",
            ["APP_ENV=production"],
            ["APP_ENV", "production"],
            "env",
        ),
        ex(
            "Cache config",
            "Cachear config",
            "缓存配置",
            ["php artisan config:cache"],
            ["config:cache"],
            "cached",
        ),
        ex(
            "Cache routes",
            "Cachear rutas",
            "缓存路由",
            ["php artisan route:cache"],
            ["route:cache"],
            "cached",
        ),
        ex(
            "Cache views",
            "Cachear views",
            "缓存 view",
            ["php artisan view:cache"],
            ["view:cache"],
            "cached",
        ),
        ex(
            "Optimize",
            "Optimizar",
            "optimize",
            ["php artisan optimize"],
            ["artisan", "optimize"],
            "optimized",
        ),
        ex(
            "Clear optimize caches",
            "Limpiar optimize caches",
            "清理优化缓存",
            ["php artisan optimize:clear"],
            ["optimize:clear"],
            "cleared",
        ),
        ex(
            "Restart queue workers",
            "Reiniciar queue workers",
            "重启队列 worker",
            ["php artisan queue:restart"],
            ["queue:restart"],
            "restart",
        ),
        ex(
            "Run the scheduler",
            "Ejecutar el scheduler",
            "运行 scheduler",
            ["php artisan schedule:run"],
            ["schedule:run"],
            "schedule",
        ),
        ex(
            "Cache data with remember()",
            "Cachear con remember()",
            "Cache remember()",
            [
                "Cache::remember('stats', 60, function () {",
                "  return 123;",
                "});",
            ],
            ["Cache::remember", "stats", "return 123"],
            "cached",
        ),
        ex(
            "Forget cache key",
            "Olvidar cache key",
            "清理缓存 key",
            ["Cache::forget('stats');"],
            ["Cache::forget", "stats"],
            "forgot",
        ),
        ex(
            "Use LOG_LEVEL",
            "Usar LOG_LEVEL",
            "LOG_LEVEL",
            ["LOG_LEVEL=warning"],
            ["LOG_LEVEL", "warning"],
            "log",
        ),
        ex(
            "Health endpoint route",
            "Endpoint de salud",
            "健康检查",
            ["Route::get('/health', fn () => response('ok', 200));"],
            ["/health", "response('ok'", "200"],
            "ok",
        ),
        ex(
            "Queue failed cleanup",
            "Limpiar failed jobs",
            "清理失败任务",
            ["php artisan queue:flush"],
            ["queue:flush"],
            "flushed",
        ),
        ex(
            "Warm up caches",
            "Calentar caches",
            "预热缓存",
            [
                "php artisan config:cache",
                "php artisan route:cache",
                "php artisan view:cache",
            ],
            ["config:cache", "route:cache", "view:cache"],
            "warm",
        ),
        ex(
            "Challenge: safe deploy routine",
            "Desafio: rutina de deploy segura",
            "挑战：安全部署流程",
            [
                "php artisan optimize:clear",
                "php artisan config:cache",
                "php artisan route:cache",
                "php artisan view:cache",
            ],
            ["optimize:clear", "config:cache", "route:cache"],
            "deploy",
        ),
    ],
}


def build_model_list(cat_dir: str, specs: list[ExerciseSpec], lang: str, base_id: int) -> str:
    # Wrapper to keep type checker happy (we reuse name above).
    return _build_model_list(cat_dir, specs, lang, base_id)


def _build_model_list(cat_dir: str, specs: list[ExerciseSpec], lang: str, base_id: int) -> str:
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
        label = ex_label(lang.lower(), n, challenge)
        topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang.lower()]
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

    lines.append("];")
    return "\n".join(lines) + "\n"


def main() -> None:
    # Guard: do not regenerate if already present.
    for lang in ["en", "es", "zh"]:
        arb_path = Path(f"lib/l10n/app_{lang}.arb")
        if arb_path.exists() and f"\"{LANG_PREFIX}CorrectTitle\"" in arb_path.read_text(encoding="utf-8"):
            raise SystemExit("Laravel l10n keys already exist. Aborting to avoid duplicates.")

    # ARB entries to append
    arb_entries: dict[str, list[str]] = {"en": [], "es": [], "zh": []}

    # Global correct strings
    correct = {
        "en": ("Correct ✅", "Nice! Your snippet has the key Laravel pieces. Keep going."),
        "es": ("Correcto ✅", "Bien! Tu snippet tiene las piezas clave de Laravel. Sigue subiendo nivel."),
        "zh": ("正确 ✅", "做得好！你的代码片段包含了 Laravel 的关键结构。继续加油。"),
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

        # Model lists
        for lang in ["en", "es", "zh"]:
            write(
                Path(f"lib/data/courses/Laravel/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"),
                _build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/laravel/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB entries
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            write(
                Path(f"lib/Screens/Courses/laravel/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"),
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
                    # Encode braces for ARB, escape ICU single quotes.
                    # Also convert Blade '@' directives to '#'.
                    s2 = s.replace("@", "#") if cat_dir == "laravelBlade" else s
                    return encode_braces(escape_icu(s2))

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
            Path(f"lib/data/mainModel/Laravel/CoursesMainModelList{lang.upper()}.dart"),
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
