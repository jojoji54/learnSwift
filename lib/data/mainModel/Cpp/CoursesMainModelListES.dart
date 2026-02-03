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
import '../../courses/Cpp/cppBasics/cppBasicsExModelListES.dart';
import '../../courses/Cpp/cppDataTypes/cppDataTypesExModelListES.dart';
import '../../courses/Cpp/cppOperators/cppOperatorsExModelListES.dart';
import '../../courses/Cpp/cppConditionals/cppConditionalsExModelListES.dart';
import '../../courses/Cpp/cppSwitch/cppSwitchExModelListES.dart';
import '../../courses/Cpp/cppLoops/cppLoopsExModelListES.dart';
import '../../courses/Cpp/cppArrays/cppArraysExModelListES.dart';
import '../../courses/Cpp/cppVectors/cppVectorsExModelListES.dart';
import '../../courses/Cpp/cppFunctions/cppFunctionsExModelListES.dart';
import '../../courses/Cpp/cppClasses/cppClassesExModelListES.dart';
import '../../courses/Cpp/cppPointers/cppPointersExModelListES.dart';

List<CoursesMainModel> coursesCppMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'C++ Básico',
    catExercise: cppBasicsModelES,
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
    generalName: 'Tipos de datos',
    catExercise: cppDataTypesModelES,
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
    generalName: 'Operadores',
    catExercise: cppOperatorsModelES,
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
    generalName: 'Condicionales',
    catExercise: cppConditionalsModelES,
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
    generalName: 'Switch',
    catExercise: cppSwitchModelES,
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
    generalName: 'Bucles',
    catExercise: cppLoopsModelES,
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
    generalName: 'Arrays',
    catExercise: cppArraysModelES,
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
    generalName: 'Vectores',
    catExercise: cppVectorsModelES,
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
    generalName: 'Funciones',
    catExercise: cppFunctionsModelES,
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
    generalName: 'Clases',
    catExercise: cppClassesModelES,
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
    generalName: 'Punteros',
    catExercise: cppPointersModelES,
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