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
    description: "kotlinCat0InfoContent",
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
    description: "kotlinCat1InfoContent",
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
    description: "kotlinCat2InfoContent",
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
    description: "kotlinCat3InfoContent",
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
    description: "kotlinCat4InfoContent",
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
    description: "kotlinCat5InfoContent",
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
    description: "kotlinCat6InfoContent",
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
    description: "kotlinCat7InfoContent",
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
    description: "kotlinCat8InfoContent",
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
    description: "kotlinCat9InfoContent",
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
    description: "kotlinCat10InfoContent",
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
    description: "kotlinCat11InfoContent",
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
    description: "kotlinCat12InfoContent",
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
    description: "kotlinCat13InfoContent",
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
    description: "kotlinCat14InfoContent",
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