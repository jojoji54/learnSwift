

import 'package:learnswift/Screens/Courses/JavaScript/jsBasics/jsBasicExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/jsBooleanExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/jsIfElseExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/jsLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsSwitch/jsSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/jsArraysExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/jsObjectsExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/jsMapsAndSetsExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/jsFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/jsNullUndefinedExMain.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExMain.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../courses/JavaScript/jsBasics/jsBasicsExModelListEN.dart';
import '../../courses/JavaScript/jsBoolean/jsBooleanExModelListEN.dart';
import '../../courses/JavaScript/jsIfElse/jsIfElseExModelListEN.dart';
import '../../courses/JavaScript/jsSwitch/jsSwitchExModelListEN.dart';
import '../../courses/JavaScript/jsLoops/jsLoopsExModelListEN.dart';
import '../../courses/JavaScript/jsArrays/jsArraysExModelListEN.dart';
import '../../courses/JavaScript/jsObjects/jsObjectsExModelListEN.dart';
import '../../courses/JavaScript/jsMapsAndSets/jsMapsAndSetsExModelListEN.dart';
import '../../courses/JavaScript/jsFunctions/jsFunctionsExModelListEN.dart';
import '../../courses/JavaScript/jsNullUndefined/jsNullUndefinedExModelListEN.dart';
import '../../courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExModelListEN.dart';

// ------------------------------------------------------------
// JavaScript – Categories (EN)
// Empezamos por 1 categoría. El resto queda comentado.
// ------------------------------------------------------------
List<CoursesMainModel> coursesJavaScriptMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'JavaScript Basics',
    catExercise: jsBasicsModelEN,
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
    generalName: 'Boolean Basics',
    catExercise: jsBooleanModelEN,
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
    catExercise: jsIfElseModelEN,
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
    catExercise: jsSwitchModelEN,
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
    generalName: 'Loops',
    catExercise: jsLoopsModelEN,
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
    catExercise: jsArraysModelEN,
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
    generalName: 'Objects',
    catExercise: jsObjectsModelEN,
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
    generalName: 'Maps & Sets',
    catExercise: jsMapsAndSetsModelEN,
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
    generalName: 'Functions',
    catExercise: jsFunctionsModelEN,
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
    generalName: 'Null & Undefined',
    catExercise: jsNullUndefinedModelEN,
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
    generalName: 'Promises & Async/Await',
    catExercise: jsPromisesAsyncModelEN,
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