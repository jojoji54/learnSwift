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
import '../../courses/Angular/angularBasics/angularBasicsExModelListES.dart';
import '../../courses/Angular/angularTemplates/angularTemplatesExModelListES.dart';
import '../../courses/Angular/angularComponents/angularComponentsExModelListES.dart';
import '../../courses/Angular/angularDataBinding/angularDataBindingExModelListES.dart';
import '../../courses/Angular/angularDirectives/angularDirectivesExModelListES.dart';
import '../../courses/Angular/angularServices/angularServicesExModelListES.dart';
import '../../courses/Angular/angularRouting/angularRoutingExModelListES.dart';
import '../../courses/Angular/angularForms/angularFormsExModelListES.dart';
import '../../courses/Angular/angularHttp/angularHttpExModelListES.dart';
import '../../courses/Angular/angularRxjs/angularRxjsExModelListES.dart';
import '../../courses/Angular/angularState/angularStateExModelListES.dart';
import '../../courses/Angular/angularPipes/angularPipesExModelListES.dart';
import '../../courses/Angular/angularTesting/angularTestingExModelListES.dart';
import '../../courses/Angular/angularPerformance/angularPerformanceExModelListES.dart';
import '../../courses/Angular/angularStyling/angularStylingExModelListES.dart';

List<CoursesMainModel> coursesAngularMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Angular Básico',
  catExercise: angularBasicsModelES,
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
  generalName: 'Plantillas',
  catExercise: angularTemplatesModelES,
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
  generalName: 'Componentes',
  catExercise: angularComponentsModelES,
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
  catExercise: angularDataBindingModelES,
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
  generalName: 'Directivas',
  catExercise: angularDirectivesModelES,
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
  generalName: 'Servicios y DI',
  catExercise: angularServicesModelES,
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
  generalName: 'Rutas',
  catExercise: angularRoutingModelES,
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
  generalName: 'Formularios',
  catExercise: angularFormsModelES,
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
  catExercise: angularHttpModelES,
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
  catExercise: angularRxjsModelES,
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
  generalName: 'Estado',
  catExercise: angularStateModelES,
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
  catExercise: angularPipesModelES,
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
  catExercise: angularTestingModelES,
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
  generalName: 'Rendimiento',
  catExercise: angularPerformanceModelES,
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
  generalName: 'Estilos',
  catExercise: angularStylingModelES,
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
