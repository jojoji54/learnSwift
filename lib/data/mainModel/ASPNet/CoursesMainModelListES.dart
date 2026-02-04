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
import '../../courses/ASPNet/aspnetBasics/aspnetBasicsExModelListES.dart';
import '../../courses/ASPNet/aspnetMinimalApis/aspnetMinimalApisExModelListES.dart';
import '../../courses/ASPNet/aspnetRouting/aspnetRoutingExModelListES.dart';
import '../../courses/ASPNet/aspnetControllers/aspnetControllersExModelListES.dart';
import '../../courses/ASPNet/aspnetBinding/aspnetBindingExModelListES.dart';
import '../../courses/ASPNet/aspnetDI/aspnetDIExModelListES.dart';
import '../../courses/ASPNet/aspnetMiddleware/aspnetMiddlewareExModelListES.dart';
import '../../courses/ASPNet/aspnetConfig/aspnetConfigExModelListES.dart';
import '../../courses/ASPNet/aspnetLogging/aspnetLoggingExModelListES.dart';
import '../../courses/ASPNet/aspnetValidation/aspnetValidationExModelListES.dart';
import '../../courses/ASPNet/aspnetEFCore/aspnetEFCoreExModelListES.dart';
import '../../courses/ASPNet/aspnetEFQueries/aspnetEFQueriesExModelListES.dart';
import '../../courses/ASPNet/aspnetAuth/aspnetAuthExModelListES.dart';
import '../../courses/ASPNet/aspnetSwagger/aspnetSwaggerExModelListES.dart';
import '../../courses/ASPNet/aspnetTestingDeploy/aspnetTestingDeployExModelListES.dart';

List<CoursesMainModel> coursesAspNetMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos ASP.NET Core',
  catExercise: aspnetBasicsModelES,
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
  catExercise: aspnetMinimalApisModelES,
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
  generalName: 'Rutas',
  catExercise: aspnetRoutingModelES,
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
  generalName: 'Controladores',
  catExercise: aspnetControllersModelES,
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
  generalName: 'Binding y DTOs',
  catExercise: aspnetBindingModelES,
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
  generalName: 'Inyeccion de Dependencias',
  catExercise: aspnetDIModelES,
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
  catExercise: aspnetMiddlewareModelES,
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
  generalName: 'Configuracion',
  catExercise: aspnetConfigModelES,
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
  catExercise: aspnetLoggingModelES,
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
  generalName: 'Validacion y Errores',
  catExercise: aspnetValidationModelES,
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
  generalName: 'EF Core Basico',
  catExercise: aspnetEFCoreModelES,
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
  generalName: 'Consultas EF Core',
  catExercise: aspnetEFQueriesModelES,
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
  generalName: 'Auth y Autorizacion',
  catExercise: aspnetAuthModelES,
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
  generalName: 'OpenAPI y Swagger',
  catExercise: aspnetSwaggerModelES,
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
  generalName: 'Testing y Deploy',
  catExercise: aspnetTestingDeployModelES,
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
