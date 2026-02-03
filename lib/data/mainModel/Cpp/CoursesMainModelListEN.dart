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
import '../../courses/Cpp/cppBasics/cppBasicsExModelListEN.dart';
import '../../courses/Cpp/cppDataTypes/cppDataTypesExModelListEN.dart';
import '../../courses/Cpp/cppOperators/cppOperatorsExModelListEN.dart';
import '../../courses/Cpp/cppConditionals/cppConditionalsExModelListEN.dart';
import '../../courses/Cpp/cppSwitch/cppSwitchExModelListEN.dart';
import '../../courses/Cpp/cppLoops/cppLoopsExModelListEN.dart';
import '../../courses/Cpp/cppArrays/cppArraysExModelListEN.dart';
import '../../courses/Cpp/cppVectors/cppVectorsExModelListEN.dart';
import '../../courses/Cpp/cppFunctions/cppFunctionsExModelListEN.dart';
import '../../courses/Cpp/cppClasses/cppClassesExModelListEN.dart';
import '../../courses/Cpp/cppPointers/cppPointersExModelListEN.dart';

List<CoursesMainModel> coursesCppMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'C++ Basics',
    catExercise: cppBasicsModelEN,
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
    generalName: 'Data Types',
    catExercise: cppDataTypesModelEN,
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
    generalName: 'Operators',
    catExercise: cppOperatorsModelEN,
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
    generalName: 'Conditionals',
    catExercise: cppConditionalsModelEN,
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
    catExercise: cppSwitchModelEN,
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
    generalName: 'Loops',
    catExercise: cppLoopsModelEN,
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
    catExercise: cppArraysModelEN,
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
    generalName: 'Vectors',
    catExercise: cppVectorsModelEN,
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
    generalName: 'Functions',
    catExercise: cppFunctionsModelEN,
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
    generalName: 'Classes',
    catExercise: cppClassesModelEN,
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
    generalName: 'Pointers',
    catExercise: cppPointersModelEN,
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