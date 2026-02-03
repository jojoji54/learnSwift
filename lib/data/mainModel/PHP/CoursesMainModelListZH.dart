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
    description: "phpCat0InfoContent",
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
    description: "phpCat1InfoContent",
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
    description: "phpCat2InfoContent",
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
    description: "phpCat3InfoContent",
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
    description: "phpCat4InfoContent",
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
    description: "phpCat5InfoContent",
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
    description: "phpCat6InfoContent",
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
    description: "phpCat7InfoContent",
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
    description: "phpCat8InfoContent",
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
    description: "phpCat9InfoContent",
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
    description: "phpCat10InfoContent",
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
    description: "phpCat11InfoContent",
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
    description: "phpCat12InfoContent",
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
    description: "phpCat13InfoContent",
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
    description: "phpCat14InfoContent",
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