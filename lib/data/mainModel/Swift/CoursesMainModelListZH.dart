import 'package:learnswift/Screens/Courses/swift/BooleanBasics/booleanBExMain.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/loopsExMain.dart';
import 'package:learnswift/Screens/Courses/swift/SwiftArrays/arraysExMain.dart';
import 'package:learnswift/Screens/Courses/swift/SwitchStatements/switchStatementsExMain.dart';
import 'package:learnswift/Screens/Courses/swift/ifElse/ifElseExMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftBasics/swiftBasicExMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftDictionaries/switchDictonariesMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftFunctions/switchFunctionsMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftOptionals/switchOptionalsMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftSets/switchSetsMain.dart';

// ✅ Listas ZH
import 'package:learnswift/data/courses/Swift/ArraysBasics/arraysExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/BooleanBasics/booleanBExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/LoopsBasics/loopsExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/SwiftDictionaries/swiftDictionariesExModelZH.dart';
import 'package:learnswift/data/courses/Swift/ifElseBasics/ifElseExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/swichStatementsBasics/swichStatementsExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/data/courses/Swift/swiftFunctions/swiftFunctionsExModelZH.dart';
import 'package:learnswift/data/courses/Swift/swiftOptionals/swiftOptionalsExModelZH.dart';
import 'package:learnswift/data/courses/Swift/swiftSets/swiftSetsExModelZH.dart';

import 'package:learnswift/data/mainModel/coursesMainModel.dart';

List<CoursesMainModel> coursesSwiftMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'Swift 基础',
    catExercise: sbModelZH,
    description:
        '介绍 Swift 的基础知识，包括语法、变量、常量以及基本运算。理解这些概念非常重要，因为它们是所有 Swift 编程的基础。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwiftBasicExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 1,
    generalName: '布尔基础',
    catExercise: booleanBModelZH,
    description:
        '涵盖布尔逻辑及其在编程中的应用。通过比较与逻辑运算做决策，是写代码时必不可少的技能。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        BooleanBasicExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 2,
    generalName: 'If-Else',
    catExercise: ifElseModelZH,
    description:
        '学习条件分支，根据不同条件控制程序流程。这对在应用中实现逻辑判断非常关键。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        IfElseExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 3,
    generalName: 'Switch',
    catExercise: switchModelZH,
    description:
        '讲解如何使用 switch 语句高效处理多种条件。相比嵌套 if-else，它能让代码更整洁、更易维护。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwitchStatementsMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 4,
    generalName: '循环',
    catExercise: loopsModelCH,
    description:
        '涵盖 for、while、repeat-while 等循环，用于执行重复任务。对减少冗余、自动化操作非常重要。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        LoopsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 5,
    generalName: '数组',
    catExercise: swiftArraysModelZH,
    description:
        '探索数组及其在存储数据集合中的用法。适合用来有序管理多个元素。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ArraysExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 6,
    generalName: '字典',
    catExercise: swiftDictionariesExModelZH,
    description:
        '专注于使用字典以键值对形式存储数据。对快速查找与组织信息非常有用。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwitchDictonariesMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 7,
    generalName: '集合（Sets）',
    catExercise: swiftSetsExModelZH,
    description:
        '讲解集合（Set）及其用于存储唯一值的用法。对保证数据唯一性与执行集合运算很重要。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwitchSetsMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 8,
    generalName: '函数',
    catExercise: swiftFunctionsExModelZH,
    description:
        '介绍函数，用于组织可复用的代码块。对模块化编程与代码结构化非常关键。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwitchFunctionsMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  CoursesMainModel(
    id: 9,
    generalName: '可选值（Optionals）',
    catExercise: swiftOptionalsExModelZH,
    description:
        '学习如何处理可能不存在的值。是编写安全、抗错误 Swift 代码的关键能力。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        SwitchOptionalsMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  /*CoursesMainModel(
    id: 10,
    generalName: 'Classes and Structures',
    description: 'Explains the use of classes and structures to organize data and behavior. Fundamental for object-oriented programming in Swift.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 11,
    generalName: 'Enumerations',
    description: 'Focuses on enums for defining groups of related values. Useful for improving code readability and handling fixed options.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 12,
    generalName: 'Protocols and Delegation',
    description: 'Covers protocols and the delegation pattern for defining and implementing interfaces. Crucial for designing modular and extensible code.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 13,
    generalName: 'Closures',
    description: 'Introduces closures, a powerful feature for passing functionality as arguments. Essential for writing concise and flexible code.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 14,
    generalName: 'Error Handling',
    description: 'Explains how to manage and handle errors gracefully in your code. Vital for creating robust and user-friendly applications.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 15,
    generalName: 'Advanced Swift',
    description: 'Explores advanced topics in Swift, including generics, extensions, and concurrency. Necessary for mastering the language and tackling complex problems.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 16,
    generalName: 'Memory Management',
    description: 'Covers memory management concepts like ARC and memory leaks. Crucial for building efficient and resource-friendly apps.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 17,
    generalName: 'Working with Files and Data',
    description: 'Teaches file handling and data manipulation in Swift. Key for creating apps that interact with the filesystem and external data sources.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 18,
    generalName: 'UI Basics (Bonus para Apps)',
    description: 'Introduces basic UI design principles and SwiftUI components. Essential for creating interactive and visually appealing applications.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ), */
];
