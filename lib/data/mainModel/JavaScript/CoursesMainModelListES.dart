import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/JavaScript/jsBasics/jsBasicExMain.dart';
import '../../../Screens/Courses/JavaScript/jsBoolean/jsBooleanExMain.dart';
import '../../../Screens/Courses/JavaScript/jsIfElse/jsIfElseExMain.dart';
import '../../../Screens/Courses/JavaScript/jsLoops/jsLoopsExMain.dart';
import '../../../Screens/Courses/JavaScript/jsSwitch/jsSwitchExMain.dart';
import '../../../Screens/Courses/JavaScript/jsArrays/jsArraysExMain.dart';
import '../../../Screens/Courses/JavaScript/jsObjects/jsObjectsExMain.dart';
import '../../../Screens/Courses/JavaScript/jsMapsAndSets/jsMapsAndSetsExMain.dart';
import '../../../Screens/Courses/JavaScript/jsFunctions/jsFunctionsExMain.dart';
import '../../../Screens/Courses/JavaScript/jsNullUndefined/jsNullUndefinedExMain.dart';
import '../../../Screens/Courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExMain.dart';
import '../../courses/JavaScript/jsBasics/jsBasicsExModelListES.dart';
import '../../courses/JavaScript/jsBoolean/jsBooleanExModelListES.dart';
import '../../courses/JavaScript/jsIfElse/jsIfElseExModelListES.dart';
import '../../courses/JavaScript/jsSwitch/jsSwitchExModelListES.dart';
import '../../courses/JavaScript/jsLoops/jsLoopsExModelListES.dart';
import '../../courses/JavaScript/jsArrays/jsArraysExModelListES.dart';
import '../../courses/JavaScript/jsObjects/jsObjectsExModelListES.dart';
import '../../courses/JavaScript/jsMapsAndSets/jsMapsAndSetsExModelListES.dart';
import '../../courses/JavaScript/jsFunctions/jsFunctionsExModelListES.dart';
import '../../courses/JavaScript/jsNullUndefined/jsNullUndefinedExModelListES.dart';
import '../../courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExModelListES.dart';

// ------------------------------------------------------------
// JavaScript – Categories (ES)
// Empezamos por 1 categoría. El resto queda comentado.
// ------------------------------------------------------------
List<CoursesMainModel> coursesJavaScriptMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Fundamentos de JS',
    catExercise: jsBasicsModelES,
    description:
        'Aprende los fundamentos de JavaScript: variables, tipos, operadores y entrada/salida sencilla. Es la base para todo lo demás.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsBasicsExMain(
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
    generalName: 'Booleanos básicos',
    catExercise: jsBooleanModelES,
    description:
        'Aprende lógica booleana, comparaciones y operadores lógicos. Clave para tomar decisiones en tu código.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsBooleanExMain(
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
    catExercise: jsIfElseModelES,
    description:
        'Aprende ramas condicionales con if, else if y else para controlar el flujo.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsIfElseExMain(
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
    catExercise: jsSwitchModelES,
    description:
        'Usa switch para manejar múltiples casos de forma clara y ordenada.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsSwitchExMain(
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
    catExercise: jsLoopsModelES,
    description:
        'Domina for, while, do while y patrones de iteración para automatizar tareas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsLoopsExMain(
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
    catExercise: jsArraysModelES,
    description:
        'Trabaja con arrays, índices y métodos como push, pop, map y filter.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsArraysExMain(
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
    generalName: 'Objetos',
    catExercise: jsObjectsModelES,
    description:
        'Aprende objetos, propiedades y métodos para modelar datos reales.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsObjectsExMain(
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
    generalName: 'Maps y Sets',
    catExercise: jsMapsAndSetsModelES,
    description:
        'Usa Set para valores únicos y Map para pares clave-valor.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsMapsAndSetsExMain(
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
    catExercise: jsFunctionsModelES,
    description:
        'Entiende funciones, parámetros, retorno y scope para reutilizar código.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsFunctionsExMain(
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
    generalName: 'Null y Undefined',
    catExercise: jsNullUndefinedModelES,
    description:
        'Aprende la diferencia entre null y undefined y evita errores comunes.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsNullUndefinedExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

  CoursesMainModel(
    id: 10,
    generalName: 'Promises y Async/Await',
    catExercise: jsPromisesAsyncModelES,
    description:
        'Maneja código async con Promises y async/await. Clave en apps modernas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JsPromisesAsyncExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
];
