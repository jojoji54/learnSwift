import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/djangoBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/djangoSettingsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/djangoUrlsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/djangoTemplatesExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/djangoStaticExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/djangoModelsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/djangoOrmExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/djangoMigrationsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/djangoAdminExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/djangoFormsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/djangoAuthExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/djangoCBVExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/djangoMiddlewareExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/djangoTestingExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/djangoDeployExMain.dart';
import '../../courses/Django/djangoBasics/djangoBasicsExModelListEN.dart';
import '../../courses/Django/djangoSettings/djangoSettingsExModelListEN.dart';
import '../../courses/Django/djangoUrls/djangoUrlsExModelListEN.dart';
import '../../courses/Django/djangoTemplates/djangoTemplatesExModelListEN.dart';
import '../../courses/Django/djangoStatic/djangoStaticExModelListEN.dart';
import '../../courses/Django/djangoModels/djangoModelsExModelListEN.dart';
import '../../courses/Django/djangoOrm/djangoOrmExModelListEN.dart';
import '../../courses/Django/djangoMigrations/djangoMigrationsExModelListEN.dart';
import '../../courses/Django/djangoAdmin/djangoAdminExModelListEN.dart';
import '../../courses/Django/djangoForms/djangoFormsExModelListEN.dart';
import '../../courses/Django/djangoAuth/djangoAuthExModelListEN.dart';
import '../../courses/Django/djangoCBV/djangoCBVExModelListEN.dart';
import '../../courses/Django/djangoMiddleware/djangoMiddlewareExModelListEN.dart';
import '../../courses/Django/djangoTesting/djangoTestingExModelListEN.dart';
import '../../courses/Django/djangoDeploy/djangoDeployExModelListEN.dart';

List<CoursesMainModel> coursesDjangoMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Django Fundamentals',
  catExercise: djangoBasicsModelEN,
  description: "djangoCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoBasicsExMain(
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
  generalName: 'Settings & Apps',
  catExercise: djangoSettingsModelEN,
  description: "djangoCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoSettingsExMain(
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
  generalName: 'URLs & Views',
  catExercise: djangoUrlsModelEN,
  description: "djangoCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoUrlsExMain(
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
  generalName: 'Templates',
  catExercise: djangoTemplatesModelEN,
  description: "djangoCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoTemplatesExMain(
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
  generalName: 'Static & Media',
  catExercise: djangoStaticModelEN,
  description: "djangoCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoStaticExMain(
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
  generalName: 'Models',
  catExercise: djangoModelsModelEN,
  description: "djangoCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoModelsExMain(
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
  generalName: 'ORM & QuerySets',
  catExercise: djangoOrmModelEN,
  description: "djangoCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoOrmExMain(
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
  generalName: 'Migrations',
  catExercise: djangoMigrationsModelEN,
  description: "djangoCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoMigrationsExMain(
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
  generalName: 'Admin',
  catExercise: djangoAdminModelEN,
  description: "djangoCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoAdminExMain(
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
  generalName: 'Forms',
  catExercise: djangoFormsModelEN,
  description: "djangoCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoFormsExMain(
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
  generalName: 'Authentication',
  catExercise: djangoAuthModelEN,
  description: "djangoCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoAuthExMain(
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
  generalName: 'Class-Based Views',
  catExercise: djangoCBVModelEN,
  description: "djangoCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoCBVExMain(
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
  generalName: 'Middleware & Security',
  catExercise: djangoMiddlewareModelEN,
  description: "djangoCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoMiddlewareExMain(
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
  generalName: 'Testing',
  catExercise: djangoTestingModelEN,
  description: "djangoCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoTestingExMain(
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
  generalName: 'Deploy & Performance',
  catExercise: djangoDeployModelEN,
  description: "djangoCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoDeployExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
