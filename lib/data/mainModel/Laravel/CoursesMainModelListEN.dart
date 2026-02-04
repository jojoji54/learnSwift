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
import '../../courses/Laravel/laravelBasics/laravelBasicsExModelListEN.dart';
import '../../courses/Laravel/laravelRouting/laravelRoutingExModelListEN.dart';
import '../../courses/Laravel/laravelControllers/laravelControllersExModelListEN.dart';
import '../../courses/Laravel/laravelBlade/laravelBladeExModelListEN.dart';
import '../../courses/Laravel/laravelMigrations/laravelMigrationsExModelListEN.dart';
import '../../courses/Laravel/laravelEloquent/laravelEloquentExModelListEN.dart';
import '../../courses/Laravel/laravelRelations/laravelRelationsExModelListEN.dart';
import '../../courses/Laravel/laravelValidation/laravelValidationExModelListEN.dart';
import '../../courses/Laravel/laravelMiddleware/laravelMiddlewareExModelListEN.dart';
import '../../courses/Laravel/laravelApi/laravelApiExModelListEN.dart';
import '../../courses/Laravel/laravelStorage/laravelStorageExModelListEN.dart';
import '../../courses/Laravel/laravelQueues/laravelQueuesExModelListEN.dart';
import '../../courses/Laravel/laravelEvents/laravelEventsExModelListEN.dart';
import '../../courses/Laravel/laravelTesting/laravelTestingExModelListEN.dart';
import '../../courses/Laravel/laravelDeploy/laravelDeployExModelListEN.dart';

List<CoursesMainModel> coursesLaravelMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Laravel Basics',
  catExercise: laravelBasicsModelEN,
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
  generalName: 'Routing',
  catExercise: laravelRoutingModelEN,
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
  generalName: 'Controllers',
  catExercise: laravelControllersModelEN,
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
  catExercise: laravelBladeModelEN,
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
  generalName: 'Migrations',
  catExercise: laravelMigrationsModelEN,
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
  generalName: 'Eloquent Basics',
  catExercise: laravelEloquentModelEN,
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
  generalName: 'Relationships',
  catExercise: laravelRelationsModelEN,
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
  generalName: 'Validation',
  catExercise: laravelValidationModelEN,
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
  generalName: 'Middleware and Auth',
  catExercise: laravelMiddlewareModelEN,
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
  generalName: 'API Resources',
  catExercise: laravelApiModelEN,
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
  catExercise: laravelStorageModelEN,
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
  generalName: 'Queues',
  catExercise: laravelQueuesModelEN,
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
  generalName: 'Events and Notifications',
  catExercise: laravelEventsModelEN,
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
  catExercise: laravelTestingModelEN,
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
  generalName: 'Deploy and Performance',
  catExercise: laravelDeployModelEN,
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
