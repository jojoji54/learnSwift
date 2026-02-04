import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/symfonyBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/symfonyRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/symfonyControllersExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/symfonyTwigExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/symfonyFormsExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/symfonyDoctrineExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/symfonyDoctrineQueriesExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/symfonyValidationExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/symfonyServicesExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/symfonyConfigExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/symfonySecurityExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/symfonyEventsExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/symfonyMessengerExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/symfonyConsoleExMain.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/symfonyTestingExMain.dart';
import '../../courses/Symfony/symfonyBasics/symfonyBasicsExModelListZH.dart';
import '../../courses/Symfony/symfonyRouting/symfonyRoutingExModelListZH.dart';
import '../../courses/Symfony/symfonyControllers/symfonyControllersExModelListZH.dart';
import '../../courses/Symfony/symfonyTwig/symfonyTwigExModelListZH.dart';
import '../../courses/Symfony/symfonyForms/symfonyFormsExModelListZH.dart';
import '../../courses/Symfony/symfonyDoctrine/symfonyDoctrineExModelListZH.dart';
import '../../courses/Symfony/symfonyDoctrineQueries/symfonyDoctrineQueriesExModelListZH.dart';
import '../../courses/Symfony/symfonyValidation/symfonyValidationExModelListZH.dart';
import '../../courses/Symfony/symfonyServices/symfonyServicesExModelListZH.dart';
import '../../courses/Symfony/symfonyConfig/symfonyConfigExModelListZH.dart';
import '../../courses/Symfony/symfonySecurity/symfonySecurityExModelListZH.dart';
import '../../courses/Symfony/symfonyEvents/symfonyEventsExModelListZH.dart';
import '../../courses/Symfony/symfonyMessenger/symfonyMessengerExModelListZH.dart';
import '../../courses/Symfony/symfonyConsole/symfonyConsoleExModelListZH.dart';
import '../../courses/Symfony/symfonyTesting/symfonyTestingExModelListZH.dart';

List<CoursesMainModel> coursesSymfonyMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Symfony 基础',
  catExercise: symfonyBasicsModelZH,
  description: "symfonyCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyBasicsExMain(
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
  catExercise: symfonyRoutingModelZH,
  description: "symfonyCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyRoutingExMain(
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
  generalName: '控制器与响应',
  catExercise: symfonyControllersModelZH,
  description: "symfonyCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyControllersExMain(
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
  generalName: 'Twig 模板',
  catExercise: symfonyTwigModelZH,
  description: "symfonyCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyTwigExMain(
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
  generalName: '表单',
  catExercise: symfonyFormsModelZH,
  description: "symfonyCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyFormsExMain(
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
  generalName: 'Doctrine 实体',
  catExercise: symfonyDoctrineModelZH,
  description: "symfonyCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyDoctrineExMain(
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
  generalName: '仓库与查询构建器',
  catExercise: symfonyDoctrineQueriesModelZH,
  description: "symfonyCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyDoctrineQueriesExMain(
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
  generalName: '校验',
  catExercise: symfonyValidationModelZH,
  description: "symfonyCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyValidationExMain(
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
  generalName: '服务与依赖注入',
  catExercise: symfonyServicesModelZH,
  description: "symfonyCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyServicesExMain(
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
  generalName: '配置与环境',
  catExercise: symfonyConfigModelZH,
  description: "symfonyCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyConfigExMain(
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
  generalName: '安全',
  catExercise: symfonySecurityModelZH,
  description: "symfonyCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonySecurityExMain(
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
  generalName: '事件与订阅者',
  catExercise: symfonyEventsModelZH,
  description: "symfonyCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyEventsExMain(
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
  generalName: '消息队列',
  catExercise: symfonyMessengerModelZH,
  description: "symfonyCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyMessengerExMain(
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
  generalName: '控制台命令',
  catExercise: symfonyConsoleModelZH,
  description: "symfonyCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyConsoleExMain(
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
  generalName: '测试与调试',
  catExercise: symfonyTestingModelZH,
  description: "symfonyCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SymfonyTestingExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
