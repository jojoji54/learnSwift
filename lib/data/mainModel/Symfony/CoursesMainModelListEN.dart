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
import '../../courses/Symfony/symfonyBasics/symfonyBasicsExModelListEN.dart';
import '../../courses/Symfony/symfonyRouting/symfonyRoutingExModelListEN.dart';
import '../../courses/Symfony/symfonyControllers/symfonyControllersExModelListEN.dart';
import '../../courses/Symfony/symfonyTwig/symfonyTwigExModelListEN.dart';
import '../../courses/Symfony/symfonyForms/symfonyFormsExModelListEN.dart';
import '../../courses/Symfony/symfonyDoctrine/symfonyDoctrineExModelListEN.dart';
import '../../courses/Symfony/symfonyDoctrineQueries/symfonyDoctrineQueriesExModelListEN.dart';
import '../../courses/Symfony/symfonyValidation/symfonyValidationExModelListEN.dart';
import '../../courses/Symfony/symfonyServices/symfonyServicesExModelListEN.dart';
import '../../courses/Symfony/symfonyConfig/symfonyConfigExModelListEN.dart';
import '../../courses/Symfony/symfonySecurity/symfonySecurityExModelListEN.dart';
import '../../courses/Symfony/symfonyEvents/symfonyEventsExModelListEN.dart';
import '../../courses/Symfony/symfonyMessenger/symfonyMessengerExModelListEN.dart';
import '../../courses/Symfony/symfonyConsole/symfonyConsoleExModelListEN.dart';
import '../../courses/Symfony/symfonyTesting/symfonyTestingExModelListEN.dart';

List<CoursesMainModel> coursesSymfonyMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Symfony Basics',
  catExercise: symfonyBasicsModelEN,
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
  generalName: 'Routing',
  catExercise: symfonyRoutingModelEN,
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
  generalName: 'Controllers & Responses',
  catExercise: symfonyControllersModelEN,
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
  generalName: 'Twig Templates',
  catExercise: symfonyTwigModelEN,
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
  generalName: 'Forms',
  catExercise: symfonyFormsModelEN,
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
  generalName: 'Doctrine Entities',
  catExercise: symfonyDoctrineModelEN,
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
  generalName: 'Repositories & QueryBuilder',
  catExercise: symfonyDoctrineQueriesModelEN,
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
  generalName: 'Validation',
  catExercise: symfonyValidationModelEN,
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
  generalName: 'Services & DI',
  catExercise: symfonyServicesModelEN,
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
  generalName: 'Configuration & Env',
  catExercise: symfonyConfigModelEN,
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
  generalName: 'Security',
  catExercise: symfonySecurityModelEN,
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
  generalName: 'Events & Subscribers',
  catExercise: symfonyEventsModelEN,
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
  generalName: 'Messenger',
  catExercise: symfonyMessengerModelEN,
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
  generalName: 'Console Commands',
  catExercise: symfonyConsoleModelEN,
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
  generalName: 'Testing & Debug',
  catExercise: symfonyTestingModelEN,
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
