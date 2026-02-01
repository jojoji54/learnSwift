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

// ✅ Listas ES
import 'package:learnswift/data/courses/Swift/ArraysBasics/arraysExModelListES.dart';
import 'package:learnswift/data/courses/Swift/BooleanBasics/booleanBExModelListES.dart';
import 'package:learnswift/data/courses/Swift/LoopsBasics/loopsExModelListES.dart';
import 'package:learnswift/data/courses/Swift/SwiftDictionaries/swiftDictionariesExModelES.dart';
import 'package:learnswift/data/courses/Swift/ifElseBasics/ifElseExModelListES.dart';
import 'package:learnswift/data/courses/Swift/swichStatementsBasics/swichStatementsExModelListES.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListES.dart';
import 'package:learnswift/data/courses/Swift/swiftFunctions/swiftFunctionsExModelES.dart';
import 'package:learnswift/data/courses/Swift/swiftOptionals/swiftOptionalsExModelES.dart';
import 'package:learnswift/data/courses/Swift/swiftSets/swiftSetsExModelES.dart';

import 'package:learnswift/data/mainModel/coursesMainModel.dart';

List<CoursesMainModel> coursesSwiftMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Conceptos Básicos',
    catExercise: sbModelES,
    description:
        'Introduce los fundamentos de Swift, incluyendo sintaxis, variables, constantes y operaciones básicas. Entender estos conceptos es clave porque son la base de todo lo que harás en Swift.',
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
    generalName: 'Booleanos',
    catExercise: booleanBModelES,
    description:
        'Cubre la lógica booleana y su uso en programación. Es esencial para tomar decisiones con comparaciones y operadores lógicos.',
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
    catExercise: ifElseModelES,
    description:
        'Aprende a ramificar condiciones para controlar el flujo del programa. Fundamental para implementar lógica en tus aplicaciones.',
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
    catExercise: switchModelES,
    description:
        'Explica cómo usar sentencias switch para manejar múltiples casos de forma eficiente. Te ayuda a escribir código más limpio que con muchos if-else anidados.',
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
    generalName: 'Bucles',
    catExercise: loopsModelES,
    description:
        'Cubre el uso de bucles como for, while y repeat-while para tareas repetitivas. Vital para reducir redundancia y automatizar procesos.',
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
    generalName: 'Arreglos',
    catExercise: swiftArraysModelES,
    description:
        'Explora los arreglos (arrays) y su uso para almacenar colecciones de datos. Clave para manejar muchos elementos de forma ordenada.',
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
    generalName: 'Diccionarios',
    catExercise: swiftDictionariesExModelES,
    description:
        'Se centra en diccionarios para almacenar datos en pares clave-valor. Muy útil para búsquedas rápidas y organizar información.',
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
    generalName: 'Conjuntos (Sets)',
    catExercise: swiftSetsExModelES,
    description:
        'Explica los sets y su uso para guardar valores únicos. Importante para asegurar unicidad y hacer operaciones de conjuntos.',
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
    generalName: 'Funciones',
    catExercise: swiftFunctionsExModelES,
    description:
        'Introduce funciones para estructurar bloques reutilizables. Esencial para programación modular y código bien organizado.',
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
    generalName: 'Opcionales',
    catExercise: swiftOptionalsExModelES,
    description:
        'Aprende a manejar valores que pueden no existir (nil). Clave para escribir código seguro y evitar errores inesperados.',
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
];
