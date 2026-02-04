import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBasics/laravelBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/laravelRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/laravelControllersExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/laravelBladeExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/laravelMigrationsExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/laravelEloquentExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/laravelRelationsExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/laravelValidationExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/laravelMiddlewareExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/laravelApiExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/laravelStorageExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/laravelQueuesExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/laravelEventsExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/laravelTestingExMain.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/laravelDeployExMain.dart';
import '../../courses/Laravel/laravelBasics/laravelBasicsExModelListES.dart';
import '../../courses/Laravel/laravelRouting/laravelRoutingExModelListES.dart';
import '../../courses/Laravel/laravelControllers/laravelControllersExModelListES.dart';
import '../../courses/Laravel/laravelBlade/laravelBladeExModelListES.dart';
import '../../courses/Laravel/laravelMigrations/laravelMigrationsExModelListES.dart';
import '../../courses/Laravel/laravelEloquent/laravelEloquentExModelListES.dart';
import '../../courses/Laravel/laravelRelations/laravelRelationsExModelListES.dart';
import '../../courses/Laravel/laravelValidation/laravelValidationExModelListES.dart';
import '../../courses/Laravel/laravelMiddleware/laravelMiddlewareExModelListES.dart';
import '../../courses/Laravel/laravelApi/laravelApiExModelListES.dart';
import '../../courses/Laravel/laravelStorage/laravelStorageExModelListES.dart';
import '../../courses/Laravel/laravelQueues/laravelQueuesExModelListES.dart';
import '../../courses/Laravel/laravelEvents/laravelEventsExModelListES.dart';
import '../../courses/Laravel/laravelTesting/laravelTestingExModelListES.dart';
import '../../courses/Laravel/laravelDeploy/laravelDeployExModelListES.dart';

List<CoursesMainModel> coursesLaravelMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos Laravel',
  catExercise: laravelBasicsModelES,
  description: "laravelCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelBasicsExMain(
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
  generalName: 'Rutas',
  catExercise: laravelRoutingModelES,
  description: "laravelCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelRoutingExMain(
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
  generalName: 'Controladores',
  catExercise: laravelControllersModelES,
  description: "laravelCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelControllersExMain(
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
  generalName: 'Blade',
  catExercise: laravelBladeModelES,
  description: "laravelCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelBladeExMain(
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
  generalName: 'Migraciones',
  catExercise: laravelMigrationsModelES,
  description: "laravelCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelMigrationsExMain(
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
  generalName: 'Eloquent Basico',
  catExercise: laravelEloquentModelES,
  description: "laravelCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelEloquentExMain(
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
  generalName: 'Relaciones',
  catExercise: laravelRelationsModelES,
  description: "laravelCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelRelationsExMain(
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
  generalName: 'Validacion',
  catExercise: laravelValidationModelES,
  description: "laravelCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelValidationExMain(
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
  generalName: 'Middleware y Auth',
  catExercise: laravelMiddlewareModelES,
  description: "laravelCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelMiddlewareExMain(
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
  generalName: 'Recursos API',
  catExercise: laravelApiModelES,
  description: "laravelCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelApiExMain(
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
  generalName: 'Storage',
  catExercise: laravelStorageModelES,
  description: "laravelCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelStorageExMain(
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
  generalName: 'Colas',
  catExercise: laravelQueuesModelES,
  description: "laravelCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelQueuesExMain(
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
  generalName: 'Eventos y Notificaciones',
  catExercise: laravelEventsModelES,
  description: "laravelCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelEventsExMain(
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
  catExercise: laravelTestingModelES,
  description: "laravelCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelTestingExMain(
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
  catExercise: laravelDeployModelES,
  description: "laravelCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      LaravelDeployExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
