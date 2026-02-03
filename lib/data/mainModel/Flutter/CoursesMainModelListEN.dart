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
import '../../courses/Flutter/flBasics/flBasicsExModelListEN.dart';
import '../../courses/Flutter/flState/flStateExModelListEN.dart';
import '../../courses/Flutter/flLayout/flLayoutExModelListEN.dart';
import '../../courses/Flutter/flStyle/flStyleExModelListEN.dart';
import '../../courses/Flutter/flLists/flListsExModelListEN.dart';
import '../../courses/Flutter/flNav/flNavExModelListEN.dart';
import '../../courses/Flutter/flForms/flFormsExModelListEN.dart';
import '../../courses/Flutter/flAsync/flAsyncExModelListEN.dart';
import '../../courses/Flutter/flRoute/flRouteExModelListEN.dart';
import '../../courses/Flutter/flAnim/flAnimExModelListEN.dart';
import '../../courses/Flutter/flTheme/flThemeExModelListEN.dart';
import '../../courses/Flutter/flAssets/flAssetsExModelListEN.dart';
import '../../courses/Flutter/flNet/flNetExModelListEN.dart';
import '../../courses/Flutter/flPersist/flPersistExModelListEN.dart';
import '../../courses/Flutter/flTesting/flTestingExModelListEN.dart';

List<CoursesMainModel> coursesFlutterMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Flutter Basics',
  catExercise: flBasicsModelEN,
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
  generalName: 'Stateless & Stateful',
  catExercise: flStateModelEN,
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
  generalName: 'Layout',
  catExercise: flLayoutModelEN,
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
  generalName: 'Styling',
  catExercise: flStyleModelEN,
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
  generalName: 'Lists',
  catExercise: flListsModelEN,
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
  generalName: 'Navigation',
  catExercise: flNavModelEN,
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
  generalName: 'Forms & Input',
  catExercise: flFormsModelEN,
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
  generalName: 'Async & State',
  catExercise: flAsyncModelEN,
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
  generalName: 'Navigation & Routing',
  catExercise: flRouteModelEN,
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
  generalName: 'Animations',
  catExercise: flAnimModelEN,
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
  generalName: 'Theming',
  catExercise: flThemeModelEN,
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
  generalName: 'Assets & Media',
  catExercise: flAssetsModelEN,
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
  generalName: 'Networking',
  catExercise: flNetModelEN,
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
  generalName: 'Persistence',
  catExercise: flPersistModelEN,
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
  generalName: 'Testing',
  catExercise: flTestingModelEN,
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
