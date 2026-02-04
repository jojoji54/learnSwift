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
import '../../courses/Spring/springBasics/springBasicsExModelListZH.dart';
import '../../courses/Spring/springConfig/springConfigExModelListZH.dart';
import '../../courses/Spring/springDI/springDIExModelListZH.dart';
import '../../courses/Spring/springControllers/springControllersExModelListZH.dart';
import '../../courses/Spring/springRequests/springRequestsExModelListZH.dart';
import '../../courses/Spring/springServices/springServicesExModelListZH.dart';
import '../../courses/Spring/springEntities/springEntitiesExModelListZH.dart';
import '../../courses/Spring/springRepositories/springRepositoriesExModelListZH.dart';
import '../../courses/Spring/springTransactions/springTransactionsExModelListZH.dart';
import '../../courses/Spring/springSecurity/springSecurityExModelListZH.dart';
import '../../courses/Spring/springExceptions/springExceptionsExModelListZH.dart';
import '../../courses/Spring/springTesting/springTestingExModelListZH.dart';
import '../../courses/Spring/springActuator/springActuatorExModelListZH.dart';
import '../../courses/Spring/springProfiles/springProfilesExModelListZH.dart';
import '../../courses/Spring/springDeploy/springDeployExModelListZH.dart';

List<CoursesMainModel> coursesSpringMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Spring Boot 基础',
  catExercise: springBasicsModelZH,
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
  generalName: '配置与属性',
  catExercise: springConfigModelZH,
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
  generalName: 'Bean 与依赖注入',
  catExercise: springDIModelZH,
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
  generalName: 'REST 控制器',
  catExercise: springControllersModelZH,
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
  generalName: '请求与校验',
  catExercise: springRequestsModelZH,
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
  generalName: '服务层与分层',
  catExercise: springServicesModelZH,
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
  generalName: 'JPA 实体',
  catExercise: springEntitiesModelZH,
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
  generalName: '仓库与查询',
  catExercise: springRepositoriesModelZH,
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
  generalName: '事务',
  catExercise: springTransactionsModelZH,
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
  generalName: '安全基础',
  catExercise: springSecurityModelZH,
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
  generalName: '异常处理',
  catExercise: springExceptionsModelZH,
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
  generalName: '测试',
  catExercise: springTestingModelZH,
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
  generalName: '监控与 Actuator',
  catExercise: springActuatorModelZH,
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
  generalName: '环境与日志',
  catExercise: springProfilesModelZH,
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
  generalName: '部署与 Docker',
  catExercise: springDeployModelZH,
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
