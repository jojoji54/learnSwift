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
import '../../courses/ASPNet/aspnetBasics/aspnetBasicsExModelListZH.dart';
import '../../courses/ASPNet/aspnetMinimalApis/aspnetMinimalApisExModelListZH.dart';
import '../../courses/ASPNet/aspnetRouting/aspnetRoutingExModelListZH.dart';
import '../../courses/ASPNet/aspnetControllers/aspnetControllersExModelListZH.dart';
import '../../courses/ASPNet/aspnetBinding/aspnetBindingExModelListZH.dart';
import '../../courses/ASPNet/aspnetDI/aspnetDIExModelListZH.dart';
import '../../courses/ASPNet/aspnetMiddleware/aspnetMiddlewareExModelListZH.dart';
import '../../courses/ASPNet/aspnetConfig/aspnetConfigExModelListZH.dart';
import '../../courses/ASPNet/aspnetLogging/aspnetLoggingExModelListZH.dart';
import '../../courses/ASPNet/aspnetValidation/aspnetValidationExModelListZH.dart';
import '../../courses/ASPNet/aspnetEFCore/aspnetEFCoreExModelListZH.dart';
import '../../courses/ASPNet/aspnetEFQueries/aspnetEFQueriesExModelListZH.dart';
import '../../courses/ASPNet/aspnetAuth/aspnetAuthExModelListZH.dart';
import '../../courses/ASPNet/aspnetSwagger/aspnetSwaggerExModelListZH.dart';
import '../../courses/ASPNet/aspnetTestingDeploy/aspnetTestingDeployExModelListZH.dart';

List<CoursesMainModel> coursesAspNetMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'ASP.NET Core 基础',
  catExercise: aspnetBasicsModelZH,
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
  generalName: 'Minimal API',
  catExercise: aspnetMinimalApisModelZH,
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
  generalName: '路由',
  catExercise: aspnetRoutingModelZH,
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
  generalName: '控制器',
  catExercise: aspnetControllersModelZH,
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
  generalName: '绑定与 DTO',
  catExercise: aspnetBindingModelZH,
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
  generalName: '依赖注入',
  catExercise: aspnetDIModelZH,
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
  generalName: '中间件',
  catExercise: aspnetMiddlewareModelZH,
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
  generalName: '配置',
  catExercise: aspnetConfigModelZH,
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
  generalName: '日志',
  catExercise: aspnetLoggingModelZH,
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
  generalName: '验证与错误',
  catExercise: aspnetValidationModelZH,
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
  generalName: 'EF Core 基础',
  catExercise: aspnetEFCoreModelZH,
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
  generalName: 'EF Core 查询',
  catExercise: aspnetEFQueriesModelZH,
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
  generalName: '认证与授权',
  catExercise: aspnetAuthModelZH,
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
  generalName: 'OpenAPI 与 Swagger',
  catExercise: aspnetSwaggerModelZH,
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
  generalName: '测试与部署',
  catExercise: aspnetTestingDeployModelZH,
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
