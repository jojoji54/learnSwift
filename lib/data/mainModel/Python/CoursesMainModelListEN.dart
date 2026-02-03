import 'package:learnswift/Screens/Courses/python/pythonAPIs/pythonAPIsExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/pythonDataAnalysisExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/pythonErrorHandlingExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonFileHandling/PythonFileHandlingExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/pythonModulesExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/pythonOOPExMain.dart';
import 'package:learnswift/data/courses/Python/pythonAPIs/pythonAPIsModelEN.dart';
import 'package:learnswift/data/courses/Python/pythonBasics/pyBasicsExModelListEN.dart';
import 'package:learnswift/data/courses/Python/pythonControlFlow/pythonControlFlowModelEN.dart';
import 'package:learnswift/data/courses/Python/pythonDataAnalysis/pythonDataAnalysisModelEN.dart';
import 'package:learnswift/data/courses/Python/pythonErrorHandling/pythonErrorHandlingModelEN.dart';
import 'package:learnswift/data/courses/Python/pythonModules/pythonModulesModelEN.dart';
import 'package:learnswift/data/courses/Python/pythonOOP/pythonOOPModelEN.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonControlFlow/pythonControlFlowExMain.dart';
import '../../../Screens/Courses/python/pythonDataStructures/DataStructuresExMain.dart';
import '../../../Screens/Courses/python/pythonFunctions/pythonFunctionExMain.dart';
import '../../courses/Python/pythonDataStructures/pythonDataStructuresModelEN.dart';
import '../../courses/Python/pythonFileHandling/pythonFileHandlingModelEN.dart';
import '../../courses/Python/pythonFunctions/pythonFunctionsModelEN.dart';

List<CoursesMainModel> coursesPythonMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'Python Basics',
    catExercise: pyBasicsExModelListEN,
    description: "pythonCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PythonBasicsExMain(
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
    generalName: 'Control Flow',
    catExercise: pythonControlFlowModelEN,
    description: "pythonCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ControlFlowExMain(
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
    generalName: 'Functions',
    catExercise: pythonFunctionsModelEN,
    description: "pythonCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        FunctionsExMain(
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
    generalName: 'Data Structures',
    catExercise: pythonDataStructuresModelEN,
    description: "pythonCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        DataStructuresExMain(
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
    generalName: 'File Handling',
    catExercise: pythonFileHandlingModelEN,
    description: "pythonCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        FileHandlingExMain(
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
    generalName: 'Error Handling',
    catExercise: pythonErrorHandlingModelEN,
    description: "pythonCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ErrorHandlingExMain(
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
    generalName: 'Object-Oriented Programming',
    catExercise: pythonOOPModelEN,
    description: "pythonCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        OOPExMain(
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
    generalName: 'Modules and Libraries',
    catExercise: pythonModulesModelEN,
    description: "pythonCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ModulesLibrariesExMain(
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
    generalName: 'Working with APIs',
    catExercise: pythonAPIsModelEN,
    description: "pythonCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        APIsExMain(
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
    generalName: 'Python for Data Analysis',
    catExercise: pythonDataAnalysisModelEN,
    description: "pythonCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        DataAnalysisExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
];
