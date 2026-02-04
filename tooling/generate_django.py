#!/usr/bin/env python3
"""Generate Django course (15 categories x 15 exercises) + l10n (EN/ES/ZH).

This repository uses ARB strings with '@' and '&' as stand-ins for '{' and '}'
(to keep ICU happy). Exercise screens call _t() to decode them.

NOTE: This script is intended to be run once for initial generation.
"""

from __future__ import annotations

import hashlib
import re
from pathlib import Path

LANG_PREFIX = "django"
START_ID = 3900

# (dir, EN, ES, ZH)
CATEGORIES = [
    ("djangoBasics", "Django Fundamentals", "Fundamentos Django", "Django 基础"),
    ("djangoSettings", "Settings & Apps", "Settings y Apps", "设置与应用"),
    ("djangoUrls", "URLs & Views", "URLs & Views", "URL 与视图"),
    ("djangoTemplates", "Templates", "Plantillas", "模板"),
    ("djangoStatic", "Static & Media", "Static y Media", "静态与媒体"),
    ("djangoModels", "Models", "Modelos", "模型"),
    ("djangoOrm", "ORM & QuerySets", "ORM y QuerySets", "ORM 查询"),
    ("djangoMigrations", "Migrations", "Migraciones", "迁移"),
    ("djangoAdmin", "Admin", "Admin", "管理后台"),
    ("djangoForms", "Forms", "Formularios", "表单"),
    ("djangoAuth", "Authentication", "Autenticacion", "认证"),
    ("djangoCBV", "Class-Based Views", "Vistas basadas en clases", "类视图"),
    ("djangoMiddleware", "Middleware & Security", "Middleware y Seguridad", "中间件与安全"),
    ("djangoTesting", "Testing", "Pruebas", "测试"),
    ("djangoDeploy", "Deploy & Performance", "Deploy y Rendimiento", "部署与性能"),
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
        "en": "Write your Django code here...",
        "es": "Escribe tu codigo Django aqui...",
        "zh": "在这里写下你的 Django 代码...",
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
    "djangoBasics": [
        (
            "Start a project",
            "Crear un proyecto",
            "创建项目",
            ["django-admin startproject mysite"],
            ["django-admin", "startproject"],
            "Project created.",
        ),
        (
            "Run the dev server",
            "Arrancar el servidor",
            "启动开发服务器",
            ["python manage.py runserver"],
            ["manage.py", "runserver"],
            "Server running.",
        ),
        (
            "Create an app",
            "Crear una app",
            "创建应用 app",
            ["python manage.py startapp blog"],
            ["startapp", "blog"],
            "App generated.",
        ),
        (
            "Install the app",
            "Registrar la app",
            "注册应用",
            [
                "INSTALLED_APPS = [",
                "    'blog',",
                "]",
            ],
            ["INSTALLED_APPS", "blog"],
            "Django loads the app.",
        ),
        (
            "Hello view",
            "Vista Hello",
            "Hello 视图",
            [
                "from django.http import HttpResponse",
                "",
                "def hello(request):",
                "    return HttpResponse(\"Hello Django\")",
            ],
            ["HttpResponse", "def hello", "return"],
            "Hello Django",
        ),
        (
            "First URL route",
            "Primera ruta",
            "第一条路由",
            [
                "from django.urls import path",
                "from . import views",
                "",
                "urlpatterns = [",
                "    path('hello/', views.hello, name='hello'),",
                "]",
            ],
            ["urlpatterns", "path", "views.hello"],
            "GET /hello/ works.",
        ),
        (
            "Render a template",
            "Renderizar template",
            "渲染模板",
            [
                "from django.shortcuts import render",
                "",
                "def home(request):",
                "    return render(request, 'home.html')",
            ],
            ["render", "home.html"],
            "Template rendered.",
        ),
        (
            "Template variable",
            "Variable en template",
            "模板变量",
            ["<h1>{{ title }}</h1>"],
            ["{{", "title", "}}"],
            "Title shows.",
        ),
        (
            "Base template + block",
            "Base template y block",
            "模板继承 block",
            [
                "{% extends 'base.html' %}",
                "{% block content %}",
                "<p>Home</p>",
                "{% endblock %}",
            ],
            ["extends", "base.html", "block"],
            "Inheritance works.",
        ),
        (
            "Create superuser",
            "Crear superusuario",
            "创建超级用户",
            ["python manage.py createsuperuser"],
            ["createsuperuser"],
            "Admin user created.",
        ),
        (
            "Run migrations",
            "Ejecutar migraciones",
            "执行迁移",
            ["python manage.py migrate"],
            ["migrate"],
            "DB ready.",
        ),
        (
            "Create migrations",
            "Crear migraciones",
            "生成迁移文件",
            ["python manage.py makemigrations"],
            ["makemigrations"],
            "Migration files created.",
        ),
        (
            "System check",
            "Chequeo del sistema",
            "系统检查",
            ["python manage.py check"],
            ["manage.py", "check"],
            "Checks passed.",
        ),
        (
            "Open shell",
            "Abrir shell",
            "打开 shell",
            ["python manage.py shell"],
            ["manage.py", "shell"],
            "Shell ready.",
        ),
        (
            "Read SECRET_KEY from env",
            "Leer SECRET_KEY del entorno",
            "从环境变量读取 SECRET_KEY",
            [
                "import os",
                "SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY', 'dev-key')",
            ],
            ["SECRET_KEY", "os.environ.get"],
            "Secret loaded.",
        ),
    ],

    # The remaining categories follow the same style (short snippets, robust tokens).
    # Topics are translated and the text generation later makes them more narrative.

    "djangoSettings": [
        (
            "Templates DIRS",
            "DIRS de templates",
            "模板目录 DIRS",
            [
                "TEMPLATES = [",
                "    {",
                "        'DIRS': [BASE_DIR / 'templates'],",
                "    },",
                "]",
            ],
            ["DIRS", "BASE_DIR", "templates"],
            "Templates folder found.",
        ),
        ("TIME_ZONE", "TIME_ZONE", "时区 TIME_ZONE", ["TIME_ZONE = 'UTC'"], ["TIME_ZONE"], "Timezone set."),
        (
            "LANGUAGE_CODE",
            "LANGUAGE_CODE",
            "语言 LANGUAGE_CODE",
            ["LANGUAGE_CODE = 'es-es'"],
            ["LANGUAGE_CODE"],
            "Language set.",
        ),
        (
            "DATABASES sqlite",
            "DATABASES sqlite",
            "数据库 sqlite",
            [
                "DATABASES = {",
                "    'default': {",
                "        'ENGINE': 'django.db.backends.sqlite3',",
                "        'NAME': BASE_DIR / 'db.sqlite3',",
                "    },",
                "}",
            ],
            ["DATABASES", "sqlite3", "db.sqlite3"],
            "Database configured.",
        ),
        ("STATIC_URL", "STATIC_URL", "STATIC_URL", ["STATIC_URL = 'static/'"], ["STATIC_URL"], "Static URL set."),
        (
            "STATICFILES_DIRS",
            "STATICFILES_DIRS",
            "STATICFILES_DIRS",
            ["STATICFILES_DIRS = [BASE_DIR / 'static']"],
            ["STATICFILES_DIRS", "BASE_DIR"],
            "Extra static dir set.",
        ),
        (
            "MEDIA_URL / MEDIA_ROOT",
            "MEDIA_URL / MEDIA_ROOT",
            "媒体路径",
            ["MEDIA_URL = 'media/'", "MEDIA_ROOT = BASE_DIR / 'media'"],
            ["MEDIA_URL", "MEDIA_ROOT"],
            "Media configured.",
        ),
        (
            "ALLOWED_HOSTS",
            "ALLOWED_HOSTS",
            "允许的域名",
            ["ALLOWED_HOSTS = ['example.com', 'localhost']"],
            ["ALLOWED_HOSTS"],
            "Hosts allowed.",
        ),
        (
            "DEBUG from env",
            "DEBUG desde env",
            "从环境读取 DEBUG",
            ["import os", "DEBUG = os.environ.get('DEBUG', '') == '1'"],
            ["DEBUG", "os.environ.get"],
            "Debug toggled.",
        ),
        (
            "CSRF_TRUSTED_ORIGINS",
            "CSRF_TRUSTED_ORIGINS",
            "可信 CSRF 域",
            ["CSRF_TRUSTED_ORIGINS = ['https://example.com']"],
            ["CSRF_TRUSTED_ORIGINS", "https://"],
            "CSRF trusted set.",
        ),
        (
            "CACHES local memory",
            "CACHES en memoria",
            "缓存配置",
            [
                "CACHES = {",
                "    'default': {",
                "        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',",
                "        'LOCATION': 'unique',",
                "    },",
                "}",
            ],
            ["CACHES", "LocMemCache"],
            "Cache ready.",
        ),
        (
            "LOGGING console",
            "LOGGING consola",
            "日志 console",
            [
                "LOGGING = {",
                "    'version': 1,",
                "    'handlers': {'console': {'class': 'logging.StreamHandler'}},",
                "    'root': {'handlers': ['console'], 'level': 'INFO'},",
                "}",
            ],
            ["LOGGING", "StreamHandler", "INFO"],
            "Logging enabled.",
        ),
        (
            "SITE_NAME constant",
            "Constante SITE_NAME",
            "常量 SITE_NAME",
            ["SITE_NAME = 'CodeCrafters'"],
            ["SITE_NAME"],
            "Name set.",
        ),
        (
            "DEFAULT_AUTO_FIELD",
            "DEFAULT_AUTO_FIELD",
            "默认主键类型",
            ["DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'"],
            ["DEFAULT_AUTO_FIELD", "BigAutoField"],
            "Auto field set.",
        ),
        (
            "Secure cookies",
            "Cookies seguras",
            "安全 Cookie",
            ["SESSION_COOKIE_SECURE = True", "CSRF_COOKIE_SECURE = True"],
            ["COOKIE_SECURE", "CSRF_COOKIE_SECURE"],
            "Cookies hardened.",
        ),
    ],

    "djangoUrls": [
        (
            "Home route",
            "Ruta Home",
            "首页路由",
            [
                "from django.urls import path",
                "from . import views",
                "urlpatterns = [",
                "    path('', views.home, name='home'),",
                "]",
            ],
            ["path", "views.home", "name='home"],
            "Home route ok.",
        ),
        (
            "Path converter int",
            "Convertidor int",
            "路径参数 int",
            ["path('post/<int:id>/', views.post, name='post')"],
            ["<int:id>", "views.post", "name="],
            "Dynamic URL ok.",
        ),
        (
            "include() app urls",
            "include() de urls",
            "include 引入子路由",
            ["from django.urls import include, path", "path('blog/', include('blog.urls'))"],
            ["include", "blog.urls"],
            "Nested routes ok.",
        ),
        (
            "Namespace with app_name",
            "Namespace con app_name",
            "命名空间 app_name",
            ["app_name = 'blog'", "urlpatterns = [", "    path('', views.index, name='index'),", "]"],
            ["app_name", "urlpatterns", "name="],
            "Namespacing ok.",
        ),
        (
            "reverse() in code",
            "reverse() en codigo",
            "reverse 反向解析",
            ["from django.urls import reverse", "url = reverse('home')"],
            ["reverse", "'home'"],
            "URL reversed.",
        ),
        (
            "redirect() shortcut",
            "redirect() shortcut",
            "redirect 重定向",
            ["from django.shortcuts import redirect", "return redirect('home')"],
            ["redirect", "'home'"],
            "Redirect works.",
        ),
        (
            "CBV as_view()",
            "CBV as_view()",
            "类视图 as_view",
            ["from .views import HomeView", "path('', HomeView.as_view(), name='home')"],
            ["as_view", "HomeView", "path"],
            "CBV route ok.",
        ),
        (
            "Serve media in dev",
            "Servir media en dev",
            "开发环境媒体文件",
            [
                "from django.conf import settings",
                "from django.conf.urls.static import static",
                "urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)",
            ],
            ["static(", "MEDIA_URL", "MEDIA_ROOT"],
            "Media served.",
        ),
        (
            "URL kwargs in view",
            "kwargs en view",
            "视图参数",
            ["def post(request, slug):", "    ..."],
            ["def post", "slug"],
            "Slug captured.",
        ),
        (
            "re_path regex",
            "re_path regex",
            "re_path 正则路由",
            ["from django.urls import re_path", "re_path(r'^legacy/$', views.legacy)"],
            ["re_path", "r'^"],
            "Regex route ok.",
        ),
        (
            "HttpResponseRedirect",
            "HttpResponseRedirect",
            "HttpResponseRedirect",
            ["from django.http import HttpResponseRedirect", "return HttpResponseRedirect('/login/')"],
            ["HttpResponseRedirect", "/login/"],
            "Redirect ok.",
        ),
        (
            "Custom handler404",
            "handler404 custom",
            "自定义 404",
            ["handler404 = 'core.views.page_not_found'"],
            ["handler404", "page_not_found"],
            "404 wired.",
        ),
        (
            "build_absolute_uri",
            "build_absolute_uri",
            "生成绝对地址",
            ["url = request.build_absolute_uri('/')"],
            ["build_absolute_uri"],
            "Absolute URL built.",
        ),
        (
            "Custom path converter",
            "Path converter custom",
            "自定义路径转换器",
            ["class FourDigits:", "    regex = '[0-9]{4}'", "    def to_python(self, value):", "        return int(value)"],
            ["regex", "to_python", "int"],
            "Converter ready.",
        ),
        (
            "resolve() debug",
            "resolve() debug",
            "resolve 调试",
            ["from django.urls import resolve", "match = resolve('/blog/')"],
            ["resolve", "'/blog/"],
            "Route resolved.",
        ),
    ],

    "djangoTemplates": [
        ("Print a variable", "Mostrar una variable", "显示变量", ["<p>{{ username }}</p>"], ["{{", "username", "}}"], "Username shown."),
        (
            "If authenticated",
            "If autenticado",
            "if 判断",
            ["{% if user.is_authenticated %}", "  <p>Hi!</p>", "{% endif %}"],
            ["if", "is_authenticated", "endif"],
            "Conditional works.",
        ),
        (
            "For loop list",
            "For loop lista",
            "for 循环",
            ["{% for post in posts %}", "  <li>{{ post.title }}</li>", "{% endfor %}"],
            ["for", "posts", "endfor"],
            "Loop renders.",
        ),
        ("Use a filter", "Usar un filtro", "使用过滤器", ["<p>{{ title|lower }}</p>"], ["|lower", "title"], "Filter applied."),
        ("Include partial", "Include parcial", "include 模板片段", ["{% include 'partials/nav.html' %}"], ["include", "nav.html"], "Partial included."),
        (
            "Extends + blocks",
            "Extends + blocks",
            "extends + block",
            ["{% extends 'base.html' %}", "{% block content %}", "  <h2>Dashboard</h2>", "{% endblock %}"],
            ["extends", "block", "endblock"],
            "Layout ok.",
        ),
        ("url tag", "tag url", "url 标签", ["<a href=\"{% url 'home' %}\">Home</a>"], ["url", "'home'"], "URL tag ok."),
        (
            "static tag",
            "tag static",
            "static 标签",
            ["{% load static %}", "<link rel=\"stylesheet\" href=\"{% static 'css/app.css' %}\">"],
            ["load static", "css/app.css"],
            "Static linked.",
        ),
        (
            "csrf_token",
            "csrf_token",
            "csrf_token",
            ["<form method=\"post\">", "  {% csrf_token %}", "</form>"],
            ["csrf_token", "method"],
            "CSRF included.",
        ),
        (
            "with tag",
            "with tag",
            "with 标签",
            ["{% with total=cart.total %}", "  <p>Total: {{ total }}</p>", "{% endwith %}"],
            ["with", "endwith", "total="],
            "Alias works.",
        ),
        ("safe filter", "filtro safe", "safe 过滤器", ["{{ html|safe }}"], ["|safe", "html"], "HTML rendered."),
        ("date filter", "filtro date", "date 过滤器", ["{{ user.last_login|date:'Y-m-d' }}"], ["|date", "Y-m-d"], "Date formatted."),
        (
            "Custom filter stub",
            "Filtro personalizado",
            "自定义过滤器",
            ["from django import template", "register = template.Library()", "@register.filter", "def shout(value):", "    return str(value).upper()"],
            ["register.filter", "def shout", "upper"],
            "Filter ready.",
        ),
        ("load custom tags", "load tags custom", "load 自定义标签", ["{% load my_tags %}"], ["load", "my_tags"], "Tags loaded."),
        ("block.super", "block.super", "block.super", ["{% block content %}", "  {{ block.super }}", "{% endblock %}"], ["block.super", "endblock"], "Super included."),
    ],

    "djangoStatic": [
        ("STATIC_URL", "STATIC_URL", "STATIC_URL", ["STATIC_URL = 'static/'"], ["STATIC_URL"], "Static configured."),
        (
            "STATICFILES_DIRS",
            "STATICFILES_DIRS",
            "STATICFILES_DIRS",
            ["STATICFILES_DIRS = [BASE_DIR / 'static']"],
            ["STATICFILES_DIRS", "static"],
            "Static dir added.",
        ),
        ("collectstatic", "collectstatic", "collectstatic", ["python manage.py collectstatic"], ["collectstatic"], "Static collected."),
        (
            "Use static tag",
            "Usar static tag",
            "使用 static 标签",
            ["{% load static %}", "<link rel=\"stylesheet\" href=\"{% static 'css/app.css' %}\">"],
            ["load static", "css/app.css"],
            "CSS linked.",
        ),
        (
            "MEDIA_URL & ROOT",
            "MEDIA_URL y ROOT",
            "媒体路径",
            ["MEDIA_URL = 'media/'", "MEDIA_ROOT = BASE_DIR / 'media'"],
            ["MEDIA_URL", "MEDIA_ROOT"],
            "Media ok.",
        ),
        (
            "ImageField upload_to",
            "ImageField upload_to",
            "ImageField 上传路径",
            ["class Photo(models.Model):", "    image = models.ImageField(upload_to='photos/')"],
            ["ImageField", "upload_to"],
            "Uploads organized.",
        ),
        (
            "Handle request.FILES",
            "Manejar request.FILES",
            "处理 request.FILES",
            ["if request.method == 'POST':", "    file = request.FILES['avatar']"],
            ["request.FILES", "POST"],
            "File captured.",
        ),
        ("Show image url", "Mostrar image.url", "显示 image.url", ["<img src=\"{{ photo.image.url }}\" />"], ["image.url", "{{"], "Image rendered."),
        (
            "Serve media in urls.py",
            "Servir media en urls.py",
            "urls.py 配置媒体",
            [
                "from django.conf import settings",
                "from django.conf.urls.static import static",
                "urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)",
            ],
            ["static(", "MEDIA_URL", "MEDIA_ROOT"],
            "Media served.",
        ),
        (
            "FileSystemStorage",
            "FileSystemStorage",
            "FileSystemStorage",
            ["from django.core.files.storage import FileSystemStorage", "fs = FileSystemStorage()", "filename = fs.save(file.name, file)"],
            ["FileSystemStorage", "fs.save"],
            "File stored.",
        ),
        (
            "Validate content_type",
            "Validar content_type",
            "校验 content_type",
            ["file = request.FILES['avatar']", "if not file.content_type.startswith('image/'):", "    raise ValueError('Not an image')"],
            ["content_type", "image/"],
            "Type checked.",
        ),
        (
            "ContentFile in memory",
            "ContentFile en memoria",
            "内存文件 ContentFile",
            ["from django.core.files.base import ContentFile", "f = ContentFile(b'hello')"],
            ["ContentFile", "b'hello'"],
            "In-memory file.",
        ),
        (
            "WhiteNoise middleware",
            "Middleware WhiteNoise",
            "WhiteNoise 中间件",
            ["MIDDLEWARE = ['whitenoise.middleware.WhiteNoiseMiddleware']"],
            ["WhiteNoiseMiddleware", "MIDDLEWARE"],
            "Static faster.",
        ),
        (
            "ManifestStaticFilesStorage",
            "ManifestStaticFilesStorage",
            "ManifestStaticFilesStorage",
            ["STATICFILES_STORAGE = 'django.contrib.staticfiles.storage.ManifestStaticFilesStorage'"],
            ["STATICFILES_STORAGE", "ManifestStaticFilesStorage"],
            "Hashed files.",
        ),
        (
            "staticfiles app",
            "app staticfiles",
            "staticfiles 应用",
            ["INSTALLED_APPS += ['django.contrib.staticfiles']"],
            ["staticfiles"],
            "Static app enabled.",
        ),
    ],

    "djangoModels": [
        ("Simple model", "Modelo simple", "简单模型", ["class Post(models.Model):", "    title = models.CharField(max_length=200)"], ["class Post", "CharField", "max_length"], "Model defined."),
        ("__str__", "__str__", "__str__", ["def __str__(self):", "    return self.title"], ["__str__", "return"], "Readable objects."),
        ("ForeignKey", "ForeignKey", "外键 ForeignKey", ["author = models.ForeignKey(User, on_delete=models.CASCADE)"], ["ForeignKey", "on_delete"], "Relation ok."),
        ("ManyToMany", "ManyToMany", "多对多 ManyToMany", ["tags = models.ManyToManyField(Tag, blank=True)"], ["ManyToManyField", "blank"], "Tags ok."),
        ("choices", "choices", "choices 选项", ["STATUS = [('draft','Draft'),('pub','Published')]"], ["STATUS", "draft", "Published"], "Choices set."),
        ("default + null", "default + null", "default + null", ["views = models.IntegerField(default=0)", "bio = models.TextField(null=True, blank=True)"], ["default", "null=True"], "Defaults ok."),
        ("Meta ordering", "Meta ordering", "Meta 排序", ["class Meta:", "    ordering = ['-created_at']"], ["ordering", "Meta"], "Ordering set."),
        (
            "UniqueConstraint",
            "UniqueConstraint",
            "唯一约束",
            ["class Meta:", "    constraints = [models.UniqueConstraint(fields=['title'], name='uniq_title')]"],
            ["UniqueConstraint", "fields"],
            "Constraint ok.",
        ),
        ("Create object", "Crear objeto", "创建对象", ["Post.objects.create(title='Hi')"], ["objects.create", "title"], "Row inserted."),
        ("Read all", "Leer todos", "读取全部", ["Post.objects.all()"], ["objects.all"], "QuerySet returned."),
        ("Filter", "Filter", "filter 过滤", ["Post.objects.filter(title__icontains='django')"], ["filter", "icontains"], "Filtered."),
        ("Update + save", "Update + save", "更新 save", ["post.title = 'New'", "post.save()"], ["save()"], "Updated."),
        ("Delete", "Delete", "删除", ["post.delete()"], ["delete()"], "Deleted."),
        ("Register in admin", "Registrar en admin", "注册到 admin", ["admin.site.register(Post)"], ["admin.site.register", "Post"], "Admin ready."),
        ("Create superuser", "Crear superusuario", "创建超级用户", ["python manage.py createsuperuser"], ["createsuperuser"], "Admin user."),
    ],

    "djangoOrm": [
        ("filter + exclude", "filter + exclude", "filter + exclude", ["Post.objects.filter(published=True).exclude(title='')"], ["filter", "exclude"], "Query refined."),
        ("order_by", "order_by", "order_by 排序", ["Post.objects.order_by('-created_at')"], ["order_by"], "Sorted."),
        ("get()", "get()", "get", ["post = Post.objects.get(pk=1)"], ["objects.get", "pk=1"], "One row."),
        ("Q objects", "Q objects", "Q 查询", ["from django.db.models import Q", "Post.objects.filter(Q(title__icontains='django') | Q(views__gt=100))"], ["Q(", "icontains", "views__gt"], "OR query."),
        ("F expressions", "F expressions", "F 表达式", ["from django.db.models import F", "Post.objects.update(views=F('views') + 1)"], ["F(", "update"], "Atomic update."),
        ("annotate Count", "annotate Count", "annotate Count", ["from django.db.models import Count", "Author.objects.annotate(num_posts=Count('post'))"], ["annotate", "Count"], "Counts computed."),
        ("aggregate Avg", "aggregate Avg", "aggregate Avg", ["from django.db.models import Avg", "Post.objects.aggregate(avg_views=Avg('views'))"], ["aggregate", "Avg"], "Average computed."),
        ("select_related", "select_related", "select_related", ["Post.objects.select_related('author')"], ["select_related"], "Joins optimized."),
        ("prefetch_related", "prefetch_related", "prefetch_related", ["Post.objects.prefetch_related('tags')"], ["prefetch_related"], "M2M optimized."),
        ("values_list", "values_list", "values_list", ["Post.objects.values_list('id','title')"], ["values_list"], "Light rows."),
        ("distinct", "distinct", "distinct", ["Post.objects.values('author').distinct()"], ["distinct"], "Unique rows."),
        ("get_or_create", "get_or_create", "get_or_create", ["tag, created = Tag.objects.get_or_create(name='django')"], ["get_or_create", "created"], "Idempotent insert."),
        ("bulk_create", "bulk_create", "bulk_create", ["Post.objects.bulk_create(posts)"], ["bulk_create"], "Batch insert."),
        ("transaction.atomic", "transaction.atomic", "transaction.atomic", ["from django.db import transaction", "with transaction.atomic():", "    Post.objects.create(title='A')"], ["transaction.atomic", "with"], "All-or-nothing."),
        ("Custom manager", "Manager custom", "自定义 Manager", ["class PostQuerySet(models.QuerySet):", "    def published(self):", "        return self.filter(published=True)"], ["QuerySet", "published", "filter"], "Reusable queries."),
    ],

    "djangoMigrations": [
        ("makemigrations", "makemigrations", "makemigrations", ["python manage.py makemigrations"], ["makemigrations"], "Migration file created."),
        ("migrate", "migrate", "migrate", ["python manage.py migrate"], ["migrate"], "Applied."),
        ("showmigrations", "showmigrations", "showmigrations", ["python manage.py showmigrations"], ["showmigrations"], "List shown."),
        ("sqlmigrate", "sqlmigrate", "sqlmigrate", ["python manage.py sqlmigrate blog 0001"], ["sqlmigrate", "0001"], "SQL preview."),
        ("Rollback to zero", "Rollback a zero", "回滚到 zero", ["python manage.py migrate blog zero"], ["migrate", "zero"], "Rolled back."),
        ("--fake", "--fake", "--fake", ["python manage.py migrate blog 0002 --fake"], ["--fake", "0002"], "Faked."),
        ("RenameField", "RenameField", "RenameField", ["migrations.RenameField(model_name='post', old_name='txt', new_name='text')"], ["RenameField", "old_name", "new_name"], "Renamed."),
        ("AddIndex", "AddIndex", "AddIndex", ["migrations.AddIndex(model_name='post', index=models.Index(fields=['created_at'], name='idx_created'))"], ["AddIndex", "Index", "fields"], "Index added."),
        ("AddConstraint", "AddConstraint", "AddConstraint", ["migrations.AddConstraint(model_name='post', constraint=models.UniqueConstraint(fields=['title'], name='uniq_title'))"], ["AddConstraint", "UniqueConstraint"], "Constraint added."),
        ("RunPython", "RunPython", "RunPython", ["migrations.RunPython(forwards_func, reverse_func)"], ["RunPython", "reverse_func"], "Data moved."),
        ("squashmigrations", "squashmigrations", "squashmigrations", ["python manage.py squashmigrations blog 0001 0005"], ["squashmigrations", "0005"], "Squashed."),
        ("--merge", "--merge", "--merge", ["python manage.py makemigrations --merge"], ["--merge", "makemigrations"], "Merged."),
        ("--plan", "--plan", "--plan", ["python manage.py migrate --plan"], ["--plan"], "Plan shown."),
        ("--database", "--database", "--database", ["python manage.py migrate --database=replica"], ["--database"], "Target DB."),
        ("showmigrations blog", "showmigrations blog", "showmigrations blog", ["python manage.py showmigrations blog"], ["showmigrations", "blog"], "App list."),
    ],

    "djangoAdmin": [
        ("Register model", "Registrar modelo", "注册模型", ["admin.site.register(Post)"], ["admin.site.register", "Post"], "Model visible."),
        ("list_display", "list_display", "list_display", ["list_display = ('id', 'title')"], ["list_display", "title"], "Columns shown."),
        ("list_filter", "list_filter", "list_filter", ["list_filter = ('published',)"], ["list_filter"], "Filters ready."),
        ("search_fields", "search_fields", "search_fields", ["search_fields = ('title',)"], ["search_fields"], "Search enabled."),
        ("ordering", "ordering", "ordering", ["ordering = ('-created_at',)"], ["ordering"], "Order set."),
        ("fieldsets", "fieldsets", "fieldsets", ["fieldsets = ((None, {'fields': ('title','body')}),)"], ["fieldsets", "fields"], "Layout set."),
        ("readonly_fields", "readonly_fields", "readonly_fields", ["readonly_fields = ('created_at',)"], ["readonly_fields"], "Read-only ok."),
        ("prepopulated_fields", "prepopulated_fields", "prepopulated_fields", ["prepopulated_fields = {'slug': ('title',)}"], ["prepopulated_fields", "slug"], "Slug auto."),
        ("Inlines", "Inlines", "内联 Inlines", ["class CommentInline(admin.TabularInline):", "    model = Comment"], ["TabularInline", "model = Comment"], "Inline ready."),
        ("Custom action", "Accion custom", "自定义 action", ["actions = ['make_published']"], ["actions", "make_published"], "Action ready."),
        ("date_hierarchy", "date_hierarchy", "date_hierarchy", ["date_hierarchy = 'created_at'"], ["date_hierarchy"], "Timeline ok."),
        ("autocomplete_fields", "autocomplete_fields", "autocomplete_fields", ["autocomplete_fields = ('author',)"], ["autocomplete_fields"], "Autocomplete ok."),
        ("Admin site header", "Header del admin", "Admin 标题", ["admin.site.site_header = 'CodeCrafters Admin'"], ["site_header"], "Header set."),
        ("get_queryset", "Override get_queryset", "重写 get_queryset", ["def get_queryset(self, request):", "    return super().get_queryset(request).select_related('author')"], ["get_queryset", "select_related"], "Optimized."),
        ("has_change_permission", "has_change_permission", "权限控制", ["def has_change_permission(self, request, obj=None):", "    return request.user.is_superuser"], ["has_change_permission", "is_superuser"], "Permission ok."),
    ],

    "djangoForms": [
        ("Basic Form", "Form basico", "基础表单", ["class ContactForm(forms.Form):", "    email = forms.EmailField()"], ["forms.Form", "EmailField"], "Form defined."),
        ("Handle POST", "Manejar POST", "处理 POST", ["if request.method == 'POST':", "    form = ContactForm(request.POST)"], ["request.POST", "POST"], "POST handled."),
        ("csrf_token", "csrf_token", "csrf_token", ["{% csrf_token %}"], ["csrf_token"], "Protected."),
        ("is_valid + cleaned_data", "is_valid + cleaned_data", "校验 cleaned_data", ["if form.is_valid():", "    email = form.cleaned_data['email']"], ["is_valid", "cleaned_data"], "Data clean."),
        ("ModelForm", "ModelForm", "ModelForm", ["class PostForm(forms.ModelForm):", "    class Meta:", "        model = Post", "        fields = ['title','body']"], ["ModelForm", "class Meta", "fields"], "ModelForm ready."),
        ("clean_<field>", "clean_<field>", "自定义 clean", ["def clean_email(self):", "    value = self.cleaned_data['email']", "    return value.lower()"], ["clean_email", "return"], "Validation added."),
        ("Show errors", "Mostrar errores", "显示错误", ["{{ form.errors }}"], ["form.errors"], "Errors visible."),
        ("Widgets", "Widgets", "Widget", ["email = forms.EmailField(widget=forms.EmailInput(attrs={'class': 'input'}))"], ["widget", "attrs"], "Widget styled."),
        ("Initial data", "Datos iniciales", "初始值", ["form = ContactForm(initial={'email': 'a@b.com'})"], ["initial", "ContactForm"], "Prefilled."),
        ("save(commit=False)", "save(commit=False)", "save(commit=False)", ["obj = form.save(commit=False)", "obj.author = request.user", "obj.save()"], ["commit=False", "obj.save"], "Extra fields set."),
        ("Redirect after POST", "Redirect despues de POST", "POST 后重定向", ["return redirect('thanks')"], ["redirect"], "PRG ok."),
        ("Formset", "Formset", "Formset", ["TagFormSet = formset_factory(TagForm, extra=3)"], ["formset_factory", "extra=3"], "Multiple forms."),
        ("ModelFormSet", "ModelFormSet", "ModelFormSet", ["PostFormSet = modelformset_factory(Post, fields=('title',), extra=1)"], ["modelformset_factory", "extra=1"], "Model formset."),
        ("File upload form", "Form con archivo", "文件上传表单", ["class UploadForm(forms.Form):", "    file = forms.FileField()"], ["FileField"], "Upload ready."),
        ("PRG pattern", "Patron PRG", "PRG 模式", ["# POST -> Redirect -> GET"], ["Redirect"], "No double submit."),
    ],

    "djangoAuth": [
        ("login_required", "login_required", "login_required", ["@login_required", "def dashboard(request):", "    ..."], ["login_required", "dashboard"], "Protected view."),
        ("UserCreationForm", "UserCreationForm", "UserCreationForm", ["form = UserCreationForm()"], ["UserCreationForm"], "Signup form."),
        ("authenticate + login", "authenticate + login", "登录认证", ["user = authenticate(username=u, password=p)", "login(request, user)"], ["authenticate", "login("], "Logged in."),
        ("logout", "logout", "logout", ["logout(request)"], ["logout"], "Logged out."),
        ("request.user", "request.user", "request.user", ["if request.user.is_authenticated:", "    ..."], ["request.user", "is_authenticated"], "User checked."),
        ("permission_required", "permission_required", "permission_required", ["@permission_required('blog.change_post')", "def edit(request):", "    ..."], ["permission_required", "change_post"], "Permission gate."),
        ("has_perm", "has_perm", "has_perm", ["if request.user.has_perm('blog.add_post'):", "    ..."], ["has_perm", "add_post"], "Checked."),
        ("Groups", "Grupos", "用户组", ["request.user.groups.filter(name='Editors').exists()"], ["groups.filter", "Editors"], "Group ok."),
        ("AUTH_USER_MODEL", "AUTH_USER_MODEL", "AUTH_USER_MODEL", ["AUTH_USER_MODEL = 'accounts.User'"], ["AUTH_USER_MODEL"], "Custom user."),
        ("Profile OneToOne", "Perfil OneToOne", "一对一 Profile", ["profile = models.OneToOneField(User, on_delete=models.CASCADE)"], ["OneToOneField", "on_delete"], "Profile linked."),
        ("Signals profile", "Signals profile", "信号 signals", ["@receiver(post_save, sender=User)", "def create_profile(...):", "    Profile.objects.create(user=instance)"], ["post_save", "Profile.objects.create"], "Auto profile."),
        ("Auth urls include", "Incluir auth urls", "引入 auth urls", ["path('accounts/', include('django.contrib.auth.urls'))"], ["auth.urls", "include"], "Auth urls."),
        ("Session expiry", "Expiracion de sesion", "会话过期", ["request.session.set_expiry(3600)"], ["set_expiry"], "Expiry set."),
        ("PasswordChangeView", "PasswordChangeView", "PasswordChangeView", ["PasswordChangeView.as_view()"], ["PasswordChangeView"], "View ready."),
        ("staff_member_required", "staff_member_required", "staff_member_required", ["@staff_member_required", "def staff(request):", "    ..."], ["staff_member_required"], "Staff only."),
    ],

    "djangoCBV": [
        ("ListView", "ListView", "ListView", ["class PostList(ListView):", "    model = Post"], ["ListView", "model = Post"], "List ready."),
        ("DetailView", "DetailView", "DetailView", ["class PostDetail(DetailView):", "    model = Post"], ["DetailView", "PostDetail"], "Detail ready."),
        ("TemplateView", "TemplateView", "TemplateView", ["class AboutView(TemplateView):", "    template_name = 'about.html'"], ["TemplateView", "template_name"], "Static page."),
        ("CreateView", "CreateView", "CreateView", ["class PostCreate(CreateView):", "    model = Post", "    fields = ['title','body']"], ["CreateView", "fields"], "Create form."),
        ("UpdateView", "UpdateView", "UpdateView", ["class PostUpdate(UpdateView):", "    model = Post"], ["UpdateView"], "Update ok."),
        ("DeleteView", "DeleteView", "DeleteView", ["class PostDelete(DeleteView):", "    model = Post"], ["DeleteView"], "Delete ok."),
        ("RedirectView", "RedirectView", "RedirectView", ["class GoHome(RedirectView):", "    pattern_name = 'home'"], ["RedirectView", "pattern_name"], "Redirect ok."),
        ("FormView", "FormView", "FormView", ["class Contact(FormView):", "    form_class = ContactForm"], ["FormView", "form_class"], "FormView ok."),
        ("paginate_by", "paginate_by", "paginate_by", ["paginate_by = 20"], ["paginate_by"], "Pagination set."),
        ("LoginRequiredMixin", "LoginRequiredMixin", "LoginRequiredMixin", ["class Dashboard(LoginRequiredMixin, TemplateView):", "    template_name = 'dash.html'"], ["LoginRequiredMixin"], "CBV protected."),
        ("get_queryset", "get_queryset", "get_queryset", ["def get_queryset(self):", "    return Post.objects.filter(published=True)"], ["get_queryset", "objects.filter"], "Custom queryset."),
        ("get_context_data", "get_context_data", "get_context_data", ["def get_context_data(self, **kwargs):", "    ctx = super().get_context_data(**kwargs)", "    ctx['title'] = 'Home'", "    return ctx"], ["get_context_data", "super()"], "Extra context."),
        ("get_success_url", "get_success_url", "get_success_url", ["def get_success_url(self):", "    return reverse('home')"], ["get_success_url", "reverse"], "Custom redirect."),
        ("slug_field", "slug_field", "slug_field", ["slug_field = 'slug'", "slug_url_kwarg = 'slug'"], ["slug_field", "slug_url_kwarg"], "Slug routing."),
        ("PermissionRequiredMixin", "PermissionRequiredMixin", "PermissionRequiredMixin", ["class Edit(PermissionRequiredMixin, UpdateView):", "    permission_required = 'blog.change_post'"], ["PermissionRequiredMixin", "permission_required"], "Permission mixin."),
    ],

    "djangoMiddleware": [
        ("Middleware skeleton", "Esqueleto middleware", "中间件骨架", ["class TimingMiddleware:", "    def __call__(self, request):", "        response = self.get_response(request)", "        return response"], ["__call__", "get_response"], "Middleware ok."),
        ("Add to MIDDLEWARE", "Anadir a MIDDLEWARE", "加入 MIDDLEWARE", ["MIDDLEWARE = ['core.middleware.TimingMiddleware']"], ["MIDDLEWARE", "TimingMiddleware"], "Enabled."),
        ("Read request.path", "Leer request.path", "读取 request.path", ["path = request.path"], ["request.path"], "Path read."),
        ("Add header", "Anadir header", "添加 header", ["response['X-Request-ID'] = '123'"], ["X-Request-ID"], "Header set."),
        ("HttpResponseForbidden", "HttpResponseForbidden", "禁止访问", ["return HttpResponseForbidden('no')"], ["HttpResponseForbidden"], "Forbidden returned."),
        ("SECURE_SSL_REDIRECT", "SECURE_SSL_REDIRECT", "HTTPS 重定向", ["SECURE_SSL_REDIRECT = True"], ["SECURE_SSL_REDIRECT"], "HTTPS enforced."),
        ("HTTPONLY cookies", "Cookies HTTPOnly", "HTTPOnly Cookie", ["SESSION_COOKIE_HTTPONLY = True"], ["HTTPONLY"], "Safer cookies."),
        ("X_FRAME_OPTIONS", "X_FRAME_OPTIONS", "X_FRAME_OPTIONS", ["X_FRAME_OPTIONS = 'DENY'"], ["X_FRAME_OPTIONS", "DENY"], "Clickjacking blocked."),
        ("CSRF_COOKIE_SECURE", "CSRF_COOKIE_SECURE", "CSRF Cookie Secure", ["CSRF_COOKIE_SECURE = True"], ["CSRF_COOKIE_SECURE"], "Hardened."),
        ("csrf_exempt", "csrf_exempt", "csrf_exempt", ["@csrf_exempt", "def webhook(request):", "    ..."], ["csrf_exempt", "webhook"], "Webhook ok."),
        ("Rate limit idea", "Idea rate limit", "简单限流", ["count = cache.get(key, 0)"], ["cache.get"], "Rate limited."),
        ("Log timing", "Log timing", "记录耗时", ["ms = (time.time() - start) * 1000"], ["time.time", "* 1000"], "Timing logged."),
        ("handler500", "handler500", "handler500", ["handler500 = 'core.views.server_error'"], ["handler500", "server_error"], "500 wired."),
        ("ALLOWED_HOSTS", "ALLOWED_HOSTS", "ALLOWED_HOSTS", ["ALLOWED_HOSTS = ['example.com']"], ["ALLOWED_HOSTS"], "Hosts ok."),
        ("GZipMiddleware", "GZipMiddleware", "GZipMiddleware", ["MIDDLEWARE = ['django.middleware.gzip.GZipMiddleware']"], ["GZipMiddleware"], "Responses compressed."),
    ],

    "djangoTesting": [
        ("TestCase skeleton", "Esqueleto TestCase", "TestCase 骨架", ["class SmokeTest(TestCase):", "    def test_ok(self):", "        self.assertEqual(1, 1)"], ["TestCase", "def test"], "Test runs."),
        ("Client GET", "Client GET", "Client GET", ["resp = self.client.get('/')", "self.assertEqual(resp.status_code, 200)"], ["client.get", "status_code"], "GET ok."),
        ("Client POST", "Client POST", "Client POST", ["resp = self.client.post('/login/', {'u': 'a'})"], ["client.post", "/login/"], "POST sent."),
        ("setUp", "setUp", "setUp", ["def setUp(self):", "    Post.objects.create(title='Hi')"], ["setUp", "objects.create"], "Data ready."),
        ("assertTemplateUsed", "assertTemplateUsed", "assertTemplateUsed", ["self.assertTemplateUsed(resp, 'home.html')"], ["assertTemplateUsed", "home.html"], "Template ok."),
        ("assertRedirects", "assertRedirects", "assertRedirects", ["self.assertRedirects(resp, '/thanks/')"], ["assertRedirects"], "Redirect ok."),
        ("Model __str__", "Modelo __str__", "模型 __str__", ["self.assertEqual(str(post), 'Hi')"], ["str(post)"], "Readable."),
        ("Form invalid", "Form invalido", "表单无效", ["self.assertFalse(form.is_valid())"], ["is_valid", "assertFalse"], "Invalid caught."),
        ("client.login", "client.login", "client.login", ["self.client.login(username='u', password='p')"], ["client.login"], "Logged in."),
        ("Permission denied", "Permiso denegado", "权限拒绝", ["self.assertEqual(resp.status_code, 302)"], ["status_code"], "Denied."),
        ("mock patch", "mock patch", "mock patch", ["@patch('app.service.fetch')", "mock_fetch.return_value = []"], ["patch", "return_value"], "Mocked."),
        ("override_settings", "override_settings", "override_settings", ["@override_settings(DEBUG=True)"], ["override_settings", "DEBUG=True"], "Temp settings."),
        ("Run tests", "Ejecutar tests", "运行 tests", ["python manage.py test"], ["manage.py", "test"], "Tests run."),
        ("Coverage idea", "Idea coverage", "覆盖率", ["# coverage run -m pytest"], ["coverage"], "Coverage measured."),
        ("assertNumQueries", "assertNumQueries", "assertNumQueries", ["# assertNumQueries(1)"], ["assertNumQueries"], "Queries tracked."),
    ],

    "djangoDeploy": [
        ("DEBUG False + ALLOWED_HOSTS", "DEBUG False + ALLOWED_HOSTS", "关闭 DEBUG", ["DEBUG = False", "ALLOWED_HOSTS = ['example.com']"], ["DEBUG = False", "ALLOWED_HOSTS"], "Prod safety."),
        ("SECRET_KEY env", "SECRET_KEY env", "SECRET_KEY 环境变量", ["SECRET_KEY = os.environ['DJANGO_SECRET_KEY']"], ["SECRET_KEY", "DJANGO_SECRET_KEY"], "Secret safe."),
        ("WSGI application", "WSGI application", "WSGI 配置", ["application = get_wsgi_application()"], ["get_wsgi_application"], "WSGI ready."),
        ("ASGI application", "ASGI application", "ASGI 配置", ["application = get_asgi_application()"], ["get_asgi_application"], "ASGI ready."),
        ("gunicorn", "gunicorn", "gunicorn", ["gunicorn mysite.wsgi:application"], ["gunicorn", "wsgi:application"], "Server starts."),
        ("collectstatic --noinput", "collectstatic --noinput", "collectstatic --noinput", ["python manage.py collectstatic --noinput"], ["collectstatic", "--noinput"], "Static shipped."),
        ("check --deploy", "check --deploy", "check --deploy", ["python manage.py check --deploy"], ["check", "--deploy"], "Deploy check."),
        ("Production cache", "Cache produccion", "生产缓存", ["CACHES = {'default': {'BACKEND': 'django.core.cache.backends.locmem.LocMemCache'}}"], ["CACHES", "BACKEND"], "Cache on."),
        ("SECURE_HSTS_SECONDS", "SECURE_HSTS_SECONDS", "HSTS", ["SECURE_HSTS_SECONDS = 31536000"], ["HSTS_SECONDS", "31536000"], "HSTS enabled."),
        ("Logging to file", "Logging a archivo", "日志文件", ["'class': 'logging.FileHandler'", "'filename': 'app.log'"], ["FileHandler", "app.log"], "Logs saved."),
        ("migrate", "migrate", "migrate", ["python manage.py migrate"], ["manage.py", "migrate"], "DB updated."),
        ("Health check view", "Health check view", "健康检查视图", ["def health(request):", "    return HttpResponse('ok')"], ["def health", "HttpResponse"], "Health ok."),
        ("select_related", "select_related", "select_related", ["Post.objects.select_related('author').all()"], ["select_related"], "Fewer queries."),
        ("paginate_by", "paginate_by", "paginate_by", ["paginate_by = 50"], ["paginate_by"], "Paged."),
        ("cache_page", "cache_page", "cache_page", ["@cache_page(60)", "def home(request):", "    ..."], ["cache_page", "60"], "Cached."),
    ],
}


