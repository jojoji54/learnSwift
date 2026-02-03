import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/flBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/flStateExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/flLayoutExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/flStyleExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/flListsExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/flNavExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/flFormsExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/flAsyncExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/flRouteExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/flAnimExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/flThemeExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/flAssetsExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/flNetExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/flPersistExMain.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/flTestingExMain.dart';
import '../../courses/Flutter/flBasics/flBasicsExModelListZH.dart';
import '../../courses/Flutter/flState/flStateExModelListZH.dart';
import '../../courses/Flutter/flLayout/flLayoutExModelListZH.dart';
import '../../courses/Flutter/flStyle/flStyleExModelListZH.dart';
import '../../courses/Flutter/flLists/flListsExModelListZH.dart';
import '../../courses/Flutter/flNav/flNavExModelListZH.dart';
import '../../courses/Flutter/flForms/flFormsExModelListZH.dart';
import '../../courses/Flutter/flAsync/flAsyncExModelListZH.dart';
import '../../courses/Flutter/flRoute/flRouteExModelListZH.dart';
import '../../courses/Flutter/flAnim/flAnimExModelListZH.dart';
import '../../courses/Flutter/flTheme/flThemeExModelListZH.dart';
import '../../courses/Flutter/flAssets/flAssetsExModelListZH.dart';
import '../../courses/Flutter/flNet/flNetExModelListZH.dart';
import '../../courses/Flutter/flPersist/flPersistExModelListZH.dart';
import '../../courses/Flutter/flTesting/flTestingExModelListZH.dart';

List<CoursesMainModel> coursesFlutterMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Flutter 基础',
  catExercise: flBasicsModelZH,
  description: "flutterCat0InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlBasicsExMain(
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
  generalName: '无状态与有状态',
  catExercise: flStateModelZH,
  description: "flutterCat1InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlStateExMain(
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
  generalName: '布局',
  catExercise: flLayoutModelZH,
  description: "flutterCat2InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlLayoutExMain(
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
  generalName: '样式',
  catExercise: flStyleModelZH,
  description: "flutterCat3InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlStyleExMain(
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
  generalName: '列表',
  catExercise: flListsModelZH,
  description: "flutterCat4InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlListsExMain(
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
  generalName: '导航',
  catExercise: flNavModelZH,
  description: "flutterCat5InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlNavExMain(
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
  generalName: '表单与输入',
  catExercise: flFormsModelZH,
  description: "flutterCat6InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlFormsExMain(
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
  generalName: '异步与状态',
  catExercise: flAsyncModelZH,
  description: "flutterCat7InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlAsyncExMain(
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
  generalName: '导航与路由',
  catExercise: flRouteModelZH,
  description: "flutterCat8InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlRouteExMain(
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
  generalName: '动画',
  catExercise: flAnimModelZH,
  description: "flutterCat9InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlAnimExMain(
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
  generalName: '主题',
  catExercise: flThemeModelZH,
  description: "flutterCat10InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlThemeExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
CoursesMainModel(
  id: 11,
  generalName: '资源与媒体',
  catExercise: flAssetsModelZH,
  description: "flutterCat11InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlAssetsExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
CoursesMainModel(
  id: 12,
  generalName: '网络',
  catExercise: flNetModelZH,
  description: "flutterCat12InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlNetExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
CoursesMainModel(
  id: 13,
  generalName: '持久化',
  catExercise: flPersistModelZH,
  description: "flutterCat13InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlPersistExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
CoursesMainModel(
  id: 14,
  generalName: '测试',
  catExercise: flTestingModelZH,
  description: "flutterCat14InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      FlTestingExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
