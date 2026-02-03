import 'dart:ui';

import 'package:learnswift/data/Hive/LenguajePurchaseManagerHive.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/mainModel/Python/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Swift/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/CSharp/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Flutter/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Kotlin/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/PHP/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Ruby/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/SQL/CoursesMainModelListES.dart';

import '../mainModel/COBOL/CoursesMainModelListES.dart';
import '../mainModel/Cpp/CoursesMainModelListES.dart';
import '../mainModel/Go/CoursesMainModelListES.dart';
import '../mainModel/Java/CoursesMainModelListES.dart';
import '../mainModel/JavaScript/CoursesMainModelListES.dart';

final languagePurchaseManagerHive = LanguagePurchaseManagerHive();
final List<ProgrammingItem> programmingItemsES = [
  // Lenguajes
  ProgrammingItem(
    id: 1,
    name: 'Swift',
    coursesList: coursesSwiftMainModelListES,
    productID: 'com.mrrubik.learnswift.swift',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(1),
    color1: Color(0xFFFF5E57), // Rojo brillante
    color2: Color(0xFFFFC371), // Amarillo cálido
    isActive: true,
    description:
        'CodeCrafters: Swift es una aplicación diseñada para ayudar a los usuarios a aprender Swift, el poderoso lenguaje de programación utilizado para crear aplicaciones en las plataformas de Apple. Incluye ejercicios interactivos para construir una base sólida en Swift.\n\nVersión: Swift 5.9',
  ),
  ProgrammingItem(
    id: 2,
    name: 'Python',
    productID: 'com.mrrubik.learnswift.python',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(2),
    coursesList: coursesPythonMainModelListES,
    color1: Color(0xFF306998),
    color2: Color(0xFFFFD43B),
     isActive: true,
    description:
        'CodeCrafters: Python te enseña este versátil lenguaje utilizado para inteligencia artificial, ciencia de datos y desarrollo web. Aprenderás con ejercicios prácticos para aplicaciones reales.\n\nVersión: Python 3.12',
  ),
  ProgrammingItem(
    id: 3,
    name: 'JavaScript',
    productID: 'com.mrrubik.learnswift.javaScript',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(3),
    coursesList: coursesJavaScriptMainModelListES,
    color1: Color.fromARGB(255, 205, 184, 27),
    color2: Color(0xFF000000),
    isActive: true,
    description:
        'CodeCrafters: JavaScript es tu guía para dominar el lenguaje más usado en el desarrollo web, desde dinámicas en el frontend hasta aplicaciones completas.\n\nVersión: ECMAScript 2023',
  ),
  ProgrammingItem(
    id: 4,
    name: 'Java',
    productID: 'com.mrrubik.learnswift.java',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(4),
    coursesList: coursesJavaMainModelListES,
    color1: Color(0xFF5382A1),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: Java te enseña uno de los lenguajes más populares para aplicaciones empresariales, móviles y sistemas robustos.\n\nVersión: Java 20',
  ),
  ProgrammingItem(
    id: 5,
    name: 'C++',
    productID: 'com.mrrubik.learnswift.ccc',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(5),
    coursesList: coursesCppMainModelListES,
    color1: Color(0xFF00599C),
    color2: Color(0xFF4D4D4D),
    isActive: true,
    description:
        'CodeCrafters: C++ te ayuda a dominar este lenguaje utilizado para sistemas de alto rendimiento, videojuegos y aplicaciones críticas.\n\nVersión: C++20',
  ),
  ProgrammingItem(
    id: 6,
    name: 'C#',
    productID: 'com.mrrubik.learnswift.csharp',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(6),
    coursesList: coursesCSharpMainModelListES,
    color1: Color(0xFF9B4F96),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: C# te guía en el desarrollo con este lenguaje esencial para aplicaciones Windows, videojuegos y soluciones empresariales.\n\nVersión: C# 12',
  ),
  ProgrammingItem(
    id: 7,
    name: 'Kotlin',
    productID: 'com.mrrubik.learnswift.kotlin',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(7),
    coursesList: coursesKotlinMainModelListES,
    color1: Color(0xFF3D77BC),
    color2: Color(0xFFF88909),
    isActive: true,
    description:
        'CodeCrafters: Kotlin es tu entrada al desarrollo Android moderno con este lenguaje poderoso y expresivo.\n\nVersión: Kotlin 1.9',
  ),
  ProgrammingItem(
    id: 8,
    name: 'PHP',
    productID: 'com.mrrubik.learnswift.php',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(8),
    coursesList: coursesPhpMainModelListES,
    color1: Color(0xFF8892BF),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: PHP te introduce a uno de los lenguajes más usados en el desarrollo web backend, ideal para proyectos escalables.\n\nVersión: PHP 8.3',
  ),
  ProgrammingItem(
    id: 9,
    name: 'Ruby',
    productID: 'com.mrrubik.learnswift.ruby',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(9),
    coursesList: coursesRubyMainModelListES,
    color1: Color(0xFFCC342D),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: Ruby te enseña este lenguaje conocido por su simplicidad y elegancia, usado en desarrollo web y startups.\n\nVersión: Ruby 3.3',
  ),
  ProgrammingItem(
    id: 10,
    name: 'Go',
    productID: 'com.mrrubik.learnswift.go',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(10),
    coursesList: coursesGoMainModelListES,
    color1: Color(0xFF00ADD8),
    color2: Color(0xFF5DC9E2),
    isActive: true,
    description:
        'CodeCrafters: Go te enseña un lenguaje moderno de sistemas creado para velocidad, simplicidad y concurrencia. Aprende con ejercicios prácticos para backend y herramientas.\n\nVersión: Go 1.22',
  ),
  ProgrammingItem(
    id: 11,
    name: 'COBOL',
    productID: 'com.mrrubik.learnswift.cobol',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(11),
    coursesList: coursesCobolMainModelListES,
    color1: Color(0xFF2D2D2D),
    color2: Color(0xFFB8C3C7),
    isActive: true,
    description:
        'CodeCrafters: COBOL te enseña el lenguaje clásico de negocios usado en banca, finanzas y procesos batch. Aprende con ejercicios estructurados.\n\nVersión: COBOL 2014',
  ),

  ProgrammingItem(
    id: 12,
    name: 'SQL',
    productID: 'com.mrrubik.learnswift.sql',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(12),
    coursesList: coursesSqlMainModelListES,
    color1: Color(0xFF0F6CBD),
    color2: Color(0xFFB3E5FC),
    isActive: true,
    description:
        'CodeCrafters: SQL te enseña el lenguaje de los datos. Consultas, filtros, joins y análisis con ejercicios prácticos.\n\nVersión: SQL 2023',
  ),

  // Frameworks
  ProgrammingItem(
    id: 13,
    name: 'Flutter',
    productID: 'com.mrrubik.learnswift.flutter',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(13),
    coursesList: coursesFlutterMainModelListES,
    color1: Color(0xFF02569B),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: Flutter te introduce al desarrollo multiplataforma con este framework potente para aplicaciones móviles y web.\n\nVersión: Flutter 3.13',
  ),
  ProgrammingItem(
    id: 14,
    name: 'React',
    productID: 'com.mrrubik.learnswift.react',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(14),
    coursesList: [],
    color1: Color(0xFF61DAFB),
    color2: Color(0xFF20232A),
    isActive: false,
    description:
        'CodeCrafters: React te enseña la biblioteca más popular para construir interfaces de usuario dinámicas y modernas.\n\nVersión: React 18',
  ),
  ProgrammingItem(
    id: 15,
    name: 'Angular',
    productID: 'com.mrrubik.learnswift.angular',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(15),
    coursesList: [],
    color1: Color(0xFFDD0031),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Angular es tu herramienta para dominar este framework robusto en aplicaciones web complejas.\n\nVersión: Angular 16',
  ),
  ProgrammingItem(
    id: 16,
    name: 'Vue.js',
    productID: 'com.mrrubik.learnswift.vue',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(16),
    coursesList: [],
    color1: Color(0xFF41B883),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Vue.js te guía en el desarrollo con este framework ligero y progresivo para aplicaciones web.\n\nVersión: Vue 3.3',
  ),
  ProgrammingItem(
    id: 17,
    name: 'Django',
    productID: 'com.mrrubik.learnswift.djano',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(17),
    coursesList: [],
    color1: Color(0xFF092E20),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Django te enseña este poderoso framework backend para Python, ideal para aplicaciones rápidas y escalables.\n\nVersión: Django 4.2',
  ),
  ProgrammingItem(
    id: 18,
    name: 'Spring',
    productID: 'com.mrrubik.learnswift.sprin',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(18),
    coursesList: [],
    color1: Color(0xFF6DB33F),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Spring es tu entrada al desarrollo empresarial con este framework para Java.\n\nVersión: Spring 6',
  ),
  ProgrammingItem(
    id: 19,
    name: 'Symfony',
    productID: 'com.mrrubik.learnswift.symfony',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(19),
    coursesList: [],
    color1: Color(0xFF000000),
    color2: Color(0xFF7289DA),
    isActive: false,
    description:
        'CodeCrafters: Symfony te enseña este framework PHP robusto y modular para aplicaciones empresariales.\n\nVersión: Symfony 6.3',
  ),
  ProgrammingItem(
    id: 20,
    name: 'Laravel',
    productID: 'com.mrrubik.learnswift.laravel',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(20),
    coursesList: [],
    color1: Color(0xFFFF2D20),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Laravel es tu herramienta para aprender este framework PHP conocido por su elegancia y simplicidad.\n\nVersión: Laravel 10',
  ),
  ProgrammingItem(
    id: 21,
    name: 'ASP.NET',
    productID: 'com.mrrubik.learnswift.asp',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(21),
    coursesList: [],
    color1: Color(0xFF512BD4),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: ASP.NET te introduce al desarrollo backend con este potente framework de Microsoft.\n\nVersión: ASP.NET 8',
  ),
  ProgrammingItem(
    id: 22,
    name: 'TensorFlow',
    productID: 'com.mrrubik.learnswift.tensorflow',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(22),
    coursesList: [],
    color1: Color(0xFFFF6F00),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: TensorFlow es tu guía para construir modelos de inteligencia artificial y aprendizaje automático.\n\nVersión: TensorFlow 2.13',
  ),
];
