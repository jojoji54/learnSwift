import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/spring/springBasics/springBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/springConfigExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springDI/springDIExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/springControllersExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springRequests/springRequestsExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springServices/springServicesExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/springEntitiesExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/springRepositoriesExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/springTransactionsExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springSecurity/springSecurityExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/springExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/springTestingExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/springActuatorExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springProfiles/springProfilesExMain.dart';
import 'package:learnswift/Screens/Courses/spring/springDeploy/springDeployExMain.dart';
import '../../courses/Spring/springBasics/springBasicsExModelListES.dart';
import '../../courses/Spring/springConfig/springConfigExModelListES.dart';
import '../../courses/Spring/springDI/springDIExModelListES.dart';
import '../../courses/Spring/springControllers/springControllersExModelListES.dart';
import '../../courses/Spring/springRequests/springRequestsExModelListES.dart';
import '../../courses/Spring/springServices/springServicesExModelListES.dart';
import '../../courses/Spring/springEntities/springEntitiesExModelListES.dart';
import '../../courses/Spring/springRepositories/springRepositoriesExModelListES.dart';
import '../../courses/Spring/springTransactions/springTransactionsExModelListES.dart';
import '../../courses/Spring/springSecurity/springSecurityExModelListES.dart';
import '../../courses/Spring/springExceptions/springExceptionsExModelListES.dart';
import '../../courses/Spring/springTesting/springTestingExModelListES.dart';
import '../../courses/Spring/springActuator/springActuatorExModelListES.dart';
import '../../courses/Spring/springProfiles/springProfilesExModelListES.dart';
import '../../courses/Spring/springDeploy/springDeployExModelListES.dart';

List<CoursesMainModel> coursesSpringMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos Spring Boot',
  catExercise: springBasicsModelES,
  description: "springCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringBasicsExMain(
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
  generalName: 'Configuracion y Properties',
  catExercise: springConfigModelES,
  description: "springCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringConfigExMain(
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
  generalName: 'Beans e Inyeccion',
  catExercise: springDIModelES,
  description: "springCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringDIExMain(
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
  generalName: 'Controladores REST',
  catExercise: springControllersModelES,
  description: "springCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringControllersExMain(
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
  generalName: 'Requests y Validacion',
  catExercise: springRequestsModelES,
  description: "springCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringRequestsExMain(
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
  generalName: 'Servicios y Capas',
  catExercise: springServicesModelES,
  description: "springCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringServicesExMain(
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
  generalName: 'Entidades JPA',
  catExercise: springEntitiesModelES,
  description: "springCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringEntitiesExMain(
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
  generalName: 'Repositorios y Consultas',
  catExercise: springRepositoriesModelES,
  description: "springCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringRepositoriesExMain(
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
  generalName: 'Transacciones',
  catExercise: springTransactionsModelES,
  description: "springCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringTransactionsExMain(
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
  generalName: 'Seguridad Basica',
  catExercise: springSecurityModelES,
  description: "springCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringSecurityExMain(
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
  generalName: 'Manejo de Excepciones',
  catExercise: springExceptionsModelES,
  description: "springCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringExceptionsExMain(
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
  generalName: 'Pruebas',
  catExercise: springTestingModelES,
  description: "springCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringTestingExMain(
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
  generalName: 'Actuator y Monitorizacion',
  catExercise: springActuatorModelES,
  description: "springCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringActuatorExMain(
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
  generalName: 'Profiles y Logging',
  catExercise: springProfilesModelES,
  description: "springCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringProfilesExMain(
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
  generalName: 'Deploy y Docker',
  catExercise: springDeployModelES,
  description: "springCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SpringDeployExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
