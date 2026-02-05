#!/usr/bin/env python3
"""Generate TensorFlow course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

Repo conventions / gotchas:
- ARB must be ICU-safe: avoid literal '{' and '}' (we encode them via encode_braces()).
- Many exercise screens decode braces using `_t()`:
    '@' -> '{'
    '&' -> '}'
  So: avoid literal '@' or '&' in localized strings unless they come from brace-encoding.
  (TensorFlow exercises avoid decorators like @tf.function to keep this safe.)
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "tensorflow"
START_ID = 5125  # Next after ASP.NET (4900-5124).

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("tfBasics", "TensorFlow Basics", "Fundamentos de TensorFlow", "TensorFlow 基础"),
    ("tfTensors", "Tensors and Shapes", "Tensores y Formas", "张量与形状"),
    ("tfOps", "Tensor Ops", "Operaciones con Tensores", "张量运算"),
    ("tfAutodiff", "Autodiff and Gradients", "Autodiff y Gradientes", "自动求导与梯度"),
    ("tfKerasIntro", "Keras Basics", "Keras Basico", "Keras 基础"),
    ("tfLayersModels", "Layers and Models", "Capas y Modelos", "层与模型"),
    ("tfTraining", "Training Loops", "Bucles de Entrenamiento", "训练循环"),
    ("tfCallbacks", "Callbacks", "Callbacks", "回调"),
    ("tfData", "tf.data Pipelines", "Pipelines con tf.data", "tf.data 数据管道"),
    ("tfPreprocessing", "Preprocessing", "Preprocesado", "预处理"),
    ("tfSaving", "Saving and Loading", "Guardar y Cargar", "保存与加载"),
    ("tfTensorBoard", "TensorBoard", "TensorBoard", "TensorBoard"),
    ("tfDeployment", "Deployment and TFLite", "Despliegue y TFLite", "部署与 TFLite"),
    ("tfPerformance", "Performance and Debugging", "Rendimiento y Debug", "性能与调试"),
    ("tfAdvanced", "Advanced Patterns", "Patrones Avanzados", "高级模式"),
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


def dart_escape_double_quoted(s: str) -> str:
    # Escape for Dart "..." strings (avoid interpolation via $).
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
        "en": "Write your TensorFlow code here...",
        "es": "Escribe tu codigo TensorFlow aqui...",
        "zh": "在这里写下你的 TensorFlow 代码...",
    }[lang]


def output_label(lang: str, text: str) -> str:
    if lang == "en":
        return f"Output: {text}"
    if lang == "es":
        return f"Salida: {text}"
    return f"输出: {text}"


def emoji_for(cat_dir: str) -> str:
    return {
        "tfBasics": "🧠",
        "tfTensors": "📦",
        "tfOps": "🧮",
        "tfAutodiff": "🧬",
        "tfKerasIntro": "🧩",
        "tfLayersModels": "🏗️",
        "tfTraining": "🏋️",
        "tfCallbacks": "⏱️",
        "tfData": "🚚",
        "tfPreprocessing": "🧽",
        "tfSaving": "💾",
        "tfTensorBoard": "📈",
        "tfDeployment": "📦",
        "tfPerformance": "⚡",
        "tfAdvanced": "🧙",
    }.get(cat_dir, "📦")


def scenario_for(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "tflite" in k or "interpreter" in k:
        return {
            "en": "you must ship an on-device model that runs fast",
            "es": "tienes que meter el modelo en el movil y que vuele",
            "zh": "你要把模型塞进手机里并且跑得快",
        }[lang]

    if "tensorboard" in k or "summary" in k or "profiler" in k:
        return {
            "en": "training is slow and you need visibility",
            "es": "el entrenamiento va lento y necesitas luz en los logs",
            "zh": "训练很慢，你需要看清楚发生了什么",
        }[lang]

    if "dataset" in k or "tf.data" in k or "prefetch" in k:
        return {
            "en": "data loading becomes the bottleneck",
            "es": "los datos se vuelven el cuello de botella",
            "zh": "数据读取成了瓶颈",
        }[lang]

    if "gradienttape" in k or "gradient" in k:
        return {
            "en": "you need to train something custom, not only call fit",
            "es": "tienes que entrenar algo custom, no solo llamar a fit",
            "zh": "你要写自定义训练，而不是只会 fit",
        }[lang]

    if "model.save" in k or "saved_model" in k or "checkpoint" in k:
        return {
            "en": "you want reproducible runs and safe checkpoints",
            "es": "quieres runs reproducibles y checkpoints seguros",
            "zh": "你想要可复现训练和可靠的 checkpoint",
        }[lang]

    pools = {
        "tfBasics": {
            "en": ["starting a notebook", "bootstrapping a ML repo", "checking the install"],
            "es": ["empezar un notebook", "arrancar un repo de ML", "comprobar la instalacion"],
            "zh": ["新建 notebook", "初始化 ML 仓库", "确认安装没问题"],
        },
        "tfKerasIntro": {
            "en": ["building a baseline model", "making a quick prototype", "getting a first accuracy number"],
            "es": ["hacer un modelo baseline", "prototipar rapido", "sacar una primera metrica"],
            "zh": ["做一个 baseline", "快速原型", "先拿到一个指标"],
        },
        "tfAdvanced": {
            "en": ["scaling training", "handling weird real-world data", "shipping like a pro"],
            "es": ["escalar entrenamiento", "manejar datos raros de verdad", "desplegar como pro"],
            "zh": ["扩展训练", "处理真实世界奇怪数据", "像专业一样交付"],
        },
    }

    pool = pools.get(cat_dir, {}).get(lang)
    if pool:
        return hpick(pool, f"{lang}:{cat_dir}:{ex_id}:scene")

    return {"en": "a real ML project", "es": "un proyecto de ML real", "zh": "真实 ML 项目"}[lang]


def concept_line(lang: str, cat_dir: str, topic: str, must: list[str]) -> str:
    k = (topic + " " + " ".join(must)).lower()

    if "tensor" in k or "shape" in k or "reshape" in k:
        return {
            "en": "Most ML bugs are shape bugs. If shapes make sense, the rest is easier.",
            "es": "Muchos bugs de ML son bugs de forma. Si las formas cuadran, lo demas fluye.",
            "zh": "很多 ML 的 bug 都是形状问题。形状对了，后面就顺。",
        }[lang]

    if "gradienttape" in k or "gradient" in k:
        return {
            "en": "Gradients are how the model learns. You are wiring the learning signal.",
            "es": "Los gradientes son como aprende el modelo. Estas cableando la senal de aprendizaje.",
            "zh": "梯度是模型学习的方式。你在接学习信号。",
        }[lang]

    if "keras" in k or "compile" in k or "fit" in k:
        return {
            "en": "Keras is the fast lane: prototype quickly, then iterate with confidence.",
            "es": "Keras es el carril rapido: prototipas y luego iteras sin miedo.",
            "zh": "Keras 是快车道：先做出来，再放心迭代。",
        }[lang]

    if "dataset" in k or "prefetch" in k or "autotune" in k:
        return {
            "en": "Your model can only be as fast as your input pipeline.",
            "es": "Tu modelo solo es tan rapido como tu pipeline de datos.",
            "zh": "模型再快也怕数据管道慢。",
        }[lang]

    if "tensorboard" in k or "summary" in k:
        return {
            "en": "If you cannot see training, you cannot debug training.",
            "es": "Si no ves el entrenamiento, no lo puedes depurar.",
            "zh": "看不见训练过程，就没法调试。",
        }[lang]

    if "save" in k or "load" in k or "checkpoint" in k:
        return {
            "en": "Saving is not a detail. It is how you avoid losing days of work.",
            "es": "Guardar no es un detalle. Es como evitas perder dias de trabajo.",
            "zh": "保存不是细节。它能避免你白干几天。",
        }[lang]

    if "tflite" in k or "interpreter" in k:
        return {
            "en": "Deployment is where ML becomes a product, not a demo.",
            "es": "El deploy es donde ML se convierte en producto, no en demo.",
            "zh": "部署让 ML 变成产品，而不是 demo。",
        }[lang]

    if "tf.function" in k or "jit" in k:
        return {
            "en": "Performance comes from tracing the right code path and measuring.",
            "es": "El rendimiento sale de trazar bien y medir, no de adivinar.",
            "zh": "性能来自正确 trace 和测量，而不是猜。",
        }[lang]

    return {
        "en": "Small concept, big leverage.",
        "es": "Concepto pequeno, palanca grande.",
        "zh": "小概念，大收益。",
    }[lang]


def instructions(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)

    openers = {
        "en": ["Mission", "Mini quest", "Quick win", "Today"],
        "es": ["Mision", "Mini reto", "Win rapido", "Hoy"],
        "zh": ["任务", "小挑战", "快速通关", "今天"],
    }[lang]

    endings = {
        "en": [
            "Keep it readable. Future-you will thank you ✅",
            "If your snippet looks like real code, it counts 💪",
            "Small code, clear idea. Hit Run 😄",
            "Do not overthink names; focus on structure 🎯",
        ],
        "es": [
            "Que se lea facil. Tu yo del futuro te lo agradece ✅",
            "Si parece codigo real, cuenta 💪",
            "Poco codigo, idea clara. Dale a Run 😄",
            "No te obsesiones con nombres; la estructura manda 🎯",
        ],
        "zh": [
            "写清楚就行。未来的你会感谢 ✅",
            "像真实代码就算过关 💪",
            "短一点，但要看得懂。点 Run 😄",
            "别纠结命名，先把结构写对 🎯",
        ],
    }[lang]

    # Keep the "checklist" short; show only a couple of must tokens to avoid being robotic.
    must_preview = ", ".join(must[:2])

    templates = {
        "en": [
            f"{emo} {{op}}: {{topic}}.\n\nScene: {{scene}}.\n\nTo pass, make sure we can spot: {{must}}.\n\n{{end}}",
            f"🎬 Scene: {{scene}}\n\nGoal: {{topic}}.\nI will look for: {{must}}.\n\n{{end}}",
            f"🧩 {{op}} (TensorFlow):\n1) Do {{topic}}\n2) Include {{must}}\n\n{{end}}",
        ],
        "es": [
            f"{emo} {{op}}: {{topic}}.\n\nEscena real: {{scene}}.\n\nPara pasar, quiero ver: {{must}}.\n\n{{end}}",
            f"🎬 Escena: {{scene}}\n\nObjetivo: {{topic}}.\nYo busco detectar: {{must}}.\n\n{{end}}",
            f"🧩 {{op}} (TensorFlow):\n1) Haz {{topic}}\n2) Asegura {{must}}\n\n{{end}}",
            f"📌 Contexto: {{scene}}\n\nTu mision: {{topic}}.\nChecklist mental: {{must}}.\n\n{{end}}",
        ],
        "zh": [
            f"{emo} {{op}}：{{topic}}\n\n场景：{{scene}}\n\n关键点：{{must}}\n\n{{end}}",
            f"🎬 场景：{{scene}}\n\n目标：{{topic}}\n我会检查：{{must}}\n\n{{end}}",
            f"🧩 {{op}}：\n1) 做 {{topic}}\n2) 写出 {{must}}\n\n{{end}}",
        ],
    }[lang]

    op = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:op")
    end = hpick(endings, f"{lang}:{cat_dir}:{ex_id}:end")
    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:tmpl")
    return tmpl.format(op=op, topic=topic, scene=scene, must=must_preview, end=end)


def info_content(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> str:
    scene = scenario_for(lang, cat_dir, ex_id, topic, must)
    emo = emoji_for(cat_dir)
    why = concept_line(lang, cat_dir, topic, must)

    closers = {
        "en": [
            f"You will use it when you are {scene}.",
            "If this clicks, the next exercises feel lighter.",
            "In code reviews, this pattern reads instantly.",
        ],
        "es": [
            f"Lo usaras cuando estes en {scene}.",
            "Cuando esto encaja, lo siguiente se vuelve mas facil.",
            "En un PR review, este patron se entiende de un vistazo.",
        ],
        "zh": [
            f"适用场景：{scene}。",
            "掌握这个后，后面会顺很多。",
            "代码评审里，这个写法一眼就懂。",
        ],
    }[lang]

    openers = {
        "en": [f"{emo} Why it matters:", f"{emo} Practical note:", f"{emo} Real-world tip:"],
        "es": [f"{emo} Por que importa:", f"{emo} Nota practica:", f"{emo} Tip real:"],
        "zh": [f"{emo} 为什么重要：", f"{emo} 实战提示：", f"{emo} 小建议："],
    }[lang]

    opener = hpick(openers, f"{lang}:{cat_dir}:{ex_id}:info_op")
    close = hpick(closers, f"{lang}:{cat_dir}:{ex_id}:info_cl")

    templates = {
        "en": [
            "{op}\n{why}\n\nFocus: {topic}.\n\n{close}",
            "{op}\n{why}\n\nThink of it like this: you are building a habit around {topic}.\n\n{close}",
        ],
        "es": [
            "{op}\n{why}\n\nEn este ejercicio te centras en: {topic}.\n\n{close}",
            "{op}\n{why}\n\nPiensa asi: hoy entrenas el reflejo de hacer {topic} sin dudar.\n\n{close}",
            "{op}\n{why}\n\nEsto no es teoria: en {scene} lo vas a agradecer.\nTu foco es: {topic}.\n\n{close}",
        ],
        "zh": [
            "{op}\n{why}\n\n这一题练：{topic}\n\n{close}",
            "{op}\n{why}\n\n把它当成肌肉记忆：{topic}\n\n{close}",
        ],
    }[lang]

    tmpl = hpick(templates, f"{lang}:{cat_dir}:{ex_id}:info_tmpl")
    return tmpl.format(op=opener, why=why, topic=topic, scene=scene, close=close)


def hint1_content(lang: str, ex_id: int, must: list[str]) -> str:
    a = must[0] if must else ""
    b = must[1] if len(must) > 1 else ""
    templates = {
        "en": [
            f"Start with: {a}. Then add {b}.",
            f"Minimum: make {a} show up clearly.",
            f"If stuck: write a tiny snippet that includes {a} and {b}.",
        ],
        "es": [
            f"Empieza por: {a}. Luego mete {b}.",
            f"Minimo: que se vea {a} clarito.",
            f"Si te atascas: snippet pequeno con {a} y {b}.",
        ],
        "zh": [
            f"先写：{a}，再加上 {b}。",
            f"最少要出现：{a}。",
            f"卡住了就先把 {a} 和 {b} 写出来。",
        ],
    }[lang]
    return hpick(templates, f"{lang}:{ex_id}:h1")


def hint2_content(lang: str, ex_id: int, topic: str) -> str:
    templates = {
        "en": [
            "Do not aim for perfect. Aim for clear ✅",
            f"If your code communicates {topic}, you are there ✅",
            "Keep it short. ML code grows fast 😄",
        ],
        "es": [
            "No busques perfecto. Busca claro ✅",
            f"Si tu codigo comunica {topic}, ya esta ✅",
            "Mantenlo corto. El codigo de ML crece rapido 😄",
        ],
        "zh": [
            "别追求完美，先追求清晰 ✅",
            f"能看出你在做 {topic} 就行 ✅",
            "写短一点。ML 代码很容易变胖 😄",
        ],
    }[lang]
    return hpick(templates, f"{lang}:{ex_id}:h2")


def gen_texts(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]):
    instr_titles = {
        "en": [f"{topic} 🧩", f"Mini quest: {topic} 🧩", f"{topic} (TensorFlow) 🧩"],
        "es": [f"{topic} 🧩", f"Mini reto: {topic} 🧩", f"{topic} (TensorFlow) 🧩"],
        "zh": [f"{topic} 🧩", f"小挑战：{topic} 🧩", f"{topic}（TensorFlow）🧩"],
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
    # Keep category info very concrete (no generic template repetition).
    mapping = {
        "tfBasics": {
            "en": "In this category you practice: installing, importing, and creating your first tensors.\n\nWhy it matters: if the basics are shaky, everything later feels random.\n\nWhen you use it: every new repo, every notebook, every quick experiment.\n\nTip: confirm shapes early 🧠",
            "es": "En esta categoria practicas: instalar, importar y crear tus primeros tensores.\n\nPor que importa: si lo basico falla, lo demas parece magia mala.\n\nCuando se usa: en cada repo nuevo, cada notebook y cada experimento rapido.\n\nTip: valida formas pronto 🧠",
            "zh": "在这一类你练：安装、导入、创建第一个张量。\n\n为什么重要：基础不稳，后面就像在赌运气。\n\n什么时候用：每个新项目、每个 notebook、每次小实验。\n\n提示：先看形状 🧠",
        },
        "tfTensors": {
            "en": "In this category you practice: shapes, reshape, concat/stack, and selecting data.\n\nWhy it matters: shape mismatches are the #1 time sink in ML.\n\nWhen you use it: preprocessing, batching, model inputs/outputs.\n\nTip: print shapes like a pro 📦",
            "es": "En esta categoria practicas: formas, reshape, concat/stack y seleccionar datos.\n\nPor que importa: los choques de forma son el bug numero 1 en ML.\n\nCuando se usa: preprocesado, batches, entradas/salidas del modelo.\n\nTip: imprime formas sin miedo 📦",
            "zh": "在这一类你练：形状、reshape、concat/stack、选择数据。\n\n为什么重要：形状不对是 ML 最常见的坑。\n\n什么时候用：预处理、批处理、模型输入输出。\n\n提示：多看 shape 📦",
        },
        "tfOps": {
            "en": "In this category you practice: math ops, reductions, activations, and simple losses.\n\nWhy it matters: training is mostly math on tensors.\n\nWhen you use it: logits, probabilities, metrics, losses.\n\nTip: reduce_mean is your best friend 🧮",
            "es": "En esta categoria practicas: operaciones, reducciones, activaciones y perdidas simples.\n\nPor que importa: entrenar es hacer mates con tensores.\n\nCuando se usa: logits, probabilidades, metricas y loss.\n\nTip: reduce_mean es tu colega 🧮",
            "zh": "在这一类你练：数学运算、reduce、激活函数、基础 loss。\n\n为什么重要：训练就是张量数学。\n\n什么时候用：logits、概率、指标、loss。\n\n提示：reduce_mean 常用 🧮",
        },
        "tfAutodiff": {
            "en": "In this category you practice: GradientTape, watching tensors, and getting gradients.\n\nWhy it matters: gradients are the engine of learning.\n\nWhen you use it: custom training loops, custom losses, research code.\n\nTip: keep tapes small 🧬",
            "es": "En esta categoria practicas: GradientTape, watch y calcular gradientes.\n\nPor que importa: los gradientes son el motor del aprendizaje.\n\nCuando se usa: training loops custom, losses custom, codigo de investigacion.\n\nTip: tapes pequenos, mente tranquila 🧬",
            "zh": "在这一类你练：GradientTape、watch、求梯度。\n\n为什么重要：梯度就是学习引擎。\n\n什么时候用：自定义训练、自定义 loss、研究代码。\n\n提示：Tape 别写太大 🧬",
        },
        "tfKerasIntro": {
            "en": "In this category you practice: building, compiling, and fitting Keras models.\n\nWhy it matters: Keras gives you fast feedback and solid defaults.\n\nWhen you use it: baselines, prototypes, production models.\n\nTip: start simple, then add complexity 🧩",
            "es": "En esta categoria practicas: crear, compilar y entrenar modelos con Keras.\n\nPor que importa: Keras te da feedback rapido y buenos defaults.\n\nCuando se usa: baselines, prototipos y modelos reales.\n\nTip: primero simple, luego potente 🧩",
            "zh": "在这一类你练：Keras 建模、compile、fit。\n\n为什么重要：Keras 反馈快，默认值靠谱。\n\n什么时候用：baseline、原型、生产模型。\n\n提示：先简单再复杂 🧩",
        },
        "tfLayersModels": {
            "en": "In this category you practice: Functional API, custom layers, and model composition.\n\nWhy it matters: real models are built from reusable blocks.\n\nWhen you use it: multi-input models, shared towers, custom behavior.\n\nTip: keep layers small and testable 🏗️",
            "es": "En esta categoria practicas: Functional API, capas custom y composicion.\n\nPor que importa: los modelos reales son bloques reutilizables.\n\nCuando se usa: multi-input, torres compartidas, comportamiento custom.\n\nTip: capas pequenas y testeables 🏗️",
            "zh": "在这一类你练：Functional API、自定义层、组合模型。\n\n为什么重要：真实模型是可复用模块搭出来的。\n\n什么时候用：多输入、共享网络、特殊行为。\n\n提示：层要小要好测 🏗️",
        },
        "tfTraining": {
            "en": "In this category you practice: custom training steps, optimizers, and metrics.\n\nWhy it matters: when fit is not enough, loops give control.\n\nWhen you use it: custom losses, special batching, research experiments.\n\nTip: log loss every few steps 🏋️",
            "es": "En esta categoria practicas: training steps custom, optimizers y metricas.\n\nPor que importa: cuando fit no basta, el loop manda.\n\nCuando se usa: losses raras, batching especial, investigacion.\n\nTip: logea loss cada X pasos 🏋️",
            "zh": "在这一类你练：自定义训练 step、优化器、指标。\n\n为什么重要：fit 不够用时，循环给你控制权。\n\n什么时候用：自定义 loss、特殊 batch、研究。\n\n提示：定期记录 loss 🏋️",
        },
        "tfCallbacks": {
            "en": "In this category you practice: EarlyStopping, checkpoints, and custom callbacks.\n\nWhy it matters: callbacks automate boring and critical training tasks.\n\nWhen you use it: every time training runs longer than a coffee.\n\nTip: save_best_only prevents regrets ⏱️",
            "es": "En esta categoria practicas: EarlyStopping, checkpoints y callbacks custom.\n\nPor que importa: automatizan tareas aburridas pero criticas.\n\nCuando se usa: cuando el entrenamiento dura mas que un cafe.\n\nTip: save_best_only = menos arrepentimiento ⏱️",
            "zh": "在这一类你练：EarlyStopping、checkpoint、自定义回调。\n\n为什么重要：回调能自动做关键但枯燥的事。\n\n什么时候用：训练超过一杯咖啡的时间。\n\n提示：save_best_only 很香 ⏱️",
        },
        "tfData": {
            "en": "In this category you practice: building fast input pipelines with tf.data.\n\nWhy it matters: slow data makes GPUs cry.\n\nWhen you use it: large datasets, augmentation, streaming data.\n\nTip: prefetch with AUTOTUNE 🚚",
            "es": "En esta categoria practicas: pipelines rapidos con tf.data.\n\nPor que importa: datos lentos = GPU triste.\n\nCuando se usa: datasets grandes, augmentations, streaming.\n\nTip: prefetch con AUTOTUNE 🚚",
            "zh": "在这一类你练：用 tf.data 搭快速数据管道。\n\n为什么重要：数据慢，GPU 再强也白搭。\n\n什么时候用：大数据集、增强、流式数据。\n\n提示：prefetch + AUTOTUNE 🚚",
        },
        "tfPreprocessing": {
            "en": "In this category you practice: normalization, text/vectorization, and augmentation layers.\n\nWhy it matters: clean inputs make training stable.\n\nWhen you use it: almost always, especially with messy real data.\n\nTip: adapt preprocessing on train data only 🧽",
            "es": "En esta categoria practicas: normalization, text/vectorization y augmentation.\n\nPor que importa: entradas limpias = entrenamiento estable.\n\nCuando se usa: casi siempre, sobre todo con datos sucios.\n\nTip: adapta solo con train 🧽",
            "zh": "在这一类你练：归一化、文本向量化、数据增强层。\n\n为什么重要：输入干净，训练才稳定。\n\n什么时候用：几乎所有项目，尤其真实脏数据。\n\n提示：只用训练集 adapt 🧽",
        },
        "tfSaving": {
            "en": "In this category you practice: saving models, weights, and checkpoints.\n\nWhy it matters: if you cannot reload it, you did not really train it.\n\nWhen you use it: experiments, production, and team handoffs.\n\nTip: keep formats consistent 💾",
            "es": "En esta categoria practicas: guardar modelos, pesos y checkpoints.\n\nPor que importa: si no puedes cargarlo, no cuenta como entrenado.\n\nCuando se usa: experimentos, prod y pasar trabajo al equipo.\n\nTip: formatos consistentes 💾",
            "zh": "在这一类你练：保存模型、权重、checkpoint。\n\n为什么重要：不能加载就不算真的训练过。\n\n什么时候用：实验、生产、团队交接。\n\n提示：格式统一 💾",
        },
        "tfTensorBoard": {
            "en": "In this category you practice: summaries, TensorBoard, and profiling.\n\nWhy it matters: charts reveal problems faster than guesses.\n\nWhen you use it: any training longer than a minute.\n\nTip: log loss and learning rate 📈",
            "es": "En esta categoria practicas: summaries, TensorBoard y profiling.\n\nPor que importa: una grafica te grita el problema antes que el codigo.\n\nCuando se usa: cualquier entrenamiento serio.\n\nTip: logea loss y learning rate 📈",
            "zh": "在这一类你练：summary、TensorBoard、profiling。\n\n为什么重要：图表比猜测更快发现问题。\n\n什么时候用：任何像样的训练。\n\n提示：记 loss 和 lr 📈",
        },
        "tfDeployment": {
            "en": "In this category you practice: converting to TFLite and running an interpreter.\n\nWhy it matters: shipping models is the real finish line.\n\nWhen you use it: mobile apps, edge devices, fast inference.\n\nTip: start without quantization, then optimize 📦",
            "es": "En esta categoria practicas: convertir a TFLite y usar el interpreter.\n\nPor que importa: desplegar es la meta real.\n\nCuando se usa: apps moviles, edge, inferencia rapida.\n\nTip: primero funciona, luego optimiza 📦",
            "zh": "在这一类你练：转 TFLite 和跑 interpreter。\n\n为什么重要：交付模型才算完成。\n\n什么时候用：移动端、边缘设备、快速推理。\n\n提示：先跑通再量化 📦",
        },
        "tfPerformance": {
            "en": "In this category you practice: tf.function, device placement, and debugging assertions.\n\nWhy it matters: performance is how you get iteration speed.\n\nWhen you use it: when training is slow or inference is too heavy.\n\nTip: measure first ⚡",
            "es": "En esta categoria practicas: tf.function, devices y asserts de debugging.\n\nPor que importa: rendimiento = velocidad para iterar.\n\nCuando se usa: cuando entrenar es lento o inferir pesa.\n\nTip: mide antes de tocar nada ⚡",
            "zh": "在这一类你练：tf.function、设备放置、调试断言。\n\n为什么重要：性能决定迭代速度。\n\n什么时候用：训练慢或推理太重。\n\n提示：先测再改 ⚡",
        },
        "tfAdvanced": {
            "en": "In this category you practice: distribution strategies, mixed precision, and custom metrics.\n\nWhy it matters: scaling is where simple code gets tested.\n\nWhen you use it: bigger models, bigger data, bigger deadlines.\n\nTip: keep correctness first 🧙",
            "es": "En esta categoria practicas: estrategias de distribucion, mixed precision y metricas custom.\n\nPor que importa: escalar es donde se prueba tu codigo.\n\nCuando se usa: modelos grandes, mas datos, mas prisa.\n\nTip: primero correcto, luego rapido 🧙",
            "zh": "在这一类你练：分布式策略、混合精度、自定义指标。\n\n为什么重要：扩展规模会暴露代码问题。\n\n什么时候用：更大模型、更大数据、更紧 deadline。\n\n提示：正确性优先 🧙",
        },
    }

    return mapping[cat_dir][lang]


def normalize_must_token(tok: str) -> str:
    tok = tok.strip()
    if len(tok) >= 2 and tok[0] == tok[-1] and tok[0] in ('"', "'"):
        return tok[1:-1]
    return tok


def token_to_regex(tok: str) -> str:
    # Split by whitespace and allow flexible spaces between parts.
    tok = normalize_must_token(tok)
    parts = re.split(r"\s+", tok.strip())
    parts = [re.escape(p) for p in parts if p]
    return r"\s+".join(parts) if parts else ""


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


ExerciseSpec = tuple[str, str, str, list[str], list[str], str]


def ex(t_en: str, t_es: str, t_zh: str, code: list[str], must: list[str], out: str) -> ExerciseSpec:
    return (t_en, t_es, t_zh, code, must, out)


EXERCISES: dict[str, list[ExerciseSpec]] = {
    "tfBasics": [
        ex(
            "Import TensorFlow",
            "Importa TensorFlow",
            "导入 TensorFlow",
            ["import tensorflow as tf", "print(tf.__version__)"],
            ["import tensorflow as tf", "tf.__version__"],
            "<version>",
        ),
        ex(
            "Create a constant tensor",
            "Crea un tensor constante",
            "创建常量张量",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "print(x)"],
            ["tf.constant", "x ="],
            "tf.Tensor",
        ),
        ex(
            "Create a Variable",
            "Crea un Variable",
            "创建 Variable",
            ["import tensorflow as tf", "w = tf.Variable(1.0)", "w.assign(2.0)"],
            ["tf.Variable", ".assign"],
            "(no output)",
        ),
        ex(
            "Zeros and ones",
            "Ceros y unos",
            "全零与全一",
            ["import tensorflow as tf", "a = tf.zeros((2, 3))", "b = tf.ones((2, 3))"],
            ["tf.zeros", "tf.ones"],
            "(no output)",
        ),
        ex(
            "Random normal tensor",
            "Tensor random normal",
            "随机正态张量",
            ["import tensorflow as tf", "x = tf.random.normal((3,))", "print(x)"],
            ["tf.random.normal"],
            "random values",
        ),
        ex(
            "Set a random seed",
            "Fija una semilla random",
            "设置随机种子",
            ["import tensorflow as tf", "tf.random.set_seed(42)", "x = tf.random.uniform((2,))"],
            ["tf.random.set_seed"],
            "(no output)",
        ),
        ex(
            "Cast to float32",
            "Convierte a float32",
            "转换为 float32",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "y = tf.cast(x, tf.float32)"],
            ["tf.cast", "tf.float32"],
            "(no output)",
        ),
        ex(
            "Convert tensor to NumPy",
            "Pasa un tensor a NumPy",
            "转成 NumPy",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "arr = x.numpy()"],
            [".numpy()"],
            "(no output)",
        ),
        ex(
            "Create a range tensor",
            "Crea un rango con tf.range",
            "用 tf.range 创建序列",
            ["import tensorflow as tf", "x = tf.range(0, 10, 2)", "print(x)"],
            ["tf.range"],
            "[0 2 4 6 8]",
        ),
        ex(
            "Square a tensor",
            "Eleva al cuadrado un tensor",
            "对张量求平方",
            ["import tensorflow as tf", "x = tf.constant([2, 3, 4])", "y = tf.square(x)"],
            ["tf.square"],
            "(no output)",
        ),
        ex(
            "Check eager mode",
            "Comprueba eager mode",
            "检查 eager 模式",
            ["import tensorflow as tf", "print(tf.executing_eagerly())"],
            ["tf.executing_eagerly"],
            "True",
        ),
        ex(
            "List physical devices",
            "Lista dispositivos fisicos",
            "列出设备",
            ["import tensorflow as tf", "print(tf.config.list_physical_devices())"],
            ["tf.config.list_physical_devices"],
            "[PhysicalDevice]",
        ),
        ex(
            "Create a scalar constant",
            "Crea una constante escalar",
            "创建标量常量",
            ["import tensorflow as tf", "x = tf.constant(7)", "print(x.shape)"],
            ["tf.constant", "x.shape"],
            "()",
        ),
        ex(
            "Use tf.identity",
            "Usa tf.identity",
            "使用 tf.identity",
            ["import tensorflow as tf", "x = tf.constant([1, 2])", "y = tf.identity(x)"],
            ["tf.identity"],
            "(no output)",
        ),
        ex(
            "Challenge: mini tensor snippet",
            "Desafio: mini snippet de tensores",
            "挑战：小张量片段",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "y = tf.cast(x, tf.float32)", "print(y)"],
            ["tf.constant", "tf.cast"],
            "tf.Tensor",
        ),
    ],
    "tfTensors": [
        ex(
            "Inspect shape",
            "Inspecciona la forma",
            "查看形状",
            ["import tensorflow as tf", "x = tf.ones((2, 3))", "print(x.shape)", "print(tf.shape(x))"],
            ["x.shape", "tf.shape"],
            "(2, 3)",
        ),
        ex(
            "Reshape a tensor",
            "Reordena con reshape",
            "reshape 张量",
            ["import tensorflow as tf", "x = tf.range(6)", "y = tf.reshape(x, (2, 3))"],
            ["tf.reshape"],
            "(no output)",
        ),
        ex(
            "Expand dims",
            "Anade una dimension",
            "增加维度",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "y = tf.expand_dims(x, axis=0)"],
            ["tf.expand_dims", "axis=0"],
            "(no output)",
        ),
        ex(
            "Squeeze dims",
            "Quita dimensiones de 1",
            "去掉为 1 的维度",
            ["import tensorflow as tf", "x = tf.ones((1, 3, 1))", "y = tf.squeeze(x)"],
            ["tf.squeeze"],
            "(no output)",
        ),
        ex(
            "Concat tensors",
            "Concatena tensores",
            "拼接张量",
            ["import tensorflow as tf", "a = tf.ones((2, 2))", "b = tf.zeros((2, 2))", "x = tf.concat([a, b], axis=0)"],
            ["tf.concat", "axis=0"],
            "(no output)",
        ),
        ex(
            "Stack tensors",
            "Apila con stack",
            "stack 张量",
            ["import tensorflow as tf", "a = tf.constant([1, 2])", "b = tf.constant([3, 4])", "x = tf.stack([a, b], axis=0)"],
            ["tf.stack", "axis=0"],
            "(no output)",
        ),
        ex(
            "Slice with tf.slice",
            "Corta con tf.slice",
            "用 tf.slice 截取",
            ["import tensorflow as tf", "x = tf.reshape(tf.range(9), (3, 3))", "y = tf.slice(x, [0, 0], [1, 3])"],
            ["tf.slice"],
            "(no output)",
        ),
        ex(
            "Gather indices",
            "Selecciona con gather",
            "gather 选择",
            ["import tensorflow as tf", "x = tf.constant([10, 20, 30, 40])", "y = tf.gather(x, [0, 2])"],
            ["tf.gather"],
            "(no output)",
        ),
        ex(
            "Boolean mask",
            "Mascara booleana",
            "布尔掩码",
            ["import tensorflow as tf", "x = tf.constant([1, -2, 3, -4])", "mask = x > 0", "y = tf.boolean_mask(x, mask)"],
            ["tf.boolean_mask"],
            "(no output)",
        ),
        ex(
            "Use tf.where",
            "Usa tf.where",
            "使用 tf.where",
            ["import tensorflow as tf", "x = tf.constant([1, -2, 3])", "y = tf.where(x > 0, x, 0)"],
            ["tf.where"],
            "(no output)",
        ),
        ex(
            "Pad a tensor",
            "Rellena con pad",
            "pad 填充",
            ["import tensorflow as tf", "x = tf.ones((2, 2))", "y = tf.pad(x, [[1, 1], [0, 0]])"],
            ["tf.pad"],
            "(no output)",
        ),
        ex(
            "Ragged tensor",
            "Tensor ragged",
            "RaggedTensor",
            ["import tensorflow as tf", "rt = tf.ragged.constant([[1, 2], [3]])", "print(rt)"],
            ["tf.ragged.constant"],
            "RaggedTensor",
        ),
        ex(
            "Sparse tensor",
            "Tensor sparse",
            "SparseTensor",
            ["import tensorflow as tf", "st = tf.sparse.SparseTensor(indices=[[0, 0]], values=[1], dense_shape=[2, 2])"],
            ["tf.sparse.SparseTensor", "dense_shape"],
            "(no output)",
        ),
        ex(
            "TensorSpec",
            "Define un TensorSpec",
            "定义 TensorSpec",
            ["import tensorflow as tf", "spec = tf.TensorSpec(shape=(None, 3), dtype=tf.float32)", "print(spec)"],
            ["tf.TensorSpec", "dtype=tf.float32"],
            "TensorSpec",
        ),
        ex(
            "Challenge: reshape and concat",
            "Desafio: reshape y concat",
            "挑战：reshape + concat",
            ["import tensorflow as tf", "a = tf.reshape(tf.range(6), (2, 3))", "b = tf.reshape(tf.range(6), (2, 3))", "x = tf.concat([a, b], axis=0)"],
            ["tf.reshape", "tf.concat"],
            "(no output)",
        ),
    ],
    "tfOps": [
        ex(
            "Add and multiply",
            "Suma y multiplica",
            "加法与乘法",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "y = tf.constant([10, 20, 30])", "z = tf.add(x, y)", "w = tf.multiply(x, y)"],
            ["tf.add", "tf.multiply"],
            "(no output)",
        ),
        ex(
            "Matrix multiplication",
            "Multiplicacion de matrices",
            "矩阵乘法",
            ["import tensorflow as tf", "a = tf.ones((2, 3))", "b = tf.ones((3, 2))", "c = tf.matmul(a, b)"],
            ["tf.matmul"],
            "(no output)",
        ),
        ex(
            "Reduce sum",
            "Reduce sum",
            "reduce_sum",
            ["import tensorflow as tf", "x = tf.constant([1, 2, 3])", "s = tf.reduce_sum(x)"],
            ["tf.reduce_sum"],
            "6",
        ),
        ex(
            "Reduce mean",
            "Reduce mean",
            "reduce_mean",
            ["import tensorflow as tf", "x = tf.constant([2.0, 4.0])", "m = tf.reduce_mean(x)"],
            ["tf.reduce_mean"],
            "3.0",
        ),
        ex(
            "Argmax",
            "Argmax",
            "argmax",
            ["import tensorflow as tf", "x = tf.constant([0.1, 0.9, 0.0])", "i = tf.argmax(x)"],
            ["tf.argmax"],
            "1",
        ),
        ex(
            "Softmax",
            "Softmax",
            "softmax",
            ["import tensorflow as tf", "logits = tf.constant([1.0, 2.0, 3.0])", "p = tf.nn.softmax(logits)"],
            ["tf.nn.softmax"],
            "(no output)",
        ),
        ex(
            "Sigmoid",
            "Sigmoid",
            "sigmoid",
            ["import tensorflow as tf", "x = tf.constant([-1.0, 0.0, 1.0])", "y = tf.nn.sigmoid(x)"],
            ["tf.nn.sigmoid"],
            "(no output)",
        ),
        ex(
            "ReLU",
            "ReLU",
            "ReLU",
            ["import tensorflow as tf", "x = tf.constant([-2.0, 3.0])", "y = tf.nn.relu(x)"],
            ["tf.nn.relu"],
            "(no output)",
        ),
        ex(
            "Clip by value",
            "Limita con clip_by_value",
            "clip_by_value 限制范围",
            ["import tensorflow as tf", "x = tf.constant([-10.0, 0.5, 10.0])", "y = tf.clip_by_value(x, -1.0, 1.0)"],
            ["tf.clip_by_value"],
            "(no output)",
        ),
        ex(
            "One-hot encoding",
            "One-hot encoding",
            "one_hot",
            ["import tensorflow as tf", "idx = tf.constant([0, 2])", "oh = tf.one_hot(idx, depth=3)"],
            ["tf.one_hot", "depth=3"],
            "(no output)",
        ),
        ex(
            "Mean Squared Error loss",
            "Loss MSE",
            "MSE loss",
            ["import tensorflow as tf", "y_true = tf.constant([1.0, 2.0])", "y_pred = tf.constant([1.5, 1.0])", "loss = tf.keras.losses.MSE(y_true, y_pred)"],
            ["tf.keras.losses.MSE"],
            "(no output)",
        ),
        ex(
            "Accuracy metric",
            "Metrica accuracy",
            "Accuracy 指标",
            ["import tensorflow as tf", "m = tf.keras.metrics.Accuracy()", "m.update_state([1, 2], [1, 0])", "print(m.result())"],
            ["tf.keras.metrics.Accuracy", "update_state"],
            "0.5",
        ),
        ex(
            "Top-k values",
            "Top-k valores",
            "top_k",
            ["import tensorflow as tf", "x = tf.constant([1.0, 5.0, 2.0])", "v, i = tf.math.top_k(x, k=2)"],
            ["tf.math.top_k", "k=2"],
            "(no output)",
        ),
        ex(
            "L2 normalize",
            "Normaliza L2",
            "L2 归一化",
            ["import tensorflow as tf", "x = tf.constant([[3.0, 4.0]])", "y = tf.nn.l2_normalize(x, axis=1)"],
            ["tf.nn.l2_normalize", "axis=1"],
            "(no output)",
        ),
        ex(
            "Challenge: logits to class",
            "Desafio: logits a clase",
            "挑战：logits 到类别",
            ["import tensorflow as tf", "logits = tf.constant([0.2, 1.3, 0.1])", "p = tf.nn.softmax(logits)", "pred = tf.argmax(p)"],
            ["tf.nn.softmax", "tf.argmax"],
            "(no output)",
        ),
    ],
    "tfAutodiff": [
        ex(
            "First GradientTape",
            "Tu primer GradientTape",
            "第一个 GradientTape",
            ["import tensorflow as tf", "x = tf.Variable(3.0)", "with tf.GradientTape() as tape:", "  y = x * x", "dy = tape.gradient(y, x)"],
            ["tf.GradientTape", "tape.gradient"],
            "(no output)",
        ),
        ex(
            "Watch a tensor",
            "Usa tape.watch",
            "tape.watch",
            ["import tensorflow as tf", "x = tf.constant(2.0)", "with tf.GradientTape() as tape:", "  tape.watch(x)", "  y = x * x", "dy = tape.gradient(y, x)"],
            ["tape.watch", "tape.gradient"],
            "(no output)",
        ),
        ex(
            "Persistent tape",
            "Tape persistente",
            "persistent tape",
            ["import tensorflow as tf", "x = tf.Variable(2.0)", "with tf.GradientTape(persistent=True) as tape:", "  y = x * x", "  z = x * x * x", "dy = tape.gradient(y, x)", "dz = tape.gradient(z, x)"],
            ["persistent=True", "tf.GradientTape"],
            "(no output)",
        ),
        ex(
            "Stop recording",
            "Stop recording",
            "stop_recording",
            ["import tensorflow as tf", "x = tf.Variable(2.0)", "with tf.GradientTape() as tape:", "  y = x * x", "  with tape.stop_recording():", "    z = y * 10"],
            ["tape.stop_recording"],
            "(no output)",
        ),
        ex(
            "Jacobian",
            "Jacobiano",
            "Jacobian",
            ["import tensorflow as tf", "x = tf.Variable([1.0, 2.0])", "with tf.GradientTape() as tape:", "  y = x * x", "j = tape.jacobian(y, x)"],
            ["tape.jacobian"],
            "(no output)",
        ),
        ex(
            "Gradient of tf.sin",
            "Gradiente de tf.sin",
            "tf.sin 的梯度",
            ["import tensorflow as tf", "x = tf.Variable(5.0)", "with tf.GradientTape() as tape:", "  y = tf.sin(x)", "dy = tape.gradient(y, x)"],
            ["tf.sin", "tape.gradient"],
            "(no output)",
        ),
        ex(
            "Compute a simple loss",
            "Calcula una loss simple",
            "计算简单 loss",
            ["import tensorflow as tf", "y_true = tf.constant([1.0, 2.0])", "w = tf.Variable(1.0)", "with tf.GradientTape() as tape:", "  y_pred = w * y_true", "  loss = tf.reduce_mean((y_pred - y_true) ** 2)"],
            ["tf.reduce_mean", "loss ="],
            "(no output)",
        ),
        ex(
            "Get gradients for variables",
            "Saca gradientes de variables",
            "对变量求梯度",
            ["import tensorflow as tf", "w = tf.Variable(1.0)", "b = tf.Variable(0.0)", "x = tf.constant([1.0, 2.0])", "with tf.GradientTape() as tape:", "  y = w * x + b", "  loss = tf.reduce_mean(y)", "grads = tape.gradient(loss, [w, b])"],
            ["tape.gradient", "grads ="],
            "(no output)",
        ),
        ex(
            "Apply gradients with SGD",
            "Aplica gradientes con SGD",
            "用 SGD 应用梯度",
            ["import tensorflow as tf", "w = tf.Variable(1.0)", "opt = tf.keras.optimizers.SGD(learning_rate=0.1)", "with tf.GradientTape() as tape:", "  loss = w * w", "g = tape.gradient(loss, w)", "opt.apply_gradients([(g, w)])"],
            ["apply_gradients", "tf.keras.optimizers.SGD"],
            "(no output)",
        ),
        ex(
            "Clip gradients by norm",
            "Clip gradients por norma",
            "按范数裁剪梯度",
            ["import tensorflow as tf", "g = tf.constant([10.0, 0.0])", "g2 = tf.clip_by_norm(g, 1.0)"],
            ["tf.clip_by_norm"],
            "(no output)",
        ),
        ex(
            "Turn a function into a graph",
            "Convierte una funcion con tf.function",
            "使用 tf.function",
            ["import tensorflow as tf", "def step(x):", "  return x + 1", "step_graph = tf.function(step)"],
            ["tf.function"],
            "(no output)",
        ),
        ex(
            "Check numerics",
            "Chequea numerics",
            "数值检查",
            ["import tensorflow as tf", "x = tf.constant([1.0])", "tf.debugging.check_numerics(x, \"x\")"],
            ["tf.debugging.check_numerics"],
            "(no output)",
        ),
        ex(
            "Gradient of matmul",
            "Gradiente de matmul",
            "matmul 的梯度",
            ["import tensorflow as tf", "a = tf.Variable(tf.ones((2, 2)))", "b = tf.Variable(tf.ones((2, 2)))", "with tf.GradientTape() as tape:", "  y = tf.matmul(a, b)", "  loss = tf.reduce_sum(y)", "grads = tape.gradient(loss, [a, b])"],
            ["tf.matmul", "tf.reduce_sum"],
            "(no output)",
        ),
        ex(
            "Higher-order gradient",
            "Gradiente de segundo orden",
            "二阶梯度",
            ["import tensorflow as tf", "x = tf.Variable(3.0)", "with tf.GradientTape() as t2:", "  with tf.GradientTape() as t1:", "    y = x * x", "  dy = t1.gradient(y, x)", "d2y = t2.gradient(dy, x)"],
            ["with tf.GradientTape", "t2.gradient"],
            "(no output)",
        ),
        ex(
            "Challenge: compute and apply gradient",
            "Desafio: calcula y aplica gradiente",
            "挑战：求梯度并应用",
            ["import tensorflow as tf", "w = tf.Variable(2.0)", "opt = tf.keras.optimizers.SGD(learning_rate=0.1)", "with tf.GradientTape() as tape:", "  loss = w * w", "g = tape.gradient(loss, w)", "opt.apply_gradients([(g, w)])"],
            ["tape.gradient", "apply_gradients"],
            "(no output)",
        ),
    ],
    "tfKerasIntro": [
        ex(
            "Build a Sequential model",
            "Crea un modelo Sequential",
            "创建 Sequential 模型",
            ["import tensorflow as tf", "model = tf.keras.Sequential([", "  tf.keras.layers.Dense(16, activation=\"relu\"),", "  tf.keras.layers.Dense(1)", "])"],
            ["tf.keras.Sequential", "Dense"],
            "(no output)",
        ),
        ex(
            "Add a Dropout layer",
            "Anade Dropout",
            "加入 Dropout",
            ["import tensorflow as tf", "layer = tf.keras.layers.Dropout(0.2)"],
            ["Dropout(0.2)"],
            "(no output)",
        ),
        ex(
            "Compile a model",
            "Compila un modelo",
            "compile 模型",
            ["model.compile(optimizer=\"adam\", loss=\"mse\", metrics=[\"mae\"])"],
            ["model.compile", "optimizer", "loss"],
            "(no output)",
        ),
        ex(
            "Fit for a few epochs",
            "Entrena con fit",
            "fit 训练",
            ["history = model.fit(x, y, epochs=3, verbose=0)"],
            ["model.fit", "epochs=3"],
            "(no output)",
        ),
        ex(
            "Evaluate",
            "Evalua",
            "evaluate",
            ["loss, mae = model.evaluate(x_test, y_test, verbose=0)"],
            ["model.evaluate"],
            "(no output)",
        ),
        ex(
            "Predict",
            "Predice",
            "predict",
            ["pred = model.predict(x_new, verbose=0)"],
            ["model.predict"],
            "(no output)",
        ),
        ex(
            "Use tf.keras.Input",
            "Usa tf.keras.Input",
            "使用 Input",
            ["import tensorflow as tf", "inputs = tf.keras.Input(shape=(4,))"],
            ["tf.keras.Input", "shape=(4,)"],
            "(no output)",
        ),
        ex(
            "BatchNormalization",
            "BatchNormalization",
            "BatchNormalization",
            ["import tensorflow as tf", "bn = tf.keras.layers.BatchNormalization()"],
            ["BatchNormalization"],
            "(no output)",
        ),
        ex(
            "Optimizer with learning_rate",
            "Optimizer con learning_rate",
            "设置 learning_rate",
            ["import tensorflow as tf", "opt = tf.keras.optimizers.Adam(learning_rate=0.001)"],
            ["learning_rate=0.001", "tf.keras.optimizers.Adam"],
            "(no output)",
        ),
        ex(
            "BinaryCrossentropy",
            "BinaryCrossentropy",
            "BinaryCrossentropy",
            ["import tensorflow as tf", "loss_fn = tf.keras.losses.BinaryCrossentropy(from_logits=True)"],
            ["BinaryCrossentropy", "from_logits=True"],
            "(no output)",
        ),
        ex(
            "Custom loss function",
            "Loss custom",
            "自定义 loss",
            ["import tensorflow as tf", "def my_loss(y_true, y_pred):", "  return tf.reduce_mean((y_true - y_pred) ** 2)"],
            ["def my_loss", "tf.reduce_mean"],
            "(no output)",
        ),
        ex(
            "AUC metric",
            "Metrica AUC",
            "AUC 指标",
            ["import tensorflow as tf", "m = tf.keras.metrics.AUC()", "m.update_state([0, 1], [0.2, 0.8])"],
            ["tf.keras.metrics.AUC"],
            "(no output)",
        ),
        ex(
            "Model summary",
            "Resumen del modelo",
            "模型 summary",
            ["model.summary()"],
            ["model.summary"],
            "(no output)",
        ),
        ex(
            "Set loss and metrics",
            "Define loss y metricas",
            "设置 loss 和 metric",
            ["model.compile(optimizer=\"adam\", loss=loss_fn, metrics=[m])"],
            ["metrics=["],
            "(no output)",
        ),
        ex(
            "Challenge: build-compile-fit",
            "Desafio: build-compile-fit",
            "挑战：build-compile-fit",
            ["import tensorflow as tf", "model = tf.keras.Sequential([tf.keras.layers.Dense(1)])", "model.compile(optimizer=\"adam\", loss=\"mse\")", "model.fit(x, y, epochs=1, verbose=0)"],
            ["tf.keras.Sequential", "model.fit"],
            "(no output)",
        ),
    ],
    "tfLayersModels": [
        ex(
            "Functional API model",
            "Modelo con Functional API",
            "Functional API 模型",
            ["import tensorflow as tf", "inputs = tf.keras.Input(shape=(4,))", "x = tf.keras.layers.Dense(8, activation=\"relu\")(inputs)", "outputs = tf.keras.layers.Dense(1)(x)", "model = tf.keras.Model(inputs, outputs)"],
            ["tf.keras.Model", "tf.keras.Input"],
            "(no output)",
        ),
        ex(
            "Concatenate two inputs",
            "Concatena dos inputs",
            "拼接两个输入",
            ["import tensorflow as tf", "a = tf.keras.Input(shape=(2,))", "b = tf.keras.Input(shape=(2,))", "x = tf.keras.layers.Concatenate()([a, b])"],
            ["Concatenate"],
            "(no output)",
        ),
        ex(
            "Multiple outputs",
            "Multiples outputs",
            "多输出",
            ["import tensorflow as tf", "inputs = tf.keras.Input(shape=(4,))", "h = tf.keras.layers.Dense(8, activation=\"relu\")(inputs)", "out1 = tf.keras.layers.Dense(1, name=\"score\")(h)", "out2 = tf.keras.layers.Dense(3, name=\"class\")(h)", "model = tf.keras.Model(inputs, [out1, out2])"],
            ["[out1, out2]", "tf.keras.Model"],
            "(no output)",
        ),
        ex(
            "Custom Layer class",
            "Clase Layer custom",
            "自定义 Layer 类",
            ["import tensorflow as tf", "class Scale(tf.keras.layers.Layer):", "  def __init__(self, factor):", "    super().__init__()", "    self.factor = factor", "  def call(self, inputs):", "    return inputs * self.factor"],
            ["tf.keras.layers.Layer", "def call"],
            "(no output)",
        ),
        ex(
            "Layer with add_weight",
            "Capa con add_weight",
            "add_weight",
            ["import tensorflow as tf", "class Bias(tf.keras.layers.Layer):", "  def build(self, input_shape):", "    self.b = self.add_weight(shape=(1,), initializer=\"zeros\")", "  def call(self, inputs):", "    return inputs + self.b"],
            ["add_weight", "def build"],
            "(no output)",
        ),
        ex(
            "Subclass a Model",
            "Subclasea un Model",
            "子类化 Model",
            ["import tensorflow as tf", "class MyModel(tf.keras.Model):", "  def __init__(self):", "    super().__init__()", "    self.d1 = tf.keras.layers.Dense(8, activation=\"relu\")", "    self.d2 = tf.keras.layers.Dense(1)", "  def call(self, x):", "    return self.d2(self.d1(x))"],
            ["class MyModel", "tf.keras.Model"],
            "(no output)",
        ),
        ex(
            "Training flag in call",
            "Flag training en call",
            "call 里的 training",
            ["import tensorflow as tf", "class MyDrop(tf.keras.Model):", "  def __init__(self):", "    super().__init__()", "    self.drop = tf.keras.layers.Dropout(0.2)", "  def call(self, x, training=False):", "    return self.drop(x, training=training)"],
            ["training=False", "training=training"],
            "(no output)",
        ),
        ex(
            "get_config",
            "get_config",
            "get_config",
            ["import tensorflow as tf", "class MyLayer(tf.keras.layers.Layer):", "  def get_config(self):", "    config = super().get_config()", "    return config"],
            ["get_config"],
            "(no output)",
        ),
        ex(
            "Lambda layer",
            "Capa Lambda",
            "Lambda 层",
            ["import tensorflow as tf", "layer = tf.keras.layers.Lambda(lambda x: x * 2)"],
            ["tf.keras.layers.Lambda"],
            "(no output)",
        ),
        ex(
            "L2 regularizer",
            "Regularizador L2",
            "L2 正则",
            ["import tensorflow as tf", "reg = tf.keras.regularizers.l2(0.01)", "dense = tf.keras.layers.Dense(8, kernel_regularizer=reg)"],
            ["regularizers.l2", "kernel_regularizer"],
            "(no output)",
        ),
        ex(
            "MaxNorm constraint",
            "Constraint MaxNorm",
            "MaxNorm 约束",
            ["import tensorflow as tf", "c = tf.keras.constraints.MaxNorm(2)", "dense = tf.keras.layers.Dense(8, kernel_constraint=c)"],
            ["constraints.MaxNorm", "kernel_constraint"],
            "(no output)",
        ),
        ex(
            "HeNormal initializer",
            "Initializer HeNormal",
            "HeNormal 初始化",
            ["import tensorflow as tf", "init = tf.keras.initializers.HeNormal()", "dense = tf.keras.layers.Dense(16, kernel_initializer=init)"],
            ["initializers.HeNormal", "kernel_initializer"],
            "(no output)",
        ),
        ex(
            "Name a layer",
            "Pon nombre a una capa",
            "给层命名",
            ["import tensorflow as tf", "dense = tf.keras.layers.Dense(8, name=\"hidden\")"],
            ["name=\"hidden\""],
            "(no output)",
        ),
        ex(
            "Build then call",
            "Build y luego call",
            "build 再 call",
            ["import tensorflow as tf", "layer = tf.keras.layers.Dense(4)", "layer.build((None, 3))"],
            ["layer.build"],
            "(no output)",
        ),
        ex(
            "Challenge: custom layer in model",
            "Desafio: capa custom en modelo",
            "挑战：自定义层进模型",
            ["import tensorflow as tf", "inputs = tf.keras.Input(shape=(2,))", "x = tf.keras.layers.Dense(4, activation=\"relu\")(inputs)", "outputs = tf.keras.layers.Dense(1)(x)", "model = tf.keras.Model(inputs, outputs)"],
            ["tf.keras.Model", "Dense(4"],
            "(no output)",
        ),
    ],
    "tfTraining": [
        ex(
            "Define an optimizer",
            "Define un optimizer",
            "定义优化器",
            ["import tensorflow as tf", "optimizer = tf.keras.optimizers.SGD(learning_rate=0.1)"],
            ["tf.keras.optimizers.SGD", "learning_rate=0.1"],
            "(no output)",
        ),
        ex(
            "Define a loss function",
            "Define una loss",
            "定义 loss",
            ["import tensorflow as tf", "loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)"],
            ["SparseCategoricalCrossentropy", "from_logits=True"],
            "(no output)",
        ),
        ex(
            "Training step skeleton",
            "Esqueleto de training step",
            "训练 step 骨架",
            ["import tensorflow as tf", "def train_step(x, y):", "  with tf.GradientTape() as tape:", "    logits = model(x, training=True)", "    loss = loss_fn(y, logits)", "  grads = tape.gradient(loss, model.trainable_variables)", "  optimizer.apply_gradients(zip(grads, model.trainable_variables))"],
            ["tf.GradientTape", "optimizer.apply_gradients"],
            "(no output)",
        ),
        ex(
            "Update an accuracy metric",
            "Actualiza una metrica",
            "更新指标",
            ["train_acc = tf.keras.metrics.SparseCategoricalAccuracy()", "train_acc.update_state(y, logits)", "print(train_acc.result())"],
            ["update_state", "SparseCategoricalAccuracy"],
            "(no output)",
        ),
        ex(
            "Reset metric state",
            "Resetea una metrica",
            "重置指标",
            ["train_acc.reset_state()"],
            ["reset_state"],
            "(no output)",
        ),
        ex(
            "Loop over a dataset",
            "Itera un dataset",
            "遍历 dataset",
            ["for batch_x, batch_y in dataset:", "  train_step(batch_x, batch_y)"],
            ["in dataset", "train_step("],
            "(no output)",
        ),
        ex(
            "Turn train_step into tf.function",
            "Convierte train_step con tf.function",
            "用 tf.function 包装 train_step",
            ["train_step = tf.function(train_step)"],
            ["tf.function"],
            "(no output)",
        ),
        ex(
            "Average loss metric",
            "Metrica media de loss",
            "loss 平均指标",
            ["train_loss = tf.keras.metrics.Mean()", "train_loss.update_state(loss)", "print(train_loss.result())"],
            ["tf.keras.metrics.Mean"],
            "(no output)",
        ),
        ex(
            "Gradient clipping (global norm)",
            "Clip de gradientes (global norm)",
            "全局范数裁剪",
            ["grads, _ = tf.clip_by_global_norm(grads, 1.0)", "optimizer.apply_gradients(zip(grads, model.trainable_variables))"],
            ["tf.clip_by_global_norm"],
            "(no output)",
        ),
        ex(
            "Learning rate schedule",
            "Schedule de learning rate",
            "学习率 schedule",
            ["import tensorflow as tf", "schedule = tf.keras.optimizers.schedules.ExponentialDecay(0.1, decay_steps=100, decay_rate=0.96)", "optimizer = tf.keras.optimizers.SGD(learning_rate=schedule)"],
            ["ExponentialDecay", "decay_steps=100"],
            "(no output)",
        ),
        ex(
            "Use tf.summary.scalar",
            "Usa tf.summary.scalar",
            "写 tf.summary.scalar",
            ["import tensorflow as tf", "writer = tf.summary.create_file_writer(\"logs\")", "with writer.as_default():", "  tf.summary.scalar(\"loss\", loss, step=step)"],
            ["tf.summary.scalar", "create_file_writer"],
            "(no output)",
        ),
        ex(
            "Mixed precision policy",
            "Politica mixed precision",
            "混合精度策略",
            ["import tensorflow as tf", "tf.keras.mixed_precision.set_global_policy(\"mixed_float16\")"],
            ["mixed_precision.set_global_policy"],
            "(no output)",
        ),
        ex(
            "Checkpoint the model",
            "Crea un checkpoint",
            "创建 checkpoint",
            ["import tensorflow as tf", "ckpt = tf.train.Checkpoint(model=model, optimizer=optimizer)"],
            ["tf.train.Checkpoint"],
            "(no output)",
        ),
        ex(
            "Restore latest checkpoint",
            "Restaura el ultimo checkpoint",
            "恢复最新 checkpoint",
            ["manager = tf.train.CheckpointManager(ckpt, \"ckpts\", max_to_keep=3)", "ckpt.restore(manager.latest_checkpoint)"],
            ["CheckpointManager", "latest_checkpoint"],
            "(no output)",
        ),
        ex(
            "Challenge: custom loop mini",
            "Desafio: mini loop custom",
            "挑战：迷你自定义循环",
            ["import tensorflow as tf", "for batch_x, batch_y in dataset:", "  with tf.GradientTape() as tape:", "    logits = model(batch_x, training=True)", "    loss = loss_fn(batch_y, logits)", "  grads = tape.gradient(loss, model.trainable_variables)", "  optimizer.apply_gradients(zip(grads, model.trainable_variables))"],
            ["for batch_x, batch_y", "optimizer.apply_gradients"],
            "(no output)",
        ),
    ],
    "tfCallbacks": [
        ex(
            "EarlyStopping callback",
            "Callback EarlyStopping",
            "EarlyStopping 回调",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.EarlyStopping(monitor=\"val_loss\", patience=2)"],
            ["EarlyStopping", "monitor=\"val_loss\""],
            "(no output)",
        ),
        ex(
            "ModelCheckpoint callback",
            "Callback ModelCheckpoint",
            "ModelCheckpoint 回调",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.ModelCheckpoint(\"best.keras\", save_best_only=True)"],
            ["ModelCheckpoint", "save_best_only=True"],
            "(no output)",
        ),
        ex(
            "TensorBoard callback",
            "Callback TensorBoard",
            "TensorBoard 回调",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.TensorBoard(log_dir=\"logs/run1\")"],
            ["TensorBoard", "log_dir="],
            "(no output)",
        ),
        ex(
            "ReduceLROnPlateau",
            "ReduceLROnPlateau",
            "ReduceLROnPlateau",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.ReduceLROnPlateau(monitor=\"val_loss\", factor=0.5, patience=1)"],
            ["ReduceLROnPlateau", "factor=0.5"],
            "(no output)",
        ),
        ex(
            "LearningRateScheduler",
            "LearningRateScheduler",
            "LearningRateScheduler",
            ["import tensorflow as tf", "def schedule(epoch, lr):", "  return lr * 0.9", "cb = tf.keras.callbacks.LearningRateScheduler(schedule)"],
            ["LearningRateScheduler", "def schedule"],
            "(no output)",
        ),
        ex(
            "CSVLogger",
            "CSVLogger",
            "CSVLogger",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.CSVLogger(\"train.csv\")"],
            ["CSVLogger"],
            "(no output)",
        ),
        ex(
            "TerminateOnNaN",
            "TerminateOnNaN",
            "TerminateOnNaN",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.TerminateOnNaN()"],
            ["TerminateOnNaN"],
            "(no output)",
        ),
        ex(
            "Custom Callback class",
            "Clase Callback custom",
            "自定义 Callback 类",
            ["import tensorflow as tf", "class MyCb(tf.keras.callbacks.Callback):", "  def on_epoch_end(self, epoch, logs=None):", "    print(epoch, logs)"],
            ["tf.keras.callbacks.Callback", "on_epoch_end"],
            "(no output)",
        ),
        ex(
            "Use callbacks in fit",
            "Usa callbacks en fit",
            "fit 里用 callbacks",
            ["callbacks = [cb1, cb2]", "model.fit(x, y, epochs=3, callbacks=callbacks)"],
            ["callbacks=callbacks", "model.fit"],
            "(no output)",
        ),
        ex(
            "Use validation_data",
            "Usa validation_data",
            "validation_data",
            ["model.fit(x, y, validation_data=(x_val, y_val), epochs=2)"],
            ["validation_data="],
            "(no output)",
        ),
        ex(
            "Read history",
            "Lee history",
            "读取 history",
            ["history = model.fit(x, y, epochs=1, verbose=0)", "print(history.history)"],
            ["history.history"],
            "(no output)",
        ),
        ex(
            "ProgbarLogger",
            "ProgbarLogger",
            "ProgbarLogger",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.ProgbarLogger()"],
            ["ProgbarLogger"],
            "(no output)",
        ),
        ex(
            "Custom on_train_begin",
            "Custom on_train_begin",
            "on_train_begin",
            ["import tensorflow as tf", "class MyCb(tf.keras.callbacks.Callback):", "  def on_train_begin(self, logs=None):", "    print(\"start\")"],
            ["on_train_begin"],
            "(no output)",
        ),
        ex(
            "Combine 3 callbacks",
            "Combina 3 callbacks",
            "组合 3 个回调",
            ["callbacks = [early, ckpt, tb]", "model.fit(x, y, epochs=5, callbacks=callbacks)"],
            ["callbacks = [", "model.fit"],
            "(no output)",
        ),
        ex(
            "Challenge: callback that logs loss",
            "Desafio: callback que logea loss",
            "挑战：记录 loss 的回调",
            ["import tensorflow as tf", "class LossCb(tf.keras.callbacks.Callback):", "  def on_batch_end(self, batch, logs=None):", "    print(logs.get(\"loss\"))"],
            ["on_batch_end", "logs.get(\"loss\")"],
            "(no output)",
        ),
    ],
    "tfData": [
        ex(
            "from_tensor_slices",
            "from_tensor_slices",
            "from_tensor_slices",
            ["import tensorflow as tf", "ds = tf.data.Dataset.from_tensor_slices((x, y))"],
            ["tf.data.Dataset.from_tensor_slices"],
            "(no output)",
        ),
        ex(
            "Shuffle",
            "Shuffle",
            "shuffle",
            ["ds = ds.shuffle(1000)"],
            [".shuffle("],
            "(no output)",
        ),
        ex(
            "Batch",
            "Batch",
            "batch",
            ["ds = ds.batch(32)"],
            [".batch(32)"],
            "(no output)",
        ),
        ex(
            "Map",
            "Map",
            "map",
            ["ds = ds.map(preprocess)"],
            [".map("],
            "(no output)",
        ),
        ex(
            "Prefetch",
            "Prefetch",
            "prefetch",
            ["ds = ds.prefetch(tf.data.AUTOTUNE)"],
            [".prefetch", "tf.data.AUTOTUNE"],
            "(no output)",
        ),
        ex(
            "Cache",
            "Cache",
            "cache",
            ["ds = ds.cache()"],
            [".cache("],
            "(no output)",
        ),
        ex(
            "Repeat",
            "Repeat",
            "repeat",
            ["ds = ds.repeat()"],
            [".repeat("],
            "(no output)",
        ),
        ex(
            "Take",
            "Take",
            "take",
            ["small = ds.take(5)"],
            [".take(5)"],
            "(no output)",
        ),
        ex(
            "Skip",
            "Skip",
            "skip",
            ["rest = ds.skip(10)"],
            [".skip(10)"],
            "(no output)",
        ),
        ex(
            "Zip datasets",
            "Zip datasets",
            "zip",
            ["ds2 = tf.data.Dataset.from_tensor_slices(z)", "zipped = tf.data.Dataset.zip((ds, ds2))"],
            ["tf.data.Dataset.zip"],
            "(no output)",
        ),
        ex(
            "Concatenate datasets",
            "Concatena datasets",
            "concatenate",
            ["ds3 = ds.concatenate(ds2)"],
            [".concatenate("],
            "(no output)",
        ),
        ex(
            "Interleave",
            "Interleave",
            "interleave",
            ["ds = files.interleave(read_file, num_parallel_calls=tf.data.AUTOTUNE)"],
            [".interleave", "num_parallel_calls"],
            "(no output)",
        ),
        ex(
            "Set num_parallel_calls",
            "Usa num_parallel_calls",
            "num_parallel_calls",
            ["ds = ds.map(preprocess, num_parallel_calls=tf.data.AUTOTUNE)"],
            ["num_parallel_calls=tf.data.AUTOTUNE"],
            "(no output)",
        ),
        ex(
            "AUTOTUNE constant",
            "Constante AUTOTUNE",
            "AUTOTUNE 常量",
            ["auto = tf.data.AUTOTUNE"],
            ["tf.data.AUTOTUNE"],
            "(no output)",
        ),
        ex(
            "Challenge: fast pipeline chain",
            "Desafio: cadena rapida",
            "挑战：快速链式管道",
            ["ds = tf.data.Dataset.from_tensor_slices((x, y))", "ds = ds.shuffle(1000).batch(32).prefetch(tf.data.AUTOTUNE)"],
            ["from_tensor_slices", "prefetch"],
            "(no output)",
        ),
    ],
    "tfPreprocessing": [
        ex(
            "Normalization layer",
            "Capa Normalization",
            "Normalization 层",
            ["import tensorflow as tf", "norm = tf.keras.layers.Normalization()", "norm.adapt(train_data)"],
            ["Normalization", ".adapt("],
            "(no output)",
        ),
        ex(
            "Rescaling layer",
            "Capa Rescaling",
            "Rescaling 层",
            ["import tensorflow as tf", "scale = tf.keras.layers.Rescaling(1.0 / 255)"],
            ["Rescaling"],
            "(no output)",
        ),
        ex(
            "TextVectorization",
            "TextVectorization",
            "TextVectorization",
            ["import tensorflow as tf", "tv = tf.keras.layers.TextVectorization(max_tokens=1000)", "tv.adapt(texts)"],
            ["TextVectorization", "max_tokens=1000"],
            "(no output)",
        ),
        ex(
            "StringLookup",
            "StringLookup",
            "StringLookup",
            ["import tensorflow as tf", "sl = tf.keras.layers.StringLookup()", "sl.adapt(words)"],
            ["StringLookup"],
            "(no output)",
        ),
        ex(
            "IntegerLookup",
            "IntegerLookup",
            "IntegerLookup",
            ["import tensorflow as tf", "il = tf.keras.layers.IntegerLookup()", "il.adapt(ids)"],
            ["IntegerLookup"],
            "(no output)",
        ),
        ex(
            "CategoryEncoding",
            "CategoryEncoding",
            "CategoryEncoding",
            ["import tensorflow as tf", "enc = tf.keras.layers.CategoryEncoding(num_tokens=10, output_mode=\"one_hot\")"],
            ["CategoryEncoding", "output_mode=\"one_hot\""],
            "(no output)",
        ),
        ex(
            "Discretization",
            "Discretization",
            "Discretization",
            ["import tensorflow as tf", "disc = tf.keras.layers.Discretization(bin_boundaries=[0.0, 1.0, 2.0])"],
            ["Discretization", "bin_boundaries"],
            "(no output)",
        ),
        ex(
            "Hashing",
            "Hashing",
            "Hashing",
            ["import tensorflow as tf", "h = tf.keras.layers.Hashing(num_bins=1000)"],
            ["Hashing", "num_bins=1000"],
            "(no output)",
        ),
        ex(
            "RandomFlip",
            "RandomFlip",
            "RandomFlip",
            ["import tensorflow as tf", "aug = tf.keras.layers.RandomFlip(mode=\"horizontal\")"],
            ["RandomFlip", "mode=\"horizontal\""],
            "(no output)",
        ),
        ex(
            "RandomRotation",
            "RandomRotation",
            "RandomRotation",
            ["import tensorflow as tf", "aug = tf.keras.layers.RandomRotation(0.1)"],
            ["RandomRotation(0.1)"],
            "(no output)",
        ),
        ex(
            "RandomZoom",
            "RandomZoom",
            "RandomZoom",
            ["import tensorflow as tf", "aug = tf.keras.layers.RandomZoom(0.1)"],
            ["RandomZoom(0.1)"],
            "(no output)",
        ),
        ex(
            "tf.image.resize",
            "tf.image.resize",
            "tf.image.resize",
            ["import tensorflow as tf", "img2 = tf.image.resize(img, [224, 224])"],
            ["tf.image.resize"],
            "(no output)",
        ),
        ex(
            "tf.image.random_crop",
            "tf.image.random_crop",
            "tf.image.random_crop",
            ["import tensorflow as tf", "img2 = tf.image.random_crop(img, size=[128, 128, 3])"],
            ["tf.image.random_crop", "size=[128, 128, 3]"],
            "(no output)",
        ),
        ex(
            "Preprocess in map",
            "Preprocesa en map",
            "在 map 里预处理",
            ["ds = ds.map(preprocess, num_parallel_calls=tf.data.AUTOTUNE)"],
            ["num_parallel_calls", "tf.data.AUTOTUNE"],
            "(no output)",
        ),
        ex(
            "Challenge: preprocessing + model",
            "Desafio: preprocesado y modelo",
            "挑战：预处理 + 模型",
            ["import tensorflow as tf", "inputs = tf.keras.Input(shape=(4,))", "x = tf.keras.layers.Normalization()(inputs)", "outputs = tf.keras.layers.Dense(1)(x)", "model = tf.keras.Model(inputs, outputs)"],
            ["Normalization", "tf.keras.Model"],
            "(no output)",
        ),
    ],
    "tfSaving": [
        ex(
            "Save a model",
            "Guarda un modelo",
            "保存模型",
            ["model.save(\"my_model.keras\")"],
            ["model.save"],
            "(no output)",
        ),
        ex(
            "Load a model",
            "Carga un modelo",
            "加载模型",
            ["import tensorflow as tf", "model = tf.keras.models.load_model(\"my_model.keras\")"],
            ["tf.keras.models.load_model"],
            "(no output)",
        ),
        ex(
            "Save weights",
            "Guarda pesos",
            "保存权重",
            ["model.save_weights(\"weights.h5\")"],
            ["save_weights"],
            "(no output)",
        ),
        ex(
            "Load weights",
            "Carga pesos",
            "加载权重",
            ["model.load_weights(\"weights.h5\")"],
            ["load_weights"],
            "(no output)",
        ),
        ex(
            "SavedModel save",
            "Guarda SavedModel",
            "保存 SavedModel",
            ["import tensorflow as tf", "tf.saved_model.save(model, \"savedmodel\")"],
            ["tf.saved_model.save"],
            "(no output)",
        ),
        ex(
            "SavedModel load",
            "Carga SavedModel",
            "加载 SavedModel",
            ["import tensorflow as tf", "obj = tf.saved_model.load(\"savedmodel\")"],
            ["tf.saved_model.load"],
            "(no output)",
        ),
        ex(
            "Create a Checkpoint",
            "Crea un Checkpoint",
            "创建 Checkpoint",
            ["import tensorflow as tf", "ckpt = tf.train.Checkpoint(model=model, optimizer=optimizer)"],
            ["tf.train.Checkpoint"],
            "(no output)",
        ),
        ex(
            "CheckpointManager",
            "CheckpointManager",
            "CheckpointManager",
            ["manager = tf.train.CheckpointManager(ckpt, \"ckpts\", max_to_keep=3)"],
            ["CheckpointManager", "max_to_keep=3"],
            "(no output)",
        ),
        ex(
            "Restore latest checkpoint",
            "Restaura el ultimo checkpoint",
            "恢复最新 checkpoint",
            ["ckpt.restore(manager.latest_checkpoint)"],
            ["latest_checkpoint"],
            "(no output)",
        ),
        ex(
            "Save and reload then predict",
            "Guarda, carga y predice",
            "保存加载再 predict",
            ["model.save(\"tmp.keras\")", "m2 = tf.keras.models.load_model(\"tmp.keras\")", "m2.predict(x_new)"],
            ["load_model", "predict"],
            "(no output)",
        ),
        ex(
            "Save with overwrite",
            "Guarda con overwrite",
            "overwrite 保存",
            ["model.save(\"my_model.keras\", overwrite=True)"],
            ["overwrite=True"],
            "(no output)",
        ),
        ex(
            "Save include_optimizer",
            "Guarda include_optimizer",
            "include_optimizer",
            ["model.save(\"my_model.keras\", include_optimizer=True)"],
            ["include_optimizer=True"],
            "(no output)",
        ),
        ex(
            "Write a simple checkpoint path",
            "Define un path de checkpoint",
            "设置 checkpoint 路径",
            ["ckpt_path = \"ckpts/ckpt\""],
            ["ckpt_path"],
            "(no output)",
        ),
        ex(
            "Save best weights",
            "Guarda mejores pesos",
            "保存最佳权重",
            ["cb = tf.keras.callbacks.ModelCheckpoint(\"best.weights.h5\", save_weights_only=True, save_best_only=True)"],
            ["save_weights_only=True", "save_best_only=True"],
            "(no output)",
        ),
        ex(
            "Challenge: checkpoint flow",
            "Desafio: flujo de checkpoints",
            "挑战：checkpoint 流程",
            ["ckpt = tf.train.Checkpoint(model=model, optimizer=optimizer)", "manager = tf.train.CheckpointManager(ckpt, \"ckpts\", max_to_keep=2)", "ckpt.restore(manager.latest_checkpoint)"],
            ["tf.train.Checkpoint", "CheckpointManager"],
            "(no output)",
        ),
    ],
    "tfTensorBoard": [
        ex(
            "TensorBoard callback",
            "Callback TensorBoard",
            "TensorBoard 回调",
            ["import tensorflow as tf", "cb = tf.keras.callbacks.TensorBoard(log_dir=\"logs/run1\")"],
            ["TensorBoard", "log_dir="],
            "(no output)",
        ),
        ex(
            "Create a summary writer",
            "Crea un writer de summary",
            "创建 summary writer",
            ["import tensorflow as tf", "writer = tf.summary.create_file_writer(\"logs\")"],
            ["tf.summary.create_file_writer"],
            "(no output)",
        ),
        ex(
            "Write a scalar summary",
            "Escribe un scalar summary",
            "写 scalar summary",
            ["with writer.as_default():", "  tf.summary.scalar(\"loss\", loss, step=step)"],
            ["tf.summary.scalar", "writer.as_default"],
            "(no output)",
        ),
        ex(
            "Histogram summary",
            "Summary histograma",
            "histogram summary",
            ["with writer.as_default():", "  tf.summary.histogram(\"weights\", weights, step=step)"],
            ["tf.summary.histogram"],
            "(no output)",
        ),
        ex(
            "Image summary",
            "Summary de imagen",
            "image summary",
            ["with writer.as_default():", "  tf.summary.image(\"samples\", images, step=step, max_outputs=3)"],
            ["tf.summary.image", "max_outputs=3"],
            "(no output)",
        ),
        ex(
            "Trace on",
            "Activa trace",
            "trace_on",
            ["tf.summary.trace_on(graph=True, profiler=True)"],
            ["tf.summary.trace_on", "profiler=True"],
            "(no output)",
        ),
        ex(
            "Trace export",
            "Exporta trace",
            "trace_export",
            ["tf.summary.trace_export(name=\"trace\", step=0, profiler_outdir=\"logs\")"],
            ["trace_export", "profiler_outdir="],
            "(no output)",
        ),
        ex(
            "Profiler start",
            "Profiler start",
            "start profiler",
            ["import tensorflow as tf", "tf.profiler.experimental.start(\"logs\")"],
            ["tf.profiler.experimental.start"],
            "(no output)",
        ),
        ex(
            "Profiler stop",
            "Profiler stop",
            "stop profiler",
            ["tf.profiler.experimental.stop()"],
            ["tf.profiler.experimental.stop"],
            "(no output)",
        ),
        ex(
            "Summary text",
            "Summary text",
            "text summary",
            ["with writer.as_default():", "  tf.summary.text(\"note\", \"hello\", step=step)"],
            ["tf.summary.text"],
            "(no output)",
        ),
        ex(
            "Summary audio",
            "Summary audio",
            "audio summary",
            ["with writer.as_default():", "  tf.summary.audio(\"audio\", audio, sample_rate=16000, step=step)"],
            ["tf.summary.audio", "sample_rate=16000"],
            "(no output)",
        ),
        ex(
            "Log learning rate",
            "Logea learning rate",
            "记录学习率",
            ["with writer.as_default():", "  tf.summary.scalar(\"lr\", lr, step=step)"],
            ["tf.summary.scalar", "\"lr\""],
            "(no output)",
        ),
        ex(
            "TensorBoard command",
            "Comando TensorBoard",
            "TensorBoard 命令",
            ["tensorboard --logdir logs"],
            ["tensorboard", "--logdir"],
            "(no output)",
        ),
        ex(
            "Profile a step",
            "Perfila un step",
            "profile step",
            ["tf.profiler.experimental.start(\"logs\")", "train_step(x, y)", "tf.profiler.experimental.stop()"],
            ["experimental.start", "experimental.stop"],
            "(no output)",
        ),
        ex(
            "Challenge: callback + scalar",
            "Desafio: callback y scalar",
            "挑战：回调 + scalar",
            ["cb = tf.keras.callbacks.TensorBoard(log_dir=\"logs\")", "with writer.as_default():", "  tf.summary.scalar(\"loss\", loss, step=step)"],
            ["TensorBoard", "tf.summary.scalar"],
            "(no output)",
        ),
    ],
    "tfDeployment": [
        ex(
            "TFLiteConverter from SavedModel",
            "TFLiteConverter desde SavedModel",
            "从 SavedModel 创建 Converter",
            ["import tensorflow as tf", "converter = tf.lite.TFLiteConverter.from_saved_model(\"savedmodel\")"],
            ["tf.lite.TFLiteConverter.from_saved_model"],
            "(no output)",
        ),
        ex(
            "Convert to TFLite",
            "Convierte a TFLite",
            "转换为 TFLite",
            ["tflite_model = converter.convert()"],
            ["converter.convert"],
            "(no output)",
        ),
        ex(
            "Write TFLite file",
            "Escribe archivo TFLite",
            "写入 .tflite 文件",
            ["open(\"model.tflite\", \"wb\").write(tflite_model)"],
            ["model.tflite", "\"wb\""],
            "(no output)",
        ),
        ex(
            "Create an Interpreter",
            "Crea un Interpreter",
            "创建 Interpreter",
            ["import tensorflow as tf", "interpreter = tf.lite.Interpreter(model_path=\"model.tflite\")"],
            ["tf.lite.Interpreter", "model_path="],
            "(no output)",
        ),
        ex(
            "Allocate tensors",
            "Allocate tensors",
            "allocate_tensors",
            ["interpreter.allocate_tensors()"],
            ["allocate_tensors"],
            "(no output)",
        ),
        ex(
            "Input details",
            "Input details",
            "input details",
            ["inputs = interpreter.get_input_details()"],
            ["get_input_details"],
            "(no output)",
        ),
        ex(
            "Output details",
            "Output details",
            "output details",
            ["outputs = interpreter.get_output_details()"],
            ["get_output_details"],
            "(no output)",
        ),
        ex(
            "Set tensor",
            "Set tensor",
            "set_tensor",
            ["interpreter.set_tensor(input_index, input_data)"],
            ["set_tensor"],
            "(no output)",
        ),
        ex(
            "Invoke",
            "Invoke",
            "invoke",
            ["interpreter.invoke()"],
            ["invoke()"],
            "(no output)",
        ),
        ex(
            "Get tensor output",
            "Get tensor output",
            "get_tensor",
            ["pred = interpreter.get_tensor(output_index)"],
            ["get_tensor"],
            "(no output)",
        ),
        ex(
            "Enable optimizations",
            "Habilita optimizations",
            "开启优化",
            ["import tensorflow as tf", "converter.optimizations = [tf.lite.Optimize.DEFAULT]"],
            ["converter.optimizations", "tf.lite.Optimize.DEFAULT"],
            "(no output)",
        ),
        ex(
            "Float16 conversion",
            "Conversion float16",
            "float16 转换",
            ["import tensorflow as tf", "converter.target_spec.supported_types = [tf.float16]"],
            ["supported_types", "tf.float16"],
            "(no output)",
        ),
        ex(
            "Representative dataset function",
            "Funcion representative dataset",
            "代表性数据集函数",
            ["def rep_data():", "  for x in dataset.take(100):", "    yield [x]"],
            ["def rep_data", "yield [x]"],
            "(no output)",
        ),
        ex(
            "Set representative_dataset",
            "Define representative_dataset",
            "设置 representative_dataset",
            ["converter.representative_dataset = rep_data"],
            ["representative_dataset"],
            "(no output)",
        ),
        ex(
            "Challenge: convert and run",
            "Desafio: convierte y ejecuta",
            "挑战：转换并运行",
            ["converter = tf.lite.TFLiteConverter.from_saved_model(\"savedmodel\")", "tflite_model = converter.convert()", "open(\"model.tflite\", \"wb\").write(tflite_model)", "interpreter = tf.lite.Interpreter(model_path=\"model.tflite\")", "interpreter.allocate_tensors()"],
            ["TFLiteConverter", "allocate_tensors"],
            "(no output)",
        ),
    ],
    "tfPerformance": [
        ex(
            "Use tf.function",
            "Usa tf.function",
            "使用 tf.function",
            ["import tensorflow as tf", "def step(x):", "  return x + 1", "step = tf.function(step)"],
            ["tf.function"],
            "(no output)",
        ),
        ex(
            "List GPUs",
            "Lista GPUs",
            "列出 GPU",
            ["import tensorflow as tf", "gpus = tf.config.list_physical_devices(\"GPU\")", "print(gpus)"],
            ["list_physical_devices(\"GPU\")"],
            "(no output)",
        ),
        ex(
            "Set memory growth",
            "Activa memory growth",
            "设置 memory growth",
            ["import tensorflow as tf", "gpus = tf.config.list_physical_devices(\"GPU\")", "tf.config.experimental.set_memory_growth(gpus[0], True)"],
            ["set_memory_growth"],
            "(no output)",
        ),
        ex(
            "Enable JIT",
            "Habilita JIT",
            "开启 JIT",
            ["import tensorflow as tf", "tf.config.optimizer.set_jit(True)"],
            ["set_jit(True)"],
            "(no output)",
        ),
        ex(
            "Assert shapes",
            "Assert shapes",
            "assert_shapes",
            ["import tensorflow as tf", "tf.debugging.assert_shapes([(x, (None, 3))])"],
            ["tf.debugging.assert_shapes"],
            "(no output)",
        ),
        ex(
            "Assert equal",
            "Assert equal",
            "assert_equal",
            ["import tensorflow as tf", "tf.debugging.assert_equal(a, b)"],
            ["tf.debugging.assert_equal"],
            "(no output)",
        ),
        ex(
            "Assert all finite",
            "Assert all finite",
            "assert_all_finite",
            ["import tensorflow as tf", "tf.debugging.assert_all_finite(x, \"x\")"],
            ["assert_all_finite"],
            "(no output)",
        ),
        ex(
            "Use tf.print",
            "Usa tf.print",
            "tf.print",
            ["import tensorflow as tf", "tf.print(\"shape\", tf.shape(x))"],
            ["tf.print", "tf.shape"],
            "(no output)",
        ),
        ex(
            "Clear session",
            "Limpia la sesion",
            "clear_session",
            ["import tensorflow as tf", "tf.keras.backend.clear_session()"],
            ["clear_session"],
            "(no output)",
        ),
        ex(
            "Place on CPU",
            "Fuerza CPU",
            "放到 CPU",
            ["import tensorflow as tf", "with tf.device(\"/CPU:0\"):", "  y = x + 1"],
            ["tf.device", "\"/CPU:0\""],
            "(no output)",
        ),
        ex(
            "Prefetch for speed",
            "Prefetch para velocidad",
            "prefetch 提速",
            ["ds = ds.prefetch(tf.data.AUTOTUNE)"],
            ["prefetch", "AUTOTUNE"],
            "(no output)",
        ),
        ex(
            "jit_compile in compile",
            "jit_compile en compile",
            "jit_compile",
            ["model.compile(optimizer=\"adam\", loss=\"mse\", jit_compile=True)"],
            ["jit_compile=True"],
            "(no output)",
        ),
        ex(
            "Autograph to_code",
            "Autograph to_code",
            "to_code",
            ["import tensorflow as tf", "code = tf.autograph.to_code(step)"],
            ["tf.autograph.to_code"],
            "(no output)",
        ),
        ex(
            "Debugging assert then train",
            "Assert y luego entrena",
            "断言再训练",
            ["tf.debugging.assert_all_finite(x, \"x\")", "train_step(x, y)"],
            ["assert_all_finite", "train_step("],
            "(no output)",
        ),
        ex(
            "Challenge: function + assert shapes",
            "Desafio: function y assert shapes",
            "挑战：function + assert_shapes",
            ["import tensorflow as tf", "def step(x):", "  tf.debugging.assert_shapes([(x, (None, 3))])", "  return x", "step = tf.function(step)"],
            ["assert_shapes", "tf.function"],
            "(no output)",
        ),
    ],
    "tfAdvanced": [
        ex(
            "MirroredStrategy",
            "MirroredStrategy",
            "MirroredStrategy",
            ["import tensorflow as tf", "strategy = tf.distribute.MirroredStrategy()"],
            ["tf.distribute.MirroredStrategy"],
            "(no output)",
        ),
        ex(
            "strategy.scope",
            "strategy.scope",
            "strategy.scope",
            ["with strategy.scope():", "  model = tf.keras.Sequential([tf.keras.layers.Dense(1)])"],
            ["strategy.scope"],
            "(no output)",
        ),
        ex(
            "Mixed precision policy",
            "Politica mixed precision",
            "mixed precision",
            ["import tensorflow as tf", "tf.keras.mixed_precision.set_global_policy(\"mixed_float16\")"],
            ["mixed_float16"],
            "(no output)",
        ),
        ex(
            "Label smoothing",
            "Label smoothing",
            "label_smoothing",
            ["import tensorflow as tf", "loss_fn = tf.keras.losses.CategoricalCrossentropy(label_smoothing=0.1)"],
            ["label_smoothing=0.1"],
            "(no output)",
        ),
        ex(
            "Custom Metric class",
            "Clase Metric custom",
            "自定义 Metric",
            ["import tensorflow as tf", "class MyMetric(tf.keras.metrics.Metric):", "  def __init__(self, name=\"m\", **kwargs):", "    super().__init__(name=name, **kwargs)"],
            ["tf.keras.metrics.Metric", "class MyMetric"],
            "(no output)",
        ),
        ex(
            "Metric add_weight",
            "Metric con add_weight",
            "Metric add_weight",
            ["import tensorflow as tf", "class MyMetric(tf.keras.metrics.Metric):", "  def __init__(self, name=\"m\", **kwargs):", "    super().__init__(name=name, **kwargs)", "    self.total = self.add_weight(name=\"total\", initializer=\"zeros\")"],
            ["add_weight", "initializer=\"zeros\""],
            "(no output)",
        ),
        ex(
            "Ragged to_tensor",
            "Ragged to_tensor",
            "Ragged to_tensor",
            ["import tensorflow as tf", "rt = tf.ragged.constant([[1, 2], [3]])", "dense = rt.to_tensor()"],
            ["to_tensor()"],
            "(no output)",
        ),
        ex(
            "Sparse to_dense",
            "Sparse to_dense",
            "sparse to_dense",
            ["import tensorflow as tf", "st = tf.sparse.SparseTensor(indices=[[0, 0]], values=[1], dense_shape=[2, 2])", "dense = tf.sparse.to_dense(st)"],
            ["tf.sparse.to_dense"],
            "(no output)",
        ),
        ex(
            "String split",
            "Split strings",
            "字符串 split",
            ["import tensorflow as tf", "parts = tf.strings.split([\"a b\", \"c d\"])"],
            ["tf.strings.split"],
            "(no output)",
        ),
        ex(
            "Ragged map_flat_values",
            "Ragged map_flat_values",
            "map_flat_values",
            ["import tensorflow as tf", "rt = tf.ragged.constant([[1, 2], [3]])", "rt2 = tf.ragged.map_flat_values(tf.square, rt)"],
            ["tf.ragged.map_flat_values"],
            "(no output)",
        ),
        ex(
            "Distribute dataset",
            "Distribuye un dataset",
            "分布式 dataset",
            ["dist_ds = strategy.experimental_distribute_dataset(dataset)"],
            ["experimental_distribute_dataset"],
            "(no output)",
        ),
        ex(
            "Run in replica context",
            "Replica context",
            "replica context",
            ["def step_fn(inputs):", "  return model(inputs, training=True)", "strategy.run(step_fn, args=(batch_x,))"],
            ["strategy.run"],
            "(no output)",
        ),
        ex(
            "Custom training with strategy",
            "Training con strategy",
            "strategy 训练",
            ["with strategy.scope():", "  model = tf.keras.Sequential([tf.keras.layers.Dense(1)])", "  model.compile(optimizer=\"adam\", loss=\"mse\")"],
            ["with strategy.scope", "model.compile"],
            "(no output)",
        ),
        ex(
            "Export a SavedModel",
            "Exporta SavedModel",
            "导出 SavedModel",
            ["import tensorflow as tf", "tf.saved_model.save(model, \"export\")"],
            ["tf.saved_model.save"],
            "(no output)",
        ),
        ex(
            "Challenge: strategy + mixed precision",
            "Desafio: strategy y mixed precision",
            "挑战：strategy + mixed precision",
            ["import tensorflow as tf", "strategy = tf.distribute.MirroredStrategy()", "tf.keras.mixed_precision.set_global_policy(\"mixed_float16\")", "with strategy.scope():", "  model = tf.keras.Sequential([tf.keras.layers.Dense(1)])"],
            ["MirroredStrategy", "mixed_float16"],
            "(no output)",
        ),
    ],
}


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
            f"import 'package:learnswift/Screens/Courses/tensorflow/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
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
    lines.append(f"              heroTag: 'introButtonTensorflow{ex_id}',")
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
    lines.append(f"              heroTag: 'infoButtonTensorflow{ex_id}',")
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
    lines.append(f"              heroTag: 'runButtonTensorflow{ex_id}',")
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
    lines.append("                  language: CodeLanguage.python,")
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
    # Category display names (same order as CATEGORIES).
    names: dict[str, list[str]] = {
        "en": [
            "TensorFlow Basics",
            "Tensors and Shapes",
            "Tensor Ops",
            "Autodiff and Gradients",
            "Keras Basics",
            "Layers and Models",
            "Training Loops",
            "Callbacks",
            "tf.data Pipelines",
            "Preprocessing",
            "Saving and Loading",
            "TensorBoard",
            "Deployment and TFLite",
            "Performance and Debugging",
            "Advanced Patterns",
        ],
        "es": [
            "Fundamentos de TensorFlow",
            "Tensores y Formas",
            "Operaciones con Tensores",
            "Autodiff y Gradientes",
            "Keras Basico",
            "Capas y Modelos",
            "Bucles de Entrenamiento",
            "Callbacks",
            "Pipelines con tf.data",
            "Preprocesado",
            "Guardar y Cargar",
            "TensorBoard",
            "Despliegue y TFLite",
            "Rendimiento y Debug",
            "Patrones Avanzados",
        ],
        "zh": [
            "TensorFlow 基础",
            "张量与形状",
            "张量运算",
            "自动求导与梯度",
            "Keras 基础",
            "层与模型",
            "训练循环",
            "回调",
            "tf.data 数据管道",
            "预处理",
            "保存与加载",
            "TensorBoard",
            "部署与 TFLite",
            "性能与调试",
            "高级模式",
        ],
    }

    cat_imports = []
    exmain_imports = []
    model_imports = []
    model_vars = []
    for cat_dir, _en, _es, _zh in CATEGORIES:
        exmain_imports.append(
            f"import 'package:learnswift/Screens/Courses/tensorflow/{cat_dir}/{cat_dir}ExMain.dart';"
        )
        model_imports.append(f"import '../../courses/TensorFlow/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';")
        model_vars.append(f"{cat_dir}Model{lang.upper()}")

    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")
    lines.extend(exmain_imports)
    lines.extend(model_imports)
    lines.append("")
    lines.append(f"List<CoursesMainModel> coursesTensorFlowMainModelList{lang.upper()} = [")

    for idx, display_name in enumerate(names[lang]):
        cat_dir = CATEGORIES[idx][0]
        exmain_class = f"{camel(cat_dir)}ExMain"
        lines.append("CoursesMainModel(")
        lines.append(f"  id: {idx},")
        lines.append(f"  generalName: '{display_name}',")
        lines.append(f"  catExercise: {cat_dir}Model{lang.upper()},")
        lines.append(f'  description: "{LANG_PREFIX}Cat{idx}InfoContent", ')
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


def main() -> None:
    if len(CATEGORIES) != 15:
        raise SystemExit("CATEGORIES must have 15 entries")
    for cat_dir, *_ in CATEGORIES:
        if cat_dir not in EXERCISES:
            raise SystemExit(f"Missing EXERCISES for {cat_dir}")
        if len(EXERCISES[cat_dir]) != 15:
            raise SystemExit(f"{cat_dir} must have 15 exercises")

    # Guard: do not regenerate if already present.
    for lang in ["en", "es", "zh"]:
        arb_path = Path(f"lib/l10n/app_{lang}.arb")
        if f'"{LANG_PREFIX}CorrectTitle"' in arb_path.read_text(encoding="utf-8"):
            raise SystemExit(f"{LANG_PREFIX} already present in {arb_path}; aborting.")

    arb_entries: dict[str, list[str]] = {"en": [], "es": [], "zh": []}

    # Global correct dialog texts
    for lang in ["en", "es", "zh"]:
        if lang == "en":
            title = "Correct ✅"
            expl = "Nice! Your TensorFlow snippet shows the key idea. Keep going."
        elif lang == "es":
            title = "Correcto ✅"
            expl = "Bien! Tu snippet de TensorFlow tiene la idea clave. Sigue subiendo nivel."
        else:
            title = "正确 ✅"
            expl = "很好！你的 TensorFlow 片段抓住了关键点，继续冲。"

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
                Path(f"lib/data/courses/TensorFlow/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"),
                build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/tensorflow/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB entries
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            write(
                Path(f"lib/Screens/Courses/tensorflow/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"),
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
            Path(f"lib/data/mainModel/TensorFlow/CoursesMainModelList{lang.upper()}.dart"),
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
