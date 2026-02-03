import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/go/goBasics/goBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goVariables/goVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goOperators/goOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goConditionals/goConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goSwitch/goSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/go/goLoops/goLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goSlices/goSlicesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goMaps/goMapsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goStrings/goStringsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goFunctions/goFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goStructs/goStructsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goInterfaces/goInterfacesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goErrors/goErrorsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goGoroutines/goGoroutinesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goChannels/goChannelsExMain.dart';
import '../../courses/Go/goBasics/goBasicsExModelListZH.dart';
import '../../courses/Go/goVariables/goVariablesExModelListZH.dart';
import '../../courses/Go/goOperators/goOperatorsExModelListZH.dart';
import '../../courses/Go/goConditionals/goConditionalsExModelListZH.dart';
import '../../courses/Go/goSwitch/goSwitchExModelListZH.dart';
import '../../courses/Go/goLoops/goLoopsExModelListZH.dart';
import '../../courses/Go/goSlices/goSlicesExModelListZH.dart';
import '../../courses/Go/goMaps/goMapsExModelListZH.dart';
import '../../courses/Go/goStrings/goStringsExModelListZH.dart';
import '../../courses/Go/goFunctions/goFunctionsExModelListZH.dart';
import '../../courses/Go/goStructs/goStructsExModelListZH.dart';
import '../../courses/Go/goInterfaces/goInterfacesExModelListZH.dart';
import '../../courses/Go/goErrors/goErrorsExModelListZH.dart';
import '../../courses/Go/goGoroutines/goGoroutinesExModelListZH.dart';
import '../../courses/Go/goChannels/goChannelsExModelListZH.dart';

List<CoursesMainModel> coursesGoMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "Go 基础",
    catExercise: goBasicsModelZH,
    description: "goCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoBasicsExMain(
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
    catExercise: goVariablesModelZH,
    description: "goCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoVariablesExMain(
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
    catExercise: goOperatorsModelZH,
    description: "goCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoOperatorsExMain(
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
    generalName: "条件",
    catExercise: goConditionalsModelZH,
    description: "goCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoConditionalsExMain(
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
    generalName: "Switch",
    catExercise: goSwitchModelZH,
    description: "goCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoSwitchExMain(
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
    catExercise: goLoopsModelZH,
    description: "goCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoLoopsExMain(
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
    generalName: "切片",
    catExercise: goSlicesModelZH,
    description: "goCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoSlicesExMain(
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
    generalName: "映射",
    catExercise: goMapsModelZH,
    description: "goCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoMapsExMain(
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
    catExercise: goStringsModelZH,
    description: "goCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoStringsExMain(
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
    catExercise: goFunctionsModelZH,
    description: "goCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoFunctionsExMain(
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
    generalName: "结构体",
    catExercise: goStructsModelZH,
    description: "goCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoStructsExMain(
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
    generalName: "接口",
    catExercise: goInterfacesModelZH,
    description: "goCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoInterfacesExMain(
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
    generalName: "错误处理",
    catExercise: goErrorsModelZH,
    description: "goCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoErrorsExMain(
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
    generalName: "协程",
    catExercise: goGoroutinesModelZH,
    description: "goCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoGoroutinesExMain(
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
    generalName: "通道",
    catExercise: goChannelsModelZH,
    description: "goCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoChannelsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
