import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/csharp/csBasics/csBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csVariables/csVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csOperators/csOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csConditionals/csConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csSwitch/csSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLoops/csLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csArrays/csArraysExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLists/csListsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csDictionaries/csDictionariesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csStrings/csStringsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csMethods/csMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csClasses/csClassesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csStructsEnums/csStructsEnumsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csExceptions/csExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLinq/csLinqExMain.dart';
import '../../courses/CSharp/csBasics/csBasicsExModelListZH.dart';
import '../../courses/CSharp/csVariables/csVariablesExModelListZH.dart';
import '../../courses/CSharp/csOperators/csOperatorsExModelListZH.dart';
import '../../courses/CSharp/csConditionals/csConditionalsExModelListZH.dart';
import '../../courses/CSharp/csSwitch/csSwitchExModelListZH.dart';
import '../../courses/CSharp/csLoops/csLoopsExModelListZH.dart';
import '../../courses/CSharp/csArrays/csArraysExModelListZH.dart';
import '../../courses/CSharp/csLists/csListsExModelListZH.dart';
import '../../courses/CSharp/csDictionaries/csDictionariesExModelListZH.dart';
import '../../courses/CSharp/csStrings/csStringsExModelListZH.dart';
import '../../courses/CSharp/csMethods/csMethodsExModelListZH.dart';
import '../../courses/CSharp/csClasses/csClassesExModelListZH.dart';
import '../../courses/CSharp/csStructsEnums/csStructsEnumsExModelListZH.dart';
import '../../courses/CSharp/csExceptions/csExceptionsExModelListZH.dart';
import '../../courses/CSharp/csLinq/csLinqExModelListZH.dart';

List<CoursesMainModel> coursesCSharpMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "C# 基础",
    catExercise: csBasicsModelZH,
    description: "csharpCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpBasicsExMain(
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
    catExercise: csVariablesModelZH,
    description: "csharpCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpVariablesExMain(
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
    catExercise: csOperatorsModelZH,
    description: "csharpCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpOperatorsExMain(
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
    catExercise: csConditionalsModelZH,
    description: "csharpCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpConditionalsExMain(
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
    catExercise: csSwitchModelZH,
    description: "csharpCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpSwitchExMain(
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
    catExercise: csLoopsModelZH,
    description: "csharpCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpLoopsExMain(
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
    catExercise: csArraysModelZH,
    description: "csharpCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpArraysExMain(
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
    catExercise: csListsModelZH,
    description: "csharpCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpListsExMain(
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
    generalName: "字典",
    catExercise: csDictionariesModelZH,
    description: "csharpCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpDictionariesExMain(
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
    catExercise: csStringsModelZH,
    description: "csharpCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpStringsExMain(
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
    generalName: "方法",
    catExercise: csMethodsModelZH,
    description: "csharpCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpMethodsExMain(
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
    generalName: "类与对象",
    catExercise: csClassesModelZH,
    description: "csharpCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpClassesExMain(
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
    generalName: "结构体与枚举",
    catExercise: csStructsEnumsModelZH,
    description: "csharpCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpStructsenumsExMain(
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
    catExercise: csExceptionsModelZH,
    description: "csharpCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpExceptionsExMain(
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
    generalName: "LINQ",
    catExercise: csLinqModelZH,
    description: "csharpCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpLinqExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];