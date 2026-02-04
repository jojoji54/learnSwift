import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/angularBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/angularTemplatesExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/angularComponentsExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularDataBinding/angularDataBindingExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/angularDirectivesExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/angularServicesExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/angularRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/angularFormsExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/angularHttpExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/angularRxjsExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/angularStateExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/angularPipesExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/angularTestingExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/angularPerformanceExMain.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/angularStylingExMain.dart';
import '../../courses/Angular/angularBasics/angularBasicsExModelListZH.dart';
import '../../courses/Angular/angularTemplates/angularTemplatesExModelListZH.dart';
import '../../courses/Angular/angularComponents/angularComponentsExModelListZH.dart';
import '../../courses/Angular/angularDataBinding/angularDataBindingExModelListZH.dart';
import '../../courses/Angular/angularDirectives/angularDirectivesExModelListZH.dart';
import '../../courses/Angular/angularServices/angularServicesExModelListZH.dart';
import '../../courses/Angular/angularRouting/angularRoutingExModelListZH.dart';
import '../../courses/Angular/angularForms/angularFormsExModelListZH.dart';
import '../../courses/Angular/angularHttp/angularHttpExModelListZH.dart';
import '../../courses/Angular/angularRxjs/angularRxjsExModelListZH.dart';
import '../../courses/Angular/angularState/angularStateExModelListZH.dart';
import '../../courses/Angular/angularPipes/angularPipesExModelListZH.dart';
import '../../courses/Angular/angularTesting/angularTestingExModelListZH.dart';
import '../../courses/Angular/angularPerformance/angularPerformanceExModelListZH.dart';
import '../../courses/Angular/angularStyling/angularStylingExModelListZH.dart';

List<CoursesMainModel> coursesAngularMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Angular 基础',
  catExercise: angularBasicsModelZH,
  description: "angularCat0InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularBasicsExMain(
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
  generalName: '模板',
  catExercise: angularTemplatesModelZH,
  description: "angularCat1InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularTemplatesExMain(
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
  generalName: '组件',
  catExercise: angularComponentsModelZH,
  description: "angularCat2InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularComponentsExMain(
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
  generalName: '数据绑定',
  catExercise: angularDataBindingModelZH,
  description: "angularCat3InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularDataBindingExMain(
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
  generalName: '指令',
  catExercise: angularDirectivesModelZH,
  description: "angularCat4InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularDirectivesExMain(
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
  generalName: '服务与依赖注入',
  catExercise: angularServicesModelZH,
  description: "angularCat5InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularServicesExMain(
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
  generalName: '路由',
  catExercise: angularRoutingModelZH,
  description: "angularCat6InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularRoutingExMain(
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
  generalName: '表单',
  catExercise: angularFormsModelZH,
  description: "angularCat7InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularFormsExMain(
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
  generalName: 'HTTP',
  catExercise: angularHttpModelZH,
  description: "angularCat8InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularHttpExMain(
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
  generalName: 'RxJS',
  catExercise: angularRxjsModelZH,
  description: "angularCat9InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularRxjsExMain(
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
  generalName: '状态',
  catExercise: angularStateModelZH,
  description: "angularCat10InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularStateExMain(
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
  generalName: '管道',
  catExercise: angularPipesModelZH,
  description: "angularCat11InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularPipesExMain(
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
  generalName: '测试',
  catExercise: angularTestingModelZH,
  description: "angularCat12InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularTestingExMain(
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
  generalName: '性能',
  catExercise: angularPerformanceModelZH,
  description: "angularCat13InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularPerformanceExMain(
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
  generalName: '样式',
  catExercise: angularStylingModelZH,
  description: "angularCat14InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AngularStylingExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
