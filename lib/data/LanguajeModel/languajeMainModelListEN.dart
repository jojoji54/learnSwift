import 'dart:ui';

import 'package:learnswift/data/Hive/LenguajePurchaseManagerHive.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/mainModel/Python/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/Swift/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/CSharp/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/Kotlin/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/PHP/CoursesMainModelListEN.dart';
import 'package:learnswift/data/mainModel/Ruby/CoursesMainModelListEN.dart';

import '../mainModel/Cpp/CoursesMainModelListEN.dart';
import '../mainModel/Java/CoursesMainModelListEN.dart';
import '../mainModel/JavaScript/CoursesMainModelListEN.dart';

final languagePurchaseManagerHive = LanguagePurchaseManagerHive();
final List<ProgrammingItem> programmingItemsEN = [
  // Languages
  ProgrammingItem(
    id: 1,
    name: 'Swift',
    coursesList: coursesSwiftMainModelListEN,
    productID: 'com.mrrubik.learnswift.swift',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(1),
    color1: Color(0xFFFF5E57), // Bright red
    color2: Color(0xFFFFC371), // Warm yellow
    isActive: true,
    description:
        'CodeCrafters: Swift is designed to help users learn Swift, the powerful programming language used to create apps for Apple platforms. It includes interactive exercises to build a strong foundation in Swift programming.\n\nVersion: Swift 5.9',
  ),
  ProgrammingItem(
    id: 2,
    name: 'Python',
    productID: 'com.mrrubik.learnswift.python',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(2),
    coursesList: coursesPythonMainModelListEN,
    color1: Color(0xFF306998),
    color2: Color(0xFFFFD43B),
    isActive: true,
    description:
        'CodeCrafters: Python teaches you this versatile language used for artificial intelligence, data science, and web development. Learn through hands-on exercises for real-world applications.\n\nVersion: Python 3.12',
  ),
  ProgrammingItem(
    id: 3,
    name: 'JavaScript',
    productID: 'com.mrrubik.learnswift.javaScript',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(3),
    coursesList: coursesJavaScriptMainModelListEN,
    color1: Color.fromARGB(255, 205, 184, 27),
    color2: Color(0xFF000000),
    isActive: true,
    description:
        'CodeCrafters: JavaScript guides you to master the most popular language for web development, from frontend dynamics to full-stack applications.\n\nVersion: ECMAScript 2023',
  ),
  ProgrammingItem(
    id: 4,
    name: 'Java',
    productID: 'com.mrrubik.learnswift.java',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(4),
    coursesList: coursesJavaMainModelListEN,
    color1: Color(0xFF5382A1),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: Java teaches you one of the most popular languages for enterprise applications, mobile development, and robust systems.\n\nVersion: Java 20',
  ),
  ProgrammingItem(
    id: 5,
    name: 'C++',
    productID: 'com.mrrubik.learnswift.ccc',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(5),
    coursesList: coursesCppMainModelListEN,
    color1: Color(0xFF00599C),
    color2: Color(0xFF4D4D4D),
    isActive: true,
    description:
        'CodeCrafters: C++ helps you master this language used for high-performance systems, video games, and critical applications.\n\nVersion: C++20',
  ),
  ProgrammingItem(
    id: 6,
    name: 'C#',
    productID: 'com.mrrubik.learnswift.csharp',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(6),
    coursesList: coursesCSharpMainModelListEN,
    color1: Color(0xFF9B4F96),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: C# guides you in developing with this essential language for Windows applications, video games, and enterprise solutions.\n\nVersion: C# 12',
  ),
  ProgrammingItem(
    id: 7,
    name: 'Kotlin',
    productID: 'com.mrrubik.learnswift.kotlin',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(7),
    coursesList: coursesKotlinMainModelListEN,
    color1: Color(0xFF3D77BC),
    color2: Color(0xFFF88909),
    isActive: true,
    description:
        'CodeCrafters: Kotlin introduces you to modern Android development with this powerful and expressive language.\n\nVersion: Kotlin 1.9',
  ),
  ProgrammingItem(
    id: 8,
    name: 'PHP',
    productID: 'com.mrrubik.learnswift.php',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(8),
    coursesList: coursesPhpMainModelListEN,
    color1: Color(0xFF8892BF),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: PHP introduces you to one of the most widely used backend web development languages, ideal for scalable projects.\n\nVersion: PHP 8.3',
  ),
  ProgrammingItem(
    id: 9,
    name: 'Ruby',
    productID: 'com.mrrubik.learnswift.ruby',
    alreadyBuy: languagePurchaseManagerHive.getLanguagePurchasedFalse(9),
    coursesList: coursesRubyMainModelListEN,
    color1: Color(0xFFCC342D),
    color2: Color(0xFFFFFFFF),
    isActive: true,
    description:
        'CodeCrafters: Ruby teaches you this language known for its simplicity and elegance, widely used in web development and startups.\n\nVersion: Ruby 3.3',
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
        'CodeCrafters: Go helps you learn this efficient language, ideal for distributed and scalable systems.\n\nVersion: Go 1.21',
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
        'CodeCrafters: COBOL is your guide to this classic business-oriented language used in financial and government systems.\n\nVersion: COBOL 2023',
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
        'CodeCrafters: Flutter introduces you to cross-platform development with this powerful framework for mobile and web applications.\n\nVersion: Flutter 3.13',
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
        'CodeCrafters: React teaches you the most popular library for building dynamic and modern user interfaces.\n\nVersion: React 18',
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
        'CodeCrafters: Angular is your tool to master this robust framework for complex web applications.\n\nVersion: Angular 16',
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
        'CodeCrafters: Vue.js guides you in developing with this lightweight and progressive framework for web applications.\n\nVersion: Vue 3.3',
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
        'CodeCrafters: Django teaches you this powerful Python backend framework, ideal for fast and scalable applications.\n\nVersion: Django 4.2',
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
        'CodeCrafters: Spring introduces you to enterprise development with this framework for Java.\n\nVersion: Spring 6',
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
        'CodeCrafters: Symfony teaches you this robust and modular PHP framework for enterprise applications.\n\nVersion: Symfony 6.3',
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
        'CodeCrafters: Laravel helps you learn this PHP framework known for its elegance and simplicity.\n\nVersion: Laravel 10',
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
        'CodeCrafters: ASP.NET introduces you to backend development with this powerful Microsoft framework.\n\nVersion: ASP.NET 8',
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
        'CodeCrafters: TensorFlow is your guide to building artificial intelligence and machine learning models.\n\nVersion: TensorFlow 2.13',
  ),
];