def ensure_sizes() -> None:
    for cat_dir, *_ in CATEGORIES:
        if cat_dir not in EXERCISES:
            raise SystemExit(f"Missing EXERCISES for {cat_dir}")
        if len(EXERCISES[cat_dir]) != 15:
            raise SystemExit(f"{cat_dir} has {len(EXERCISES[cat_dir])} exercises, expected 15")


def build_exercise_screen(cat_dir: str, ex_id: int, must_tokens: list[str]) -> str:
    class_name = f"{camel(cat_dir)}Ex{ex_id}"

    regex_lines: list[str] = []
    for tok in must_tokens:
        if tok == "{{":
            pat = r"\\{\\{"  # literal {{
        elif tok == "}}":
            pat = r"\\}\\}"
        else:
            pat = re.escape(tok)
        regex_lines.append(f'      RegExp(r"{pat}", caseSensitive: false, multiLine: true),')

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
    lines.append(f"              heroTag: 'introButtonDjango{ex_id}',")
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
    lines.append(f"              heroTag: 'infoButtonDjango{ex_id}',")
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
    lines.append(f"              heroTag: 'runButtonDjango{ex_id}',")
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


def build_exmain(cat_dir: str, ids: list[int]) -> str:
    class_name = f"{camel(cat_dir)}ExMain"

    lines: list[str] = []
    lines.append("import 'package:flutter/material.dart';")
    for ex_id in ids:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/django/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart';"
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
        lines.append(f"    exerciseName: \"{name}\",")
        lines.append(f"    productID: \"com.mrrubik.learnswift.{LANG_PREFIX}ex{ex_id}\",")
        lines.append(f"    alreadyBuy: purchaseManagerHive.{purchased}({ex_id}),")
        lines.append(f"    completed: purchaseManagerHive.getCompleted({ex_id}),")
        lines.append("  ),")

    lines.append("];\n")
    return "\n".join(lines)


