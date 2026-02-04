import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBasics/aspnetBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMinimalApis/aspnetMinimalApisExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetRouting/aspnetRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetControllers/aspnetControllersExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetBinding/aspnetBindingExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetDI/aspnetDIExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetMiddleware/aspnetMiddlewareExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/aspnetConfigExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetLogging/aspnetLoggingExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetValidation/aspnetValidationExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/aspnetEFCoreExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/aspnetEFQueriesExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetAuth/aspnetAuthExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetSwagger/aspnetSwaggerExMain.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/aspnetTestingDeployExMain.dart';
import '../../courses/ASPNet/aspnetBasics/aspnetBasicsExModelListEN.dart';
import '../../courses/ASPNet/aspnetMinimalApis/aspnetMinimalApisExModelListEN.dart';
import '../../courses/ASPNet/aspnetRouting/aspnetRoutingExModelListEN.dart';
import '../../courses/ASPNet/aspnetControllers/aspnetControllersExModelListEN.dart';
import '../../courses/ASPNet/aspnetBinding/aspnetBindingExModelListEN.dart';
import '../../courses/ASPNet/aspnetDI/aspnetDIExModelListEN.dart';
import '../../courses/ASPNet/aspnetMiddleware/aspnetMiddlewareExModelListEN.dart';
import '../../courses/ASPNet/aspnetConfig/aspnetConfigExModelListEN.dart';
import '../../courses/ASPNet/aspnetLogging/aspnetLoggingExModelListEN.dart';
import '../../courses/ASPNet/aspnetValidation/aspnetValidationExModelListEN.dart';
import '../../courses/ASPNet/aspnetEFCore/aspnetEFCoreExModelListEN.dart';
import '../../courses/ASPNet/aspnetEFQueries/aspnetEFQueriesExModelListEN.dart';
import '../../courses/ASPNet/aspnetAuth/aspnetAuthExModelListEN.dart';
import '../../courses/ASPNet/aspnetSwagger/aspnetSwaggerExModelListEN.dart';
import '../../courses/ASPNet/aspnetTestingDeploy/aspnetTestingDeployExModelListEN.dart';

List<CoursesMainModel> coursesAspNetMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'ASP.NET Core Basics',
  catExercise: aspnetBasicsModelEN,
  description: "aspnetCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetBasicsExMain(
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
  generalName: 'Minimal APIs',
  catExercise: aspnetMinimalApisModelEN,
  description: "aspnetCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetMinimalApisExMain(
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
  generalName: 'Routing',
  catExercise: aspnetRoutingModelEN,
  description: "aspnetCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetRoutingExMain(
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
  generalName: 'Controllers',
  catExercise: aspnetControllersModelEN,
  description: "aspnetCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetControllersExMain(
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
  generalName: 'Binding and DTOs',
  catExercise: aspnetBindingModelEN,
  description: "aspnetCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetBindingExMain(
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
  generalName: 'Dependency Injection',
  catExercise: aspnetDIModelEN,
  description: "aspnetCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetDIExMain(
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
  generalName: 'Middleware',
  catExercise: aspnetMiddlewareModelEN,
  description: "aspnetCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetMiddlewareExMain(
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
  generalName: 'Configuration',
  catExercise: aspnetConfigModelEN,
  description: "aspnetCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetConfigExMain(
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
  generalName: 'Logging',
  catExercise: aspnetLoggingModelEN,
  description: "aspnetCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetLoggingExMain(
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
  generalName: 'Validation and Errors',
  catExercise: aspnetValidationModelEN,
  description: "aspnetCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetValidationExMain(
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
  generalName: 'EF Core Basics',
  catExercise: aspnetEFCoreModelEN,
  description: "aspnetCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetEFCoreExMain(
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
  generalName: 'EF Core Queries',
  catExercise: aspnetEFQueriesModelEN,
  description: "aspnetCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetEFQueriesExMain(
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
  generalName: 'Auth and Authorization',
  catExercise: aspnetAuthModelEN,
  description: "aspnetCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetAuthExMain(
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
  generalName: 'OpenAPI and Swagger',
  catExercise: aspnetSwaggerModelEN,
  description: "aspnetCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetSwaggerExMain(
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
  generalName: 'Testing and Deploy',
  catExercise: aspnetTestingDeployModelEN,
  description: "aspnetCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      AspnetTestingDeployExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
