import 'dart:ui';

import 'package:learnswift/data/Hive/LenguajePurchaseManagerHive.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/mainModel/Python/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Swift/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/CSharp/CoursesMainModelListES.dart';
import 'package:learnswift/data/mainModel/Kotlin/CoursesMainModelListES.dart';

import '../mainModel/Cpp/CoursesMainModelListES.dart';
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
    coursesList: [],
    color1: Color(0xFF8892BF),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: PHP te introduce a uno de los lenguajes más usados en el desarrollo web backend, ideal para proyectos escalables.\n\nVersión: PHP 8.3',
  ),
  ProgrammingItem(
    id: 9,
    name: 'Ruby',
    productID: 'com.mrrubik.learnswift.ruby',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(9),
    coursesList: [],
    color1: Color(0xFFCC342D),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Ruby te enseña este lenguaje conocido por su simplicidad y elegancia, usado en desarrollo web y startups.\n\nVersión: Ruby 3.3',
  ),
  ProgrammingItem(
    id: 10,
    name: 'Go',
    productID: 'com.mrrubik.learnswift.go',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(10),
    coursesList: [],
    color1: Color(0xFF00ADD8),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Go es tu herramienta para aprender este lenguaje eficiente, ideal para sistemas distribuidos y escalables.\n\nVersión: Go 1.21',
  ),
  ProgrammingItem(
    id: 11,
    name: 'COBOL',
    productID: 'com.mrrubik.learnswift.cobol',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(11),
    coursesList: [],
    color1: Color(0xFF005CA5),
    color2: Color(0xFFFCE94F),
    isActive: false,
    description:
        'CodeCrafters: COBOL es tu guía para este clásico lenguaje empresarial, utilizado en sistemas financieros y gubernamentales.\n\nVersión: COBOL 2023',
  ),

  // Frameworks
  ProgrammingItem(
    id: 12,
    name: 'Flutter',
    productID: 'com.mrrubik.learnswift.flutter',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(12),
    coursesList: [],
    color1: Color(0xFF02569B),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Flutter te introduce al desarrollo multiplataforma con este framework potente para aplicaciones móviles y web.\n\nVersión: Flutter 3.13',
  ),
  ProgrammingItem(
    id: 13,
    name: 'React',
    productID: 'com.mrrubik.learnswift.react',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(13),
    coursesList: [],
    color1: Color(0xFF61DAFB),
    color2: Color(0xFF20232A),
    isActive: false,
    description:
        'CodeCrafters: React te enseña la biblioteca más popular para construir interfaces de usuario dinámicas y modernas.\n\nVersión: React 18',
  ),
  ProgrammingItem(
    id: 14,
    name: 'Angular',
    productID: 'com.mrrubik.learnswift.angular',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(14),
    coursesList: [],
    color1: Color(0xFFDD0031),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Angular es tu herramienta para dominar este framework robusto en aplicaciones web complejas.\n\nVersión: Angular 16',
  ),
  ProgrammingItem(
    id: 15,
    name: 'Vue.js',
    productID: 'com.mrrubik.learnswift.vue',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(15),
    coursesList: [],
    color1: Color(0xFF41B883),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Vue.js te guía en el desarrollo con este framework ligero y progresivo para aplicaciones web.\n\nVersión: Vue 3.3',
  ),
  ProgrammingItem(
    id: 16,
    name: 'Django',
    productID: 'com.mrrubik.learnswift.djano',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(16),
    coursesList: [],
    color1: Color(0xFF092E20),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Django te enseña este poderoso framework backend para Python, ideal para aplicaciones rápidas y escalables.\n\nVersión: Django 4.2',
  ),
  ProgrammingItem(
    id: 17,
    name: 'Spring',
    productID: 'com.mrrubik.learnswift.sprin',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(17),
    coursesList: [],
    color1: Color(0xFF6DB33F),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Spring es tu entrada al desarrollo empresarial con este framework para Java.\n\nVersión: Spring 6',
  ),
  ProgrammingItem(
    id: 18,
    name: 'Symfony',
    productID: 'com.mrrubik.learnswift.symfony',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(18),
    coursesList: [],
    color1: Color(0xFF000000),
    color2: Color(0xFF7289DA),
    isActive: false,
    description:
        'CodeCrafters: Symfony te enseña este framework PHP robusto y modular para aplicaciones empresariales.\n\nVersión: Symfony 6.3',
  ),
  ProgrammingItem(
    id: 19,
    name: 'Laravel',
    productID: 'com.mrrubik.learnswift.laravel',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(19),
    coursesList: [],
    color1: Color(0xFFFF2D20),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Laravel es tu herramienta para aprender este framework PHP conocido por su elegancia y simplicidad.\n\nVersión: Laravel 10',
  ),
  ProgrammingItem(
    id: 20,
    name: 'ASP.NET',
    productID: 'com.mrrubik.learnswift.asp',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(20),
    coursesList: [],
    color1: Color(0xFF512BD4),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: ASP.NET te introduce al desarrollo backend con este potente framework de Microsoft.\n\nVersión: ASP.NET 8',
  ),
  ProgrammingItem(
    id: 21,
    name: 'TensorFlow',
    productID: 'com.mrrubik.learnswift.tensorflow',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(21),
    coursesList: [],
    color1: Color(0xFFFF6F00),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: TensorFlow es tu guía para construir modelos de inteligencia artificial y aprendizaje automático.\n\nVersión: TensorFlow 2.13',
  ),
];
