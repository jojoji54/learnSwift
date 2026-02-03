import 'package:learnswift/Screens/Courses/python/pythonAPIs/pythonAPIsExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/pythonDataAnalysisExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/pythonErrorHandlingExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonModules/pythonModulesExMain.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/pythonOOPExMain.dart';
import 'package:learnswift/data/courses/Python/pythonAPIs/pythonAPIsModelES.dart';
import 'package:learnswift/data/courses/Python/pythonBasics/pyBasicsExModelListES.dart';
import 'package:learnswift/data/courses/Python/pythonControlFlow/pythonControlFlowModelES.dart';
import 'package:learnswift/data/courses/Python/pythonDataAnalysis/pythonDataAnalysisModelES.dart';
import 'package:learnswift/data/courses/Python/pythonErrorHandling/pythonErrorHandlingModelES.dart';
import 'package:learnswift/data/courses/Python/pythonModules/pythonModulesModelES.dart';
import 'package:learnswift/data/courses/Python/pythonOOP/pythonOOPModelES.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';
import '../../../Screens/Courses/python/pythonControlFlow/pythonControlFlowExMain.dart';
import '../../../Screens/Courses/python/pythonDataStructures/DataStructuresExMain.dart';
import '../../../Screens/Courses/python/pythonFileHandling/PythonFileHandlingExMain.dart';
import '../../../Screens/Courses/python/pythonFunctions/pythonFunctionExMain.dart';
import '../../courses/Python/pythonDataStructures/pythonDataStructuresModelES.dart';
import '../../courses/Python/pythonFileHandling/pythonFileHandlingModelES.dart';
import '../../courses/Python/pythonFunctions/pythonFunctionsModelES.dart';

List<CoursesMainModel> coursesPythonMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Conceptos básicos',
    catExercise: pyBasicsExModelListES,
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
    generalName: 'Control de Flujo',
    catExercise: pythonControlFlowModelES,
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
    generalName: 'Funciones',
    catExercise: pythonFunctionsModelES,
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
    generalName: 'Estructuras de Datos',
    catExercise: pythonDataStructuresModelES,
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
    generalName: 'Manejo de Archivos',
    catExercise: pythonFileHandlingModelES,
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
    generalName: 'Manejo de Errores',
    catExercise: pythonErrorHandlingModelES,
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
    generalName: 'Programación Orientada a Objetos',
    catExercise: pythonOOPModelES,
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
    generalName: 'Módulos y Librerías',
    catExercise: pythonModulesModelES,
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
    generalName: 'Trabajando con APIs',
    catExercise: pythonAPIsModelES,
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
    generalName: 'Python para Análisis de Datos',
    catExercise: pythonDataAnalysisModelES,
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
