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
    description:
        '学习 JavaScript 的基础：变量、类型、运算符，以及简单的输入/输出。这是后续所有内容的基础。',
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
    description:
        '学习布尔逻辑、比较和逻辑运算符，是代码分支判断的关键基础。',
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
    description:
        '学习 if、else if 和 else 的条件分支来控制流程。',
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
    description:
        '使用 switch 来处理多个情况，代码更清晰。',
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
    description:
        '掌握 for、while、do while 等循环来自动化重复任务。',
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
    description:
        '学习数组、索引以及 push、pop、map、filter 等常用方法。',
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
    description:
        '学习对象、属性和方法，用键值对建模真实数据。',
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
    description:
        '使用 Set 保存唯一值，用 Map 做高效键值存储。',
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
    description:
        '理解函数、参数、返回值和作用域，编写可复用代码。',
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
    description:
        '了解 null 与 undefined 的区别，避免常见错误。',
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
    description:
        '用 Promises 和 async/await 处理异步代码，现代 JS 必备。',
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
