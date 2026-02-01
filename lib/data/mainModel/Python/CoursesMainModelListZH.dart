
import 'package:learnswift/data/courses/Python/pythonControlFlow/pythonControlFlowModelZH.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';
import '../../../Screens/Courses/python/pythonControlFlow/pythonControlFlowExMain.dart';
import '../../../Screens/Courses/python/pythonFunctions/pythonFunctionExMain.dart';
import '../../courses/Python/pythonBasics/pyBasicsExModelListZH.dart';
import '../../courses/Python/pythonFunctions/pythonFunctionsModelZH.dart';


List<CoursesMainModel> coursesPythonMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: 'Python基础',
    catExercise: pyBasicsExModelListZH,
    description:
        '涵盖Python的基础概念，包括语法、变量和数据类型。为开始学习Python编程提供必要的基础知识。',
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
    description:
        '探索条件语句（如if-else）和循环语句（如for和while）。对于根据条件控制程序执行至关重要。',
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
    description:
        '介绍Python函数及其在模块化编程中的重要性。学习定义和调用函数以更好地组织代码。',
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
  /* CoursesMainModel(
    id: 3,
    generalName: '数据结构',
    catExercise: pythonDataStructuresModelZH,
    description:
        '涵盖Python中的列表、字典、集合和元组。对于高效存储、检索和操作数据集合至关重要。',
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
    description:
        '教授如何在Python中操作文件，包括读取、写入和管理文件。与外部数据源交互的关键技能。',
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
    generalName: '错误处理',
    catExercise: pythonErrorHandlingModelZH,
    description:
        '重点学习如何使用try-except块处理Python中的异常和错误。编写健壮且容错的应用程序的关键。',
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
    description:
        '介绍Python中的面向对象编程（OOP）概念，如类、对象、继承和多态。构建可扩展和可重用代码的基础。',
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
    description:
        '讲解如何使用和创建Python模块和库。充分利用预构建功能并将代码组织到单独文件中的关键技能。',
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
    description:
        '教授如何使用Python与Web API进行交互。检索和发送数据到外部服务的关键技能。',
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
    description:
        '通过使用NumPy和Pandas等库介绍数据分析的概念。高效处理和分析大型数据集的关键技能。',
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



