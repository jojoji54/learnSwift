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
import '../../courses/Spring/springBasics/springBasicsExModelListEN.dart';
import '../../courses/Spring/springConfig/springConfigExModelListEN.dart';
import '../../courses/Spring/springDI/springDIExModelListEN.dart';
import '../../courses/Spring/springControllers/springControllersExModelListEN.dart';
import '../../courses/Spring/springRequests/springRequestsExModelListEN.dart';
import '../../courses/Spring/springServices/springServicesExModelListEN.dart';
import '../../courses/Spring/springEntities/springEntitiesExModelListEN.dart';
import '../../courses/Spring/springRepositories/springRepositoriesExModelListEN.dart';
import '../../courses/Spring/springTransactions/springTransactionsExModelListEN.dart';
import '../../courses/Spring/springSecurity/springSecurityExModelListEN.dart';
import '../../courses/Spring/springExceptions/springExceptionsExModelListEN.dart';
import '../../courses/Spring/springTesting/springTestingExModelListEN.dart';
import '../../courses/Spring/springActuator/springActuatorExModelListEN.dart';
import '../../courses/Spring/springProfiles/springProfilesExModelListEN.dart';
import '../../courses/Spring/springDeploy/springDeployExModelListEN.dart';

List<CoursesMainModel> coursesSpringMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Spring Boot Basics',
  catExercise: springBasicsModelEN,
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
  generalName: 'Configuration & Properties',
  catExercise: springConfigModelEN,
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
  generalName: 'Beans & Dependency Injection',
  catExercise: springDIModelEN,
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
  generalName: 'REST Controllers',
  catExercise: springControllersModelEN,
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
  generalName: 'Requests & Validation',
  catExercise: springRequestsModelEN,
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
  generalName: 'Services & Layers',
  catExercise: springServicesModelEN,
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
  generalName: 'JPA Entities',
  catExercise: springEntitiesModelEN,
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
  generalName: 'Repositories & Queries',
  catExercise: springRepositoriesModelEN,
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
  generalName: 'Transactions',
  catExercise: springTransactionsModelEN,
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
  generalName: 'Security Basics',
  catExercise: springSecurityModelEN,
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
  generalName: 'Exception Handling',
  catExercise: springExceptionsModelEN,
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
  generalName: 'Testing',
  catExercise: springTestingModelEN,
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
  generalName: 'Actuator & Monitoring',
  catExercise: springActuatorModelEN,
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
  generalName: 'Profiles & Logging',
  catExercise: springProfilesModelEN,
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
  generalName: 'Deployment & Docker',
  catExercise: springDeployModelEN,
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
