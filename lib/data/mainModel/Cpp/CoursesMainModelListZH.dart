import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/cpp/cppBasics/cppBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppDataTypes/cppDataTypesExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppOperators/cppOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppConditionals/cppConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppSwitch/cppSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppLoops/cppLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppArrays/cppArraysExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppVectors/cppVectorsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppFunctions/cppFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppClasses/cppClassesExMain.dart';
import 'package:learnswift/Screens/Courses/cpp/cppPointers/cppPointersExMain.dart';
import '../../courses/Cpp/cppBasics/cppBasicsExModelListZH.dart';
import '../../courses/Cpp/cppDataTypes/cppDataTypesExModelListZH.dart';
import '../../courses/Cpp/cppOperators/cppOperatorsExModelListZH.dart';
import '../../courses/Cpp/cppConditionals/cppConditionalsExModelListZH.dart';
import '../../courses/Cpp/cppSwitch/cppSwitchExModelListZH.dart';
import '../../courses/Cpp/cppLoops/cppLoopsExModelListZH.dart';
import '../../courses/Cpp/cppArrays/cppArraysExModelListZH.dart';
import '../../courses/Cpp/cppVectors/cppVectorsExModelListZH.dart';
import '../../courses/Cpp/cppFunctions/cppFunctionsExModelListZH.dart';
import '../../courses/Cpp/cppClasses/cppClassesExModelListZH.dart';
import '../../courses/Cpp/cppPointers/cppPointersExModelListZH.dart';

List<CoursesMainModel> coursesCppMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'C++ 基础',
    catExercise: cppBasicsModelZH,
    description: '从 C++ 基础开始：输出、变量和简单表达式。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppBasicsExMain(
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
    catExercise: cppDataTypesModelZH,
    description: '学习 C++ 数据类型，如 int、double、char 和 bool。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppDataTypesExMain(
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
    catExercise: cppOperatorsModelZH,
    description: '练习 C++ 的算术、比较和逻辑运算符。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppOperatorsExMain(
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
    catExercise: cppConditionalsModelZH,
    description: '使用 if、else 和三元运算符控制 C++ 流程。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppConditionalsExMain(
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
    catExercise: cppSwitchModelZH,
    description: '用 switch 语句处理多个情况。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppSwitchExMain(
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
    catExercise: cppLoopsModelZH,
    description: '掌握 C++ 的 for、while 和 do while 循环。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppLoopsExMain(
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
    catExercise: cppArraysModelZH,
    description: '在 C++ 中创建、读取和更新数组。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppArraysExMain(
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
    generalName: '向量',
    catExercise: cppVectorsModelZH,
    description: '使用 vector：push_back、size 和索引。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppVectorsExMain(
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
    generalName: '函数',
    catExercise: cppFunctionsModelZH,
    description: '定义并调用函数，使用参数和返回值。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppFunctionsExMain(
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
    generalName: '类',
    catExercise: cppClassesModelZH,
    description: '学习 C++ 的类、对象、字段和构造函数。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppClassesExMain(
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
    generalName: '指针',
    catExercise: cppPointersModelZH,
    description: '理解 C++ 的指针、地址和解引用。',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CppPointersExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
