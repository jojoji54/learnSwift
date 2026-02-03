import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/php/phpBasics/phpBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpVariables/phpVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpOperators/phpOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpConditionals/phpConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpSwitch/phpSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpLoops/phpLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpArrays/phpArraysExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpAssociative/phpAssociativeExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpStrings/phpStringsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpFunctions/phpFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpClasses/phpClassesExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpConstructors/phpConstructorsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpInheritance/phpInheritanceExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpExceptions/phpExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpArrayFunctions/phpArrayFunctionsExMain.dart';
import '../../courses/PHP/phpBasics/phpBasicsExModelListZH.dart';
import '../../courses/PHP/phpVariables/phpVariablesExModelListZH.dart';
import '../../courses/PHP/phpOperators/phpOperatorsExModelListZH.dart';
import '../../courses/PHP/phpConditionals/phpConditionalsExModelListZH.dart';
import '../../courses/PHP/phpSwitch/phpSwitchExModelListZH.dart';
import '../../courses/PHP/phpLoops/phpLoopsExModelListZH.dart';
import '../../courses/PHP/phpArrays/phpArraysExModelListZH.dart';
import '../../courses/PHP/phpAssociative/phpAssociativeExModelListZH.dart';
import '../../courses/PHP/phpStrings/phpStringsExModelListZH.dart';
import '../../courses/PHP/phpFunctions/phpFunctionsExModelListZH.dart';
import '../../courses/PHP/phpClasses/phpClassesExModelListZH.dart';
import '../../courses/PHP/phpConstructors/phpConstructorsExModelListZH.dart';
import '../../courses/PHP/phpInheritance/phpInheritanceExModelListZH.dart';
import '../../courses/PHP/phpExceptions/phpExceptionsExModelListZH.dart';
import '../../courses/PHP/phpArrayFunctions/phpArrayFunctionsExModelListZH.dart';

List<CoursesMainModel> coursesPhpMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "PHP 基础",
    catExercise: phpBasicsModelZH,
    description: "从 echo、变量与基础语法开始。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpBasicsExMain(
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
    catExercise: phpVariablesModelZH,
    description: "使用变量与常见类型，如 int、float、string、bool。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpVariablesExMain(
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
    catExercise: phpOperatorsModelZH,
    description: "练习算术、比较与逻辑运算符。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpOperatorsExMain(
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
    catExercise: phpConditionalsModelZH,
    description: "用 if 与 else 控制流程。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpConditionalsExMain(
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
    generalName: "Switch 语句",
    catExercise: phpSwitchModelZH,
    description: "使用 switch 处理多个分支。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpSwitchExMain(
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
    catExercise: phpLoopsModelZH,
    description: "用 for、while 与 foreach 循环重复任务。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpLoopsExMain(
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
    catExercise: phpArraysModelZH,
    description: "创建数字数组并按索引访问。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpArraysExMain(
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
    generalName: "关联数组",
    catExercise: phpAssociativeModelZH,
    description: "使用关联数组存储键值对。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpAssociativeExMain(
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
    generalName: "字符串",
    catExercise: phpStringsModelZH,
    description: "练习字符串长度、替换与查找。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpStringsExMain(
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
    generalName: "函数",
    catExercise: phpFunctionsModelZH,
    description: "定义带参数与返回值的函数。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpFunctionsExMain(
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
    generalName: "类",
    catExercise: phpClassesModelZH,
    description: "创建类并读取属性。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpClassesExMain(
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
    generalName: "构造函数",
    catExercise: phpConstructorsModelZH,
    description: "使用构造函数设置初始值。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpConstructorsExMain(
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
    generalName: "继承",
    catExercise: phpInheritanceModelZH,
    description: "通过继承复用行为。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpInheritanceExMain(
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
    generalName: "异常处理",
    catExercise: phpExceptionsModelZH,
    description: "用 try 与 catch 处理错误。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpExceptionsExMain(
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
    generalName: "数组函数",
    catExercise: phpArrayFunctionsModelZH,
    description: "练习常见数组函数，如 count 与 array_push。",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpArrayfunctionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];