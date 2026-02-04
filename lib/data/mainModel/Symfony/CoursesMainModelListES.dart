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
import '../../courses/Symfony/symfonyBasics/symfonyBasicsExModelListES.dart';
import '../../courses/Symfony/symfonyRouting/symfonyRoutingExModelListES.dart';
import '../../courses/Symfony/symfonyControllers/symfonyControllersExModelListES.dart';
import '../../courses/Symfony/symfonyTwig/symfonyTwigExModelListES.dart';
import '../../courses/Symfony/symfonyForms/symfonyFormsExModelListES.dart';
import '../../courses/Symfony/symfonyDoctrine/symfonyDoctrineExModelListES.dart';
import '../../courses/Symfony/symfonyDoctrineQueries/symfonyDoctrineQueriesExModelListES.dart';
import '../../courses/Symfony/symfonyValidation/symfonyValidationExModelListES.dart';
import '../../courses/Symfony/symfonyServices/symfonyServicesExModelListES.dart';
import '../../courses/Symfony/symfonyConfig/symfonyConfigExModelListES.dart';
import '../../courses/Symfony/symfonySecurity/symfonySecurityExModelListES.dart';
import '../../courses/Symfony/symfonyEvents/symfonyEventsExModelListES.dart';
import '../../courses/Symfony/symfonyMessenger/symfonyMessengerExModelListES.dart';
import '../../courses/Symfony/symfonyConsole/symfonyConsoleExModelListES.dart';
import '../../courses/Symfony/symfonyTesting/symfonyTestingExModelListES.dart';

List<CoursesMainModel> coursesSymfonyMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos Symfony',
  catExercise: symfonyBasicsModelES,
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
  generalName: 'Rutas',
  catExercise: symfonyRoutingModelES,
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
  generalName: 'Controladores y Respuestas',
  catExercise: symfonyControllersModelES,
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
  generalName: 'Plantillas Twig',
  catExercise: symfonyTwigModelES,
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
  generalName: 'Formularios',
  catExercise: symfonyFormsModelES,
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
  generalName: 'Doctrine: Entidades',
  catExercise: symfonyDoctrineModelES,
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
  generalName: 'Repositorios y QueryBuilder',
  catExercise: symfonyDoctrineQueriesModelES,
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
  generalName: 'Validacion',
  catExercise: symfonyValidationModelES,
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
  generalName: 'Servicios e Inyeccion',
  catExercise: symfonyServicesModelES,
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
  generalName: 'Configuracion y Entornos',
  catExercise: symfonyConfigModelES,
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
  generalName: 'Seguridad',
  catExercise: symfonySecurityModelES,
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
  generalName: 'Eventos y Subscribers',
  catExercise: symfonyEventsModelES,
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
  generalName: 'Messenger (colas)',
  catExercise: symfonyMessengerModelES,
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
  generalName: 'Comandos de Consola',
  catExercise: symfonyConsoleModelES,
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
  generalName: 'Testing y Debug',
  catExercise: symfonyTestingModelES,
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
