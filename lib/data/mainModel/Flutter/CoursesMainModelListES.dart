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
import '../../courses/Flutter/flBasics/flBasicsExModelListES.dart';
import '../../courses/Flutter/flState/flStateExModelListES.dart';
import '../../courses/Flutter/flLayout/flLayoutExModelListES.dart';
import '../../courses/Flutter/flStyle/flStyleExModelListES.dart';
import '../../courses/Flutter/flLists/flListsExModelListES.dart';
import '../../courses/Flutter/flNav/flNavExModelListES.dart';
import '../../courses/Flutter/flForms/flFormsExModelListES.dart';
import '../../courses/Flutter/flAsync/flAsyncExModelListES.dart';
import '../../courses/Flutter/flRoute/flRouteExModelListES.dart';
import '../../courses/Flutter/flAnim/flAnimExModelListES.dart';
import '../../courses/Flutter/flTheme/flThemeExModelListES.dart';
import '../../courses/Flutter/flAssets/flAssetsExModelListES.dart';
import '../../courses/Flutter/flNet/flNetExModelListES.dart';
import '../../courses/Flutter/flPersist/flPersistExModelListES.dart';
import '../../courses/Flutter/flTesting/flTestingExModelListES.dart';

List<CoursesMainModel> coursesFlutterMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Flutter Básico',
  catExercise: flBasicsModelES,
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
  generalName: 'Stateless y Stateful',
  catExercise: flStateModelES,
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
  catExercise: flLayoutModelES,
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
  generalName: 'Estilos',
  catExercise: flStyleModelES,
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
  generalName: 'Listas',
  catExercise: flListsModelES,
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
  generalName: 'Navegación',
  catExercise: flNavModelES,
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
  generalName: 'Formularios e Input',
  catExercise: flFormsModelES,
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
  generalName: 'Async y Estado',
  catExercise: flAsyncModelES,
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
  generalName: 'Navegación y Rutas',
  catExercise: flRouteModelES,
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
  generalName: 'Animaciones',
  catExercise: flAnimModelES,
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
  generalName: 'Temas',
  catExercise: flThemeModelES,
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
  generalName: 'Assets y Media',
  catExercise: flAssetsModelES,
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
  catExercise: flNetModelES,
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
  generalName: 'Persistencia',
  catExercise: flPersistModelES,
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
  catExercise: flTestingModelES,
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
