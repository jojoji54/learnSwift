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
import '../../courses/Laravel/laravelBasics/laravelBasicsExModelListZH.dart';
import '../../courses/Laravel/laravelRouting/laravelRoutingExModelListZH.dart';
import '../../courses/Laravel/laravelControllers/laravelControllersExModelListZH.dart';
import '../../courses/Laravel/laravelBlade/laravelBladeExModelListZH.dart';
import '../../courses/Laravel/laravelMigrations/laravelMigrationsExModelListZH.dart';
import '../../courses/Laravel/laravelEloquent/laravelEloquentExModelListZH.dart';
import '../../courses/Laravel/laravelRelations/laravelRelationsExModelListZH.dart';
import '../../courses/Laravel/laravelValidation/laravelValidationExModelListZH.dart';
import '../../courses/Laravel/laravelMiddleware/laravelMiddlewareExModelListZH.dart';
import '../../courses/Laravel/laravelApi/laravelApiExModelListZH.dart';
import '../../courses/Laravel/laravelStorage/laravelStorageExModelListZH.dart';
import '../../courses/Laravel/laravelQueues/laravelQueuesExModelListZH.dart';
import '../../courses/Laravel/laravelEvents/laravelEventsExModelListZH.dart';
import '../../courses/Laravel/laravelTesting/laravelTestingExModelListZH.dart';
import '../../courses/Laravel/laravelDeploy/laravelDeployExModelListZH.dart';

List<CoursesMainModel> coursesLaravelMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Laravel 基础',
  catExercise: laravelBasicsModelZH,
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
  generalName: '路由',
  catExercise: laravelRoutingModelZH,
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
  generalName: '控制器',
  catExercise: laravelControllersModelZH,
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
  catExercise: laravelBladeModelZH,
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
  generalName: '迁移',
  catExercise: laravelMigrationsModelZH,
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
  generalName: 'Eloquent 基础',
  catExercise: laravelEloquentModelZH,
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
  generalName: '关系',
  catExercise: laravelRelationsModelZH,
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
  generalName: '验证',
  catExercise: laravelValidationModelZH,
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
  generalName: '中间件与认证',
  catExercise: laravelMiddlewareModelZH,
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
  generalName: 'API 资源',
  catExercise: laravelApiModelZH,
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
  generalName: '存储',
  catExercise: laravelStorageModelZH,
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
  generalName: '队列',
  catExercise: laravelQueuesModelZH,
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
  generalName: '事件与通知',
  catExercise: laravelEventsModelZH,
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
  generalName: '测试',
  catExercise: laravelTestingModelZH,
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
  generalName: '部署与性能',
  catExercise: laravelDeployModelZH,
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