def build_courses_main_model_list(lang: str) -> str:
    lines: list[str] = []
    lines.append("import 'package:learnswift/data/mainModel/coursesMainModel.dart';")

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import 'package:learnswift/Screens/Courses/django/{cat_dir}/{cat_dir}ExMain.dart';"
        )

    for cat_dir, *_ in CATEGORIES:
        lines.append(
            f"import '../../courses/Django/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart';"
        )

    lines.append("")
    lines.append(f"List<CoursesMainModel> coursesDjangoMainModelList{lang.upper()} = [")

    for i, (cat_dir, name_en, name_es, name_zh) in enumerate(CATEGORIES):
        general = {"en": name_en, "es": name_es, "zh": name_zh}[lang]
        model_var = f"{cat_dir}Model{lang.upper()}"
        exmain_class = f"{camel(cat_dir)}ExMain"

        lines.append("CoursesMainModel(")
        lines.append(f"  id: {i},")
        lines.append(f"  generalName: '{general}',")
        lines.append(f"  catExercise: {model_var},")
        lines.append(f"  description: \"{LANG_PREFIX}Cat{i}InfoContent\", ")
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


def gen_texts(lang: str, cat_dir: str, ex_id: int, topic: str, must: list[str]) -> tuple[str, str, str, str, str, str]:
    # Titles
    instr_titles = {
        "en": ["Your mission", "Mini quest", "Quick challenge", "Level up"],
        "es": ["Tu mision", "Mini reto", "Mision express", "Sube de nivel"],
        "zh": ["你的任务", "小挑战", "快速关卡", "升级啦"],
    }[lang]
    instr_title = hpick(instr_titles, f"{lang}:{ex_id}:instrTitle")

    # Scenarios by category (keeps info non-template)
    scenarios = {
        "djangoBasics": {
            "en": ["a tiny blog", "a login page", "a landing page", "a mini dashboard"],
            "es": ["un mini blog", "una pantalla de login", "una landing", "un mini dashboard"],
            "zh": ["一个小博客", "一个登录页", "一个落地页", "一个小面板"],
        },
        "djangoSettings": {
            "en": ["a production deploy", "a multi-env setup", "a template folder", "a static pipeline"],
            "es": ["un deploy a produccion", "un setup multi-entorno", "una carpeta de templates", "un pipeline de estaticos"],
            "zh": ["一次生产部署", "多环境配置", "模板目录", "静态资源流程"],
        },
        "djangoUrls": {
            "en": ["routing a feature", "an API endpoint", "a legacy redirect", "a profile page"],
            "es": ["rutas de una feature", "un endpoint", "un redirect legacy", "una pagina de perfil"],
            "zh": ["功能路由", "一个接口", "旧页面跳转", "个人页"],
        },
        "djangoTemplates": {
            "en": ["a dashboard UI", "an email template", "a product list", "a profile header"],
            "es": ["un dashboard", "un email", "una lista de productos", "un header de perfil"],
            "zh": ["仪表盘", "邮件模板", "商品列表", "个人页头部"],
        },
        "djangoStatic": {
            "en": ["user avatars", "marketing CSS", "uploaded photos", "a file download"],
            "es": ["avatars de usuarios", "CSS de marketing", "fotos subidas", "una descarga"],
            "zh": ["用户头像", "营销 CSS", "上传的照片", "文件下载"],
        },
        "djangoModels": {
            "en": ["a posts table", "a comments feature", "a catalog", "a profile DB"],
            "es": ["una tabla de posts", "comentarios", "un catalogo", "una DB de perfiles"],
            "zh": ["文章表", "评论功能", "商品目录", "用户资料"],
        },
        "djangoOrm": {
            "en": ["fast lists", "filters", "analytics", "admin queries"],
            "es": ["listas rapidas", "filtros", "analitica", "consultas de admin"],
            "zh": ["快速列表", "过滤", "统计", "后台查询"],
        },
        "djangoMigrations": {
            "en": ["a schema change", "a rollback", "a release", "a hotfix"],
            "es": ["un cambio de esquema", "un rollback", "un release", "un hotfix"],
            "zh": ["结构变更", "回滚", "发布", "紧急修复"],
        },
        "djangoAdmin": {
            "en": ["content moderation", "ops tooling", "a backoffice", "a support panel"],
            "es": ["moderacion", "herramientas internas", "un backoffice", "un panel de soporte"],
            "zh": ["内容审核", "内部工具", "后台", "客服面板"],
        },
        "djangoForms": {
            "en": ["signup", "checkout", "contact form", "profile edit"],
            "es": ["registro", "checkout", "contacto", "editar perfil"],
            "zh": ["注册", "结账", "联系表单", "编辑资料"],
        },
        "djangoAuth": {
            "en": ["private pages", "role-based access", "admin actions", "sessions"],
            "es": ["paginas privadas", "roles", "acciones admin", "sesiones"],
            "zh": ["私有页面", "角色权限", "后台操作", "会话"],
        },
        "djangoCBV": {
            "en": ["CRUD screens", "lists", "detail pages", "forms"],
            "es": ["pantallas CRUD", "listas", "detalle", "formularios"],
            "zh": ["CRUD 页面", "列表", "详情页", "表单"],
        },
        "djangoMiddleware": {
            "en": ["security headers", "request timing", "global checks", "logging"],
            "es": ["headers de seguridad", "timing", "checks globales", "logging"],
            "zh": ["安全头", "耗时统计", "全局检查", "日志"],
        },
        "djangoTesting": {
            "en": ["safe refactors", "CI", "bug repro", "release confidence"],
            "es": ["refactors seguros", "CI", "repro de bugs", "deploy tranquilo"],
            "zh": ["安全重构", "持续集成", "复现 bug", "发布信心"],
        },
        "djangoDeploy": {
            "en": ["production", "performance", "caching", "deployment"],
            "es": ["produccion", "rendimiento", "cache", "deployment"],
            "zh": ["生产环境", "性能", "缓存", "部署"],
        },
    }[cat_dir][lang]

    scenario = hpick(scenarios, f"{lang}:{ex_id}:scenario")

    must_preview = ", ".join(must[:3])

    if lang == "es":
        instr = (
            f"Hoy estas en {scenario} y necesitas {topic}.\n\n"
            f"Tu objetivo: escribe el snippet minimo que demuestre la idea.\n\n"
            f"Si dudas, asegúrate de incluir: {must_preview}."
        )
        info = (
            f"Que practicas: {topic}.\n\n"
            f"Por que importa: en Django esto suele ser la diferencia entre un proyecto ordenado y uno imposible de mantener.\n\n"
            f"Cuando lo usas: cuando conviertes {scenario} en algo real (rutas, datos, templates o seguridad)."
        )
        hint1 = f"Pista rapida: menciona al menos: {must_preview}."
        hint2 = "Mira el ejemplo: copia la estructura y cambia nombres si quieres."
    elif lang == "en":
        instr = (
            f"You are building {scenario} and you need {topic}.\n\n"
            f"Goal: write the minimum snippet that proves the concept.\n\n"
            f"If stuck, include: {must_preview}."
        )
        info = (
            f"What you practice: {topic}.\n\n"
            f"Why it matters: in Django this often separates a clean codebase from a messy one.\n\n"
            f"When you use it: turning {scenario} into a real feature (routes, data, templates, security)."
        )
        hint1 = f"Quick hint: include at least: {must_preview}."
        hint2 = "Use the example structure; names can vary."
    else:
        instr = (
            f"你在做 {scenario}，需要用到 {topic}。\n\n"
            f"目标：写出最小代码片段，表达这个概念。\n\n"
            f"卡住了就先保证出现：{must_preview}。"
        )
        info = (
            f"你在练：{topic}。\n\n"
            f"为什么重要：在 Django 里，这类细节能让项目保持整洁，不会越写越乱。\n\n"
            f"什么时候用：把 {scenario} 做成真实功能时（路由、数据、模板、安全）。"
        )
        hint1 = f"提示：至少包含：{must_preview}。"
        hint2 = "参考示例结构，名字可以自己改。"

    return instr_title, instr, info_title(lang), info, hint1, hint2


def main() -> None:
    ensure_sizes()

    arb_entries = {"en": [], "es": [], "zh": []}

    # Global correct strings
    correct = {
        "en": ("Correct ✅", "Nice! Your snippet has the key Django pieces. Keep going."),
        "es": ("Correcto ✅", "Bien! Tu snippet tiene las piezas clave de Django. Sigue subiendo nivel."),
        "zh": ("正确 ✅", "做得好！你的代码片段包含了关键的 Django 结构。继续加油。"),
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

    # Category info strings
    cat_titles = {
        "en": "Django {name} — Why it matters",
        "es": "Django {name} — Por que importa",
        "zh": "Django {name} — 为什么重要",
    }

    cat_contents = {
        "en": "In this category you practice {name}. It matters because it shows up in real projects and keeps your app maintainable. Use it in production features.",
        "es": "En esta categoria practicas {name}. Importa porque aparece en proyectos reales y mantiene tu app mantenible. Lo usaras en features de produccion.",
        "zh": "本分类练习 {name}。它很重要，因为真实项目一定会用到，而且能让代码更容易维护。",
    }

    for i, (cat_dir, name_en, name_es, name_zh) in enumerate(CATEGORIES):
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
                Path(f"lib/data/courses/Django/{cat_dir}/{cat_dir}ExModelList{lang.upper()}.dart"),
                build_model_list(cat_dir, specs, lang, base_id),
            )

        # ExMain
        write(
            Path(f"lib/Screens/Courses/django/{cat_dir}/{cat_dir}ExMain.dart"),
            build_exmain(cat_dir, ids),
        )

        # Exercises + ARB
        for idx, (t_en, t_es, t_zh, code_lines, must, out_text) in enumerate(specs):
            ex_id = base_id + idx

            # Screen
            write(
                Path(
                    f"lib/Screens/Courses/django/{cat_dir}/Ex/{cat_dir}Ex{ex_id}.dart"
                ),
                build_exercise_screen(cat_dir, ex_id, must),
            )

            for lang in ["en", "es", "zh"]:
                n = idx + 1
                challenge = idx % 2 == 1
                label = ex_label(lang, n, challenge)
                topic = {"en": t_en, "es": t_es, "zh": t_zh}[lang]

                instr_title, instr, info_t, info_c, hint1, hint2 = gen_texts(
                    lang, cat_dir, ex_id, topic, must
                )

                sol = "\n".join(code_lines)
                out = output_label(lang, out_text)

                def prep(s: str) -> str:
                    return encode_braces(escape_icu(s))

                # Core keys
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
            Path(f"lib/data/mainModel/Django/CoursesMainModelList{lang.upper()}.dart"),
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
