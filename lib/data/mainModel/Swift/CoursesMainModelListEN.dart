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
import 'package:learnswift/data/courses/Swift/ArraysBasics/arraysExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/BooleanBasics/booleanBExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/LoopsBasics/loopsExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/SwiftDictionaries/swiftDictionariesExModelEN.dart';
import 'package:learnswift/data/courses/Swift/ifElseBasics/ifElseExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swichStatementsBasics/swichStatementsExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swiftFunctions/swiftFunctionsExModelEN.dart';
import 'package:learnswift/data/courses/Swift/swiftOptionals/swiftOptionalsExModelEN.dart';
import 'package:learnswift/data/courses/Swift/swiftSets/swiftSetsExModelEN.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

List<CoursesMainModel> coursesSwiftMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'Swift Basics',
    catExercise: sbModelEN,
    description: "swiftCat0InfoContent",
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
    generalName: 'Boolean Basics',
    catExercise: booleanBModelEN,
    description: "swiftCat1InfoContent",
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
    catExercise: ifElseModelEN,
    description: "swiftCat2InfoContent",
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
    catExercise: switchModelEN,
    description: "swiftCat3InfoContent",
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
    generalName: 'Loops',
    catExercise: loopsModelEN,
    description: "swiftCat4InfoContent",
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
    generalName: 'Arrays',
    catExercise: swiftArraysModelEN,
    description: "swiftCat5InfoContent",
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
    generalName: 'Dictionaries',
    catExercise: swiftDictionariesExModelEN,
    description: "swiftCat6InfoContent",
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
    generalName: 'Sets',
    catExercise: swiftSetsExModelEN,
    description: "swiftCat7InfoContent",
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
    generalName: 'Functions',
    catExercise: swiftFunctionsExModelEN,
    description: "swiftCat8InfoContent",
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
    generalName: 'Optionals',
    catExercise: swiftOptionalsExModelEN,
    description: "swiftCat9InfoContent",
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
    description: "swiftCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 11,
    generalName: 'Enumerations',
    description: "swiftCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 12,
    generalName: 'Protocols and Delegation',
    description: "swiftCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 13,
    generalName: 'Closures',
    description: "swiftCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 14,
    generalName: 'Error Handling',
    description: "swiftCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 15,
    generalName: 'Advanced Swift',
    description: "swiftCat15InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 16,
    generalName: 'Memory Management',
    description: "swiftCat16InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 17,
    generalName: 'Working with Files and Data',
    description: "swiftCat17InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 18,
    generalName: 'UI Basics (Bonus para Apps)',
    description: "swiftCat18InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ), */
];