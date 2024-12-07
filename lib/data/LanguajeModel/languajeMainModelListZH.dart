import 'dart:ui';

import 'package:learnswift/data/Hive/LenguajePurchaseManagerHive.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/mainModel/CoursesMainModelListZH.dart';

final languagePurchaseManagerHive = LanguagePurchaseManagerHive();
final List<ProgrammingItem> programmingItemsZH = [
  // 编程语言
  ProgrammingItem(
    id: 1,
    name: 'Swift',
    coursesList: coursesSwiftMainModelListZH,
    productID: 'com.mrrubik.learnswift.swift',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(1),
    color1: Color(0xFFFF5E57), // 明亮的红色
    color2: Color(0xFFFFC371), // 温暖的黄色
    isActive: true,
    description:
        'CodeCrafters: Swift 是一款旨在帮助用户学习 Swift 的应用程序，这是一种用于在 Apple 平台上开发应用程序的强大编程语言。包含互动练习，帮助构建 Swift 的扎实基础。\n\n版本: Swift 5.9',
  ),
  ProgrammingItem(
    id: 2,
    name: 'Python',
    productID: 'com.mrrubik.learnswift.python',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(2),
    coursesList: [],
    color1: Color(0xFF306998),
    color2: Color(0xFFFFD43B),
    isActive: false,
    description:
        'CodeCrafters: Python 教授这种多功能语言，可用于人工智能、数据科学和网页开发。通过实际练习学习真实应用程序。\n\n版本: Python 3.12',
  ),
  ProgrammingItem(
    id: 3,
    name: 'JavaScript',
    productID: 'com.mrrubik.learnswift.javaScript',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(3),
    coursesList: [],
    color1: Color.fromARGB(255, 205, 184, 27),
    color2: Color(0xFF000000),
    isActive: false,
    description:
        'CodeCrafters: JavaScript 是您掌握最广泛用于网页开发的语言的指南，从前端动态效果到完整应用程序。\n\n版本: ECMAScript 2023',
  ),
  ProgrammingItem(
    id: 4,
    name: 'Java',
    productID: 'com.mrrubik.learnswift.java',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(4),
    coursesList: [],
    color1: Color(0xFF5382A1),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: Java 教授这一流行的语言，用于企业应用程序、移动应用和稳健系统。\n\n版本: Java 20',
  ),
  ProgrammingItem(
    id: 5,
    name: 'C++',
    productID: 'com.mrrubik.learnswift.ccc',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(5),
    coursesList: [],
    color1: Color(0xFF00599C),
    color2: Color(0xFF4D4D4D),
    isActive: false,
    description: 'CodeCrafters: C++ 帮助您掌握用于高性能系统、电子游戏和关键应用的语言。\n\n版本: C++20',
  ),
  ProgrammingItem(
    id: 6,
    name: 'C#',
    productID: 'com.mrrubik.learnswift.csharp',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(6),
    coursesList: [],
    color1: Color(0xFF9B4F96),
    color2: Color(0xFFFFFFFF),
    isActive: false,
    description:
        'CodeCrafters: C# 指导您使用此语言进行 Windows 应用程序、电子游戏和企业解决方案开发。\n\n版本: C# 12',
  ),
  ProgrammingItem(
    id: 7,
    name: 'Kotlin',
    productID: 'com.mrrubik.learnswift.kotlin',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(7),
    coursesList: [],
    color1: Color(0xFF3D77BC),
    color2: Color(0xFFF88909),
    isActive: false,
    description:
        'CodeCrafters: Kotlin 是您进入现代 Android 开发的入门语言，功能强大且表达能力丰富。\n\n版本: Kotlin 1.9',
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
        'CodeCrafters: PHP 介绍这一在后端网页开发中广泛使用的语言，非常适合扩展项目。\n\n版本: PHP 8.3',
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
        'CodeCrafters: Ruby 教授这种以其简单和优雅著称的语言，用于网页开发和初创公司。\n\n版本: Ruby 3.3',
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
        'CodeCrafters: Go 是用于学习这一高效语言的工具，非常适合分布式和可扩展系统。\n\n版本: Go 1.21',
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
        'CodeCrafters: COBOL 是学习这一经典企业语言的指南，用于金融和政府系统。\n\n版本: COBOL 2023',
  ),

  // 框架
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
        'CodeCrafters: Flutter 介绍这一强大的跨平台框架，用于开发移动和网页应用程序。\n\n版本: Flutter 3.13',
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
    description: 'CodeCrafters: React 教授最流行的库，用于构建动态现代的用户界面。\n\n版本: React 18',
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
        'CodeCrafters: Angular 是用于掌握这一强大框架以开发复杂网页应用的工具。\n\n版本: Angular 16',
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
    description: 'CodeCrafters: Vue.js 指导您使用这一轻量级渐进框架进行网页开发。\n\n版本: Vue 3.3',
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
        'CodeCrafters: Django 教授这一强大的 Python 后端框架，非常适合快速和可扩展的应用程序。\n\n版本: Django 4.2',
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
    description: 'CodeCrafters: Spring 是用于学习 Java 企业开发的工具。\n\n版本: Spring 6',
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
        'CodeCrafters: Symfony 教授这一强大、模块化的 PHP 框架，用于企业级应用程序。\n\n版本: Symfony 6.3',
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
        'CodeCrafters: Laravel 是学习这一以优雅和简单著称的 PHP 框架的工具。\n\n版本: Laravel 10',
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
    description: 'CodeCrafters: ASP.NET 介绍这一由微软开发的强大后端框架。\n\n版本: ASP.NET 8',
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
        'CodeCrafters: TensorFlow 是构建人工智能和机器学习模型的指南。\n\n版本: TensorFlow 2.13',
  ),
];
