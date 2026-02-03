
import 'package:learnswift/data/courses/Python/pythonControlFlow/pythonControlFlowModelZH.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';
import '../../../Screens/Courses/python/pythonControlFlow/pythonControlFlowExMain.dart';
import '../../../Screens/Courses/python/pythonDataStructures/DataStructuresExMain.dart';
import '../../../Screens/Courses/python/pythonFileHandling/PythonFileHandlingExMain.dart';
import '../../../Screens/Courses/python/pythonFunctions/pythonFunctionExMain.dart';
import '../../courses/Python/pythonBasics/pyBasicsExModelListZH.dart';
import '../../courses/Python/pythonDataStructures/pythonDataStructuresModelZH.dart';
import '../../courses/Python/pythonFileHandling/pythonFileHandlingModelZH.dart';
import '../../courses/Python/pythonFunctions/pythonFunctionsModelZH.dart';


List<CoursesMainModel> coursesPythonMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'Python基础',
    catExercise: pyBasicsExModelListZH,
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
    generalName: '控制流',
    catExercise: pythonControlFlowModelZH,
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
    generalName: '函数',
    catExercise: pythonFunctionsModelZH,
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
    generalName: '数据结构',
    catExercise: pythonDataStructuresModelZH,
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
    generalName: '文件操作',
    catExercise: pythonFileHandlingModelZH,
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
   /*  CoursesMainModel(
    id: 5,
    generalName: '错误处理',
    catExercise: pythonErrorHandlingModelZH,
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
    generalName: '面向对象编程',
    catExercise: pythonOOPModelZH,
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
    generalName: '模块和库',
    catExercise: pythonModulesModelZH,
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
    generalName: '使用API',
    catExercise: pythonAPIsModelZH,
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
    generalName: '数据分析入门',
    catExercise: pythonDataAnalysisModelZH,
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
 */ 
];


