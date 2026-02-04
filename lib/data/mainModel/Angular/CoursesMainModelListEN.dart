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
import '../../courses/Angular/angularBasics/angularBasicsExModelListEN.dart';
import '../../courses/Angular/angularTemplates/angularTemplatesExModelListEN.dart';
import '../../courses/Angular/angularComponents/angularComponentsExModelListEN.dart';
import '../../courses/Angular/angularDataBinding/angularDataBindingExModelListEN.dart';
import '../../courses/Angular/angularDirectives/angularDirectivesExModelListEN.dart';
import '../../courses/Angular/angularServices/angularServicesExModelListEN.dart';
import '../../courses/Angular/angularRouting/angularRoutingExModelListEN.dart';
import '../../courses/Angular/angularForms/angularFormsExModelListEN.dart';
import '../../courses/Angular/angularHttp/angularHttpExModelListEN.dart';
import '../../courses/Angular/angularRxjs/angularRxjsExModelListEN.dart';
import '../../courses/Angular/angularState/angularStateExModelListEN.dart';
import '../../courses/Angular/angularPipes/angularPipesExModelListEN.dart';
import '../../courses/Angular/angularTesting/angularTestingExModelListEN.dart';
import '../../courses/Angular/angularPerformance/angularPerformanceExModelListEN.dart';
import '../../courses/Angular/angularStyling/angularStylingExModelListEN.dart';

List<CoursesMainModel> coursesAngularMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Angular Basics',
  catExercise: angularBasicsModelEN,
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
  generalName: 'Templates',
  catExercise: angularTemplatesModelEN,
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
  generalName: 'Components',
  catExercise: angularComponentsModelEN,
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
  generalName: 'Data Binding',
  catExercise: angularDataBindingModelEN,
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
  generalName: 'Directives',
  catExercise: angularDirectivesModelEN,
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
  generalName: 'Services & DI',
  catExercise: angularServicesModelEN,
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
  generalName: 'Routing',
  catExercise: angularRoutingModelEN,
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
  generalName: 'Forms',
  catExercise: angularFormsModelEN,
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
  catExercise: angularHttpModelEN,
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
  catExercise: angularRxjsModelEN,
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
  generalName: 'State',
  catExercise: angularStateModelEN,
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
  generalName: 'Pipes',
  catExercise: angularPipesModelEN,
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
  generalName: 'Testing',
  catExercise: angularTestingModelEN,
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
  generalName: 'Performance',
  catExercise: angularPerformanceModelEN,
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
  generalName: 'Styling',
  catExercise: angularStylingModelEN,
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
