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
    description: "cppCat0InfoContent",
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
    description: "cppCat1InfoContent",
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
    description: "cppCat2InfoContent",
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
    description: "cppCat3InfoContent",
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
    description: "cppCat4InfoContent",
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
    description: "cppCat5InfoContent",
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
    description: "cppCat6InfoContent",
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
    description: "cppCat7InfoContent",
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
    description: "cppCat8InfoContent",
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
    description: "cppCat9InfoContent",
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
    description: "cppCat10InfoContent",
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