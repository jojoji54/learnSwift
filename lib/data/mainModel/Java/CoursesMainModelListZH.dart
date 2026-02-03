import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/java/javaBasics/javaBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaDataTypes/javaDataTypesExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaOperators/javaOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaConditionals/javaConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaSwitch/javaSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaLoops/javaLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaArrays/javaArraysExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaArrayList/javaArrayListExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaMethods/javaMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaOopBasics/javaOopBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaExceptions/javaExceptionsExMain.dart';
import '../../courses/Java/javaBasics/javaBasicsExModelListZH.dart';
import '../../courses/Java/javaDataTypes/javaDataTypesExModelListZH.dart';
import '../../courses/Java/javaOperators/javaOperatorsExModelListZH.dart';
import '../../courses/Java/javaConditionals/javaConditionalsExModelListZH.dart';
import '../../courses/Java/javaSwitch/javaSwitchExModelListZH.dart';
import '../../courses/Java/javaLoops/javaLoopsExModelListZH.dart';
import '../../courses/Java/javaArrays/javaArraysExModelListZH.dart';
import '../../courses/Java/javaArrayList/javaArrayListExModelListZH.dart';
import '../../courses/Java/javaMethods/javaMethodsExModelListZH.dart';
import '../../courses/Java/javaOopBasics/javaOopBasicsExModelListZH.dart';
import '../../courses/Java/javaExceptions/javaExceptionsExModelListZH.dart';

List<CoursesMainModel> coursesJavaMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'Java 基础',
    catExercise: javaBasicsModelZH,
    description: "javaCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaBasicsExMain(
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
    generalName: '数据类型',
    catExercise: javaDataTypesModelZH,
    description: "javaCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaDataTypesExMain(
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
    generalName: '运算符',
    catExercise: javaOperatorsModelZH,
    description: "javaCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaOperatorsExMain(
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
    generalName: '条件判断',
    catExercise: javaConditionalsModelZH,
    description: "javaCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaConditionalsExMain(
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
    generalName: 'Switch 语句',
    catExercise: javaSwitchModelZH,
    description: "javaCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaSwitchExMain(
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
    generalName: '循环',
    catExercise: javaLoopsModelZH,
    description: "javaCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaLoopsExMain(
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
    generalName: '数组',
    catExercise: javaArraysModelZH,
    description: "javaCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaArraysExMain(
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
    generalName: 'ArrayList',
    catExercise: javaArrayListModelZH,
    description: "javaCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaArrayListExMain(
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
    generalName: '方法',
    catExercise: javaMethodsModelZH,
    description: "javaCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaMethodsExMain(
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
    generalName: '面向对象基础',
    catExercise: javaOopBasicsModelZH,
    description: "javaCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaOopBasicsExMain(
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
    generalName: '异常',
    catExercise: javaExceptionsModelZH,
    description: "javaCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaExceptionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];