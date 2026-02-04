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
import '../../courses/Django/djangoBasics/djangoBasicsExModelListES.dart';
import '../../courses/Django/djangoSettings/djangoSettingsExModelListES.dart';
import '../../courses/Django/djangoUrls/djangoUrlsExModelListES.dart';
import '../../courses/Django/djangoTemplates/djangoTemplatesExModelListES.dart';
import '../../courses/Django/djangoStatic/djangoStaticExModelListES.dart';
import '../../courses/Django/djangoModels/djangoModelsExModelListES.dart';
import '../../courses/Django/djangoOrm/djangoOrmExModelListES.dart';
import '../../courses/Django/djangoMigrations/djangoMigrationsExModelListES.dart';
import '../../courses/Django/djangoAdmin/djangoAdminExModelListES.dart';
import '../../courses/Django/djangoForms/djangoFormsExModelListES.dart';
import '../../courses/Django/djangoAuth/djangoAuthExModelListES.dart';
import '../../courses/Django/djangoCBV/djangoCBVExModelListES.dart';
import '../../courses/Django/djangoMiddleware/djangoMiddlewareExModelListES.dart';
import '../../courses/Django/djangoTesting/djangoTestingExModelListES.dart';
import '../../courses/Django/djangoDeploy/djangoDeployExModelListES.dart';

List<CoursesMainModel> coursesDjangoMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos Django',
  catExercise: djangoBasicsModelES,
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
  generalName: 'Settings y Apps',
  catExercise: djangoSettingsModelES,
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
  catExercise: djangoUrlsModelES,
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
  generalName: 'Plantillas',
  catExercise: djangoTemplatesModelES,
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
  generalName: 'Static y Media',
  catExercise: djangoStaticModelES,
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
  generalName: 'Modelos',
  catExercise: djangoModelsModelES,
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
  generalName: 'ORM y QuerySets',
  catExercise: djangoOrmModelES,
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
  generalName: 'Migraciones',
  catExercise: djangoMigrationsModelES,
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
  catExercise: djangoAdminModelES,
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
  generalName: 'Formularios',
  catExercise: djangoFormsModelES,
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
  generalName: 'Autenticacion',
  catExercise: djangoAuthModelES,
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
  generalName: 'Vistas basadas en clases',
  catExercise: djangoCBVModelES,
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
  generalName: 'Middleware y Seguridad',
  catExercise: djangoMiddlewareModelES,
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
  generalName: 'Pruebas',
  catExercise: djangoTestingModelES,
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
  generalName: 'Deploy y Rendimiento',
  catExercise: djangoDeployModelES,
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
