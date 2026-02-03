import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExMain.dart';
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
import '../../courses/JavaScript/jsBasics/jsBasicsExModelListZH.dart';
import '../../courses/JavaScript/jsBoolean/jsBooleanExModelListZH.dart';
import '../../courses/JavaScript/jsIfElse/jsIfElseExModelListZH.dart';
import '../../courses/JavaScript/jsSwitch/jsSwitchExModelListZH.dart';
import '../../courses/JavaScript/jsLoops/jsLoopsExModelListZH.dart';
import '../../courses/JavaScript/jsArrays/jsArraysExModelListZH.dart';
import '../../courses/JavaScript/jsObjects/jsObjectsExModelListZH.dart';
import '../../courses/JavaScript/jsMapsAndSets/jsMapsAndSetsExModelListZH.dart';
import '../../courses/JavaScript/jsFunctions/jsFunctionsExModelListZH.dart';
import '../../courses/JavaScript/jsNullUndefined/jsNullUndefinedExModelListZH.dart';
import '../../courses/JavaScript/jsPromisesAsync/jsPromisesAsyncExModelListZH.dart';

// ------------------------------------------------------------
// JavaScript – Categories (ZH)
// 先从 1 个分类开始，其余先注释掉。
// ------------------------------------------------------------
List<CoursesMainModel> coursesJavaScriptMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'JavaScript 基础',
    catExercise: jsBasicsModelZH,
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
    generalName: '布尔基础',
    catExercise: jsBooleanModelZH,
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
    catExercise: jsIfElseModelZH,
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
    catExercise: jsSwitchModelZH,
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
    generalName: '循环',
    catExercise: jsLoopsModelZH,
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
    generalName: '数组',
    catExercise: jsArraysModelZH,
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
    generalName: '对象',
    catExercise: jsObjectsModelZH,
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
    generalName: 'Maps 与 Sets',
    catExercise: jsMapsAndSetsModelZH,
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
    generalName: '函数',
    catExercise: jsFunctionsModelZH,
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
    generalName: 'Null 与 Undefined',
    catExercise: jsNullUndefinedModelZH,
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
    generalName: 'Promise 与 Async/Await',
    catExercise: jsPromisesAsyncModelZH,
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