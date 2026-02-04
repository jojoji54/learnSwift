import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/djangoBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/djangoSettingsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/djangoUrlsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/djangoTemplatesExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/djangoStaticExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/djangoModelsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/djangoOrmExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/djangoMigrationsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/djangoAdminExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/djangoFormsExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/djangoAuthExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/djangoCBVExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/djangoMiddlewareExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/djangoTestingExMain.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/djangoDeployExMain.dart';
import '../../courses/Django/djangoBasics/djangoBasicsExModelListZH.dart';
import '../../courses/Django/djangoSettings/djangoSettingsExModelListZH.dart';
import '../../courses/Django/djangoUrls/djangoUrlsExModelListZH.dart';
import '../../courses/Django/djangoTemplates/djangoTemplatesExModelListZH.dart';
import '../../courses/Django/djangoStatic/djangoStaticExModelListZH.dart';
import '../../courses/Django/djangoModels/djangoModelsExModelListZH.dart';
import '../../courses/Django/djangoOrm/djangoOrmExModelListZH.dart';
import '../../courses/Django/djangoMigrations/djangoMigrationsExModelListZH.dart';
import '../../courses/Django/djangoAdmin/djangoAdminExModelListZH.dart';
import '../../courses/Django/djangoForms/djangoFormsExModelListZH.dart';
import '../../courses/Django/djangoAuth/djangoAuthExModelListZH.dart';
import '../../courses/Django/djangoCBV/djangoCBVExModelListZH.dart';
import '../../courses/Django/djangoMiddleware/djangoMiddlewareExModelListZH.dart';
import '../../courses/Django/djangoTesting/djangoTestingExModelListZH.dart';
import '../../courses/Django/djangoDeploy/djangoDeployExModelListZH.dart';

List<CoursesMainModel> coursesDjangoMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Django 基础',
  catExercise: djangoBasicsModelZH,
  description: "djangoCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoBasicsExMain(
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
  generalName: '设置与应用',
  catExercise: djangoSettingsModelZH,
  description: "djangoCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoSettingsExMain(
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
  generalName: 'URL 与视图',
  catExercise: djangoUrlsModelZH,
  description: "djangoCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoUrlsExMain(
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
  generalName: '模板',
  catExercise: djangoTemplatesModelZH,
  description: "djangoCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoTemplatesExMain(
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
  generalName: '静态与媒体',
  catExercise: djangoStaticModelZH,
  description: "djangoCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoStaticExMain(
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
  generalName: '模型',
  catExercise: djangoModelsModelZH,
  description: "djangoCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoModelsExMain(
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
  generalName: 'ORM 查询',
  catExercise: djangoOrmModelZH,
  description: "djangoCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoOrmExMain(
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
  generalName: '迁移',
  catExercise: djangoMigrationsModelZH,
  description: "djangoCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoMigrationsExMain(
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
  generalName: '管理后台',
  catExercise: djangoAdminModelZH,
  description: "djangoCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoAdminExMain(
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
  generalName: '表单',
  catExercise: djangoFormsModelZH,
  description: "djangoCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoFormsExMain(
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
  generalName: '认证',
  catExercise: djangoAuthModelZH,
  description: "djangoCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoAuthExMain(
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
  generalName: '类视图',
  catExercise: djangoCBVModelZH,
  description: "djangoCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoCBVExMain(
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
  generalName: '中间件与安全',
  catExercise: djangoMiddlewareModelZH,
  description: "djangoCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoMiddlewareExMain(
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
  catExercise: djangoTestingModelZH,
  description: "djangoCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoTestingExMain(
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
  catExercise: djangoDeployModelZH,
  description: "djangoCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      DjangoDeployExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
