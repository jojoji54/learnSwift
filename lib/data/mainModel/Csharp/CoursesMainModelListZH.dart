import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpBasics/csharpBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpDataTypes/csharpDataTypesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpOperators/csharpOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpConditionals/csharpConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpSwitch/csharpSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpLoops/csharpLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpArrays/csharpArraysExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpLists/csharpListsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpMethods/csharpMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpOopBasics/csharpOopBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csharpExceptions/csharpExceptionsExMain.dart';
import '../../courses/Csharp/csharpBasics/csharpBasicsExModelListZH.dart';
import '../../courses/Csharp/csharpDataTypes/csharpDataTypesExModelListZH.dart';
import '../../courses/Csharp/csharpOperators/csharpOperatorsExModelListZH.dart';
import '../../courses/Csharp/csharpConditionals/csharpConditionalsExModelListZH.dart';
import '../../courses/Csharp/csharpSwitch/csharpSwitchExModelListZH.dart';
import '../../courses/Csharp/csharpLoops/csharpLoopsExModelListZH.dart';
import '../../courses/Csharp/csharpArrays/csharpArraysExModelListZH.dart';
import '../../courses/Csharp/csharpLists/csharpListsExModelListZH.dart';
import '../../courses/Csharp/csharpMethods/csharpMethodsExModelListZH.dart';
import '../../courses/Csharp/csharpOopBasics/csharpOopBasicsExModelListZH.dart';
import '../../courses/Csharp/csharpExceptions/csharpExceptionsExModelListZH.dart';

List<CoursesMainModel> coursesCsharpMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'C# 基础',
    catExercise: csharpBasicsModelZH,
    description: '从 C# 基础开始：输出、变量和简单表达式。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpBasicsExMain(
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
    catExercise: csharpDataTypesModelZH,
    description: '学习 C# 的 int、double、bool、string 等类型。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpDataTypesExMain(
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
    catExercise: csharpOperatorsModelZH,
    description: '练习 C# 的运算与比较。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpOperatorsExMain(
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
    generalName: '条件',
    catExercise: csharpConditionalsModelZH,
    description: '用 if、else if 和逻辑判断做决定。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpConditionalsExMain(
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
    generalName: 'Switch',
    catExercise: csharpSwitchModelZH,
    description: '用 switch 清晰处理多个情况。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpSwitchExMain(
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
    catExercise: csharpLoopsModelZH,
    description: '使用 for、while、foreach 循环重复操作。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpLoopsExMain(
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
    catExercise: csharpArraysModelZH,
    description: '用数组保存固定数据并访问元素。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpArraysExMain(
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
    generalName: '列表',
    catExercise: csharpListsModelZH,
    description: '使用 List<T> 添加、删除和统计元素。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpListsExMain(
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
    catExercise: csharpMethodsModelZH,
    description: '用方法让代码更清晰可复用。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpMethodsExMain(
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
    catExercise: csharpOopBasicsModelZH,
    description: '构建类、对象和基础面向对象。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpOopBasicsExMain(
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
    catExercise: csharpExceptionsModelZH,
    description: '使用 try、catch 和检查处理错误。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CsharpExceptionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
