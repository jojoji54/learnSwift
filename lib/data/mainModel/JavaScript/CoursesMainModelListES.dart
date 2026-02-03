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
    description: "jsCat0InfoContent",
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
    description: "jsCat1InfoContent",
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
    description: "jsCat2InfoContent",
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
    description: "jsCat3InfoContent",
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
    description: "jsCat4InfoContent",
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
    description: "jsCat5InfoContent",
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
    description: "jsCat6InfoContent",
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
    description: "jsCat7InfoContent",
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
    description: "jsCat8InfoContent",
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
    description: "jsCat9InfoContent",
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
    description: "jsCat10InfoContent",
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