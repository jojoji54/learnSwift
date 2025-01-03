import 'package:learnswift/Screens/Courses/swift/BooleanBasics/booleanBExMain.dart';
import 'package:learnswift/Screens/Courses/swift/LoopsBasics/loopsExMain.dart';
import 'package:learnswift/Screens/Courses/swift/SwitchStatements/switchStatementsExMain.dart';
import 'package:learnswift/Screens/Courses/swift/ifElse/ifElseExMain.dart';
import 'package:learnswift/Screens/Courses/swift/swiftBasics/swiftBasicExMain.dart';
import 'package:learnswift/data/courses/Swift/BooleanBasics/booleanBExModelListES.dart';
import 'package:learnswift/data/courses/Swift/ifElseBasics/ifElseExModelListES.dart';
import 'package:learnswift/data/courses/Swift/swichStatementsBasics/swichStatementsExModelListES.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListES.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

List<CoursesMainModel> coursesSwiftMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Conceptos Básicos',
    catExercise: sbModelES,
    description:
        'Introduce los fundamentos de Swift, incluyendo sintaxis, variables, constantes y operaciones básicas. Comprender estos conceptos es crucial ya que forman la base de toda la programación en Swift.',
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
        'Cubre la lógica booleana y su aplicación en la programación. Esencial para tomar decisiones en tu código mediante comparaciones y operaciones lógicas.',
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
        'Enseña cómo controlar el flujo del programa utilizando estructuras condicionales. Fundamental para implementar lógica en tus aplicaciones.',
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
        'Explica el uso de sentencias switch para manejar múltiples condiciones de manera eficiente. Ayuda a escribir un código más limpio y organizado en comparación con estructuras if-else anidadas.',
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
    catExercise: [],
    description:
        'Cubre el uso de bucles como for, while y repeat-while para realizar tareas repetitivas. Vital para reducir la redundancia y automatizar procesos en tu código.',
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
  /*  CoursesMainModel(
    id: 5,
    generalName: 'Arreglos',
    description: 'Explora los arreglos y su uso para almacenar colecciones de datos. Es clave para manejar múltiples elementos de manera organizada.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 6,
    generalName: 'Diccionarios',
    description: 'Se enfoca en los diccionarios para almacenar datos en pares clave-valor. Crucial para realizar búsquedas rápidas y organizar información.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 7,
    generalName: 'Conjuntos (Sets)',
    description: 'Explica los conjuntos y su uso para almacenar valores únicos. Importante para garantizar la unicidad de los datos y realizar operaciones con conjuntos.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 8,
    generalName: 'Funciones',
    description: 'Introduce las funciones para estructurar bloques reutilizables de código. Esencial para la programación modular y la organización del código.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 9,
    generalName: 'Opcionales',
    description: 'Enseña cómo manejar valores que pueden estar ausentes. Es clave para escribir un código seguro y resistente a errores en Swift.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 10,
    generalName: 'Clases y Estructuras',
    description: 'Explica el uso de clases y estructuras para organizar datos y comportamientos. Fundamental para la programación orientada a objetos en Swift.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 11,
    generalName: 'Enumeraciones',
    description: 'Se centra en las enumeraciones para definir grupos de valores relacionados. Útil para mejorar la legibilidad del código y manejar opciones fijas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 12,
    generalName: 'Protocolos y Delegación',
    description: 'Cubre los protocolos y el patrón de delegación para definir e implementar interfaces. Crucial para diseñar un código modular y extensible.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 13,
    generalName: 'Closures',
    description: 'Introduce los closures, una característica poderosa para pasar funcionalidades como argumentos. Esencial para escribir código conciso y flexible.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 14,
    generalName: 'Manejo de Errores',
    description: 'Explica cómo gestionar y manejar errores de manera adecuada en tu código. Vital para crear aplicaciones robustas y amigables para el usuario.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 15,
    generalName: 'Swift Avanzado',
    description: 'Explora temas avanzados en Swift, incluyendo genéricos, extensiones y concurrencia. Necesario para dominar el lenguaje y resolver problemas complejos.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 16,
    generalName: 'Gestión de Memoria',
    description: 'Cubre conceptos de gestión de memoria como ARC y fugas de memoria. Crucial para construir aplicaciones eficientes y optimizadas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 17,
    generalName: 'Trabajando con Archivos y Datos',
    description: 'Enseña cómo manejar archivos y manipular datos en Swift. Clave para crear aplicaciones que interactúen con el sistema de archivos y fuentes de datos externas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 18,
    generalName: 'Conceptos Básicos de UI (Bonus para Apps)',
    description: 'Introduce principios básicos de diseño de interfaces y componentes de SwiftUI. Esencial para crear aplicaciones interactivas y visualmente atractivas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ), */
];
