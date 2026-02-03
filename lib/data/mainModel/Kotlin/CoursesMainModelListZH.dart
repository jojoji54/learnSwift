import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktBasics/ktBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktVariables/ktVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktOperators/ktOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktConditionals/ktConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktWhen/ktWhenExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktLoops/ktLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktArrays/ktArraysExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktLists/ktListsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktMaps/ktMapsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktStrings/ktStringsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktFunctions/ktFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktClasses/ktClassesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktDataClasses/ktDataClassesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktNullSafety/ktNullSafetyExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktCollections/ktCollectionsExMain.dart';
import '../../courses/Kotlin/ktBasics/ktBasicsExModelListZH.dart';
import '../../courses/Kotlin/ktVariables/ktVariablesExModelListZH.dart';
import '../../courses/Kotlin/ktOperators/ktOperatorsExModelListZH.dart';
import '../../courses/Kotlin/ktConditionals/ktConditionalsExModelListZH.dart';
import '../../courses/Kotlin/ktWhen/ktWhenExModelListZH.dart';
import '../../courses/Kotlin/ktLoops/ktLoopsExModelListZH.dart';
import '../../courses/Kotlin/ktArrays/ktArraysExModelListZH.dart';
import '../../courses/Kotlin/ktLists/ktListsExModelListZH.dart';
import '../../courses/Kotlin/ktMaps/ktMapsExModelListZH.dart';
import '../../courses/Kotlin/ktStrings/ktStringsExModelListZH.dart';
import '../../courses/Kotlin/ktFunctions/ktFunctionsExModelListZH.dart';
import '../../courses/Kotlin/ktClasses/ktClassesExModelListZH.dart';
import '../../courses/Kotlin/ktDataClasses/ktDataClassesExModelListZH.dart';
import '../../courses/Kotlin/ktNullSafety/ktNullSafetyExModelListZH.dart';
import '../../courses/Kotlin/ktCollections/ktCollectionsExModelListZH.dart';

List<CoursesMainModel> coursesKotlinMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "Kotlin 基础",
    catExercise: ktBasicsModelZH,
    description: "从打印、简单值与基础语法开始。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinBasicsExMain(
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
    generalName: "变量与类型",
    catExercise: ktVariablesModelZH,
    description: "使用 val、var 与 Int、Double、String、Boolean 等类型。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinVariablesExMain(
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
    generalName: "运算符",
    catExercise: ktOperatorsModelZH,
    description: "练习 Kotlin 的算术、比较与逻辑运算符。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinOperatorsExMain(
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
    generalName: "条件判断",
    catExercise: ktConditionalsModelZH,
    description: "用 if 与 else 控制流程。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinConditionalsExMain(
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
    generalName: "When 表达式",
    catExercise: ktWhenModelZH,
    description: "使用 when 处理多个分支。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinWhenExMain(
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
    generalName: "循环",
    catExercise: ktLoopsModelZH,
    description: "用 for 与 while 循环重复任务。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinLoopsExMain(
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
    generalName: "数组",
    catExercise: ktArraysModelZH,
    description: "创建数组并按索引访问元素。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinArraysExMain(
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
    generalName: "列表",
    catExercise: ktListsModelZH,
    description: "使用 listOf 与 mutableListOf 集合。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinListsExMain(
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
    generalName: "映射",
    catExercise: ktMapsModelZH,
    description: "用 mapOf 与 mutableMapOf 存储键值对。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinMapsExMain(
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
    generalName: "字符串",
    catExercise: ktStringsModelZH,
    description: "使用字符串操作如 length、replace 与 contains。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinStringsExMain(
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
    generalName: "函数",
    catExercise: ktFunctionsModelZH,
    description: "定义带参数和返回值的函数。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinFunctionsExMain(
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
    generalName: "类",
    catExercise: ktClassesModelZH,
    description: "创建类、属性与简单实例。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinClassesExMain(
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
    generalName: "数据类",
    catExercise: ktDataClassesModelZH,
    description: "使用 data class 清晰地保存数据。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinDataclassesExMain(
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
    generalName: "空安全",
    catExercise: ktNullSafetyModelZH,
    description: "使用可空类型、安全调用与 Elvis 运算符。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinNullsafetyExMain(
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
    generalName: "集合练习",
    catExercise: ktCollectionsModelZH,
    description: "练习集合操作，如 filter 与 map。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinCollectionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];