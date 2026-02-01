import 'package:learnswift/Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';
import 'package:learnswift/data/courses/Python/pythonBasics/pyBasicsExModelListEN.dart';
import 'package:learnswift/data/courses/Python/pythonControlFlow/pythonControlFlowModelEN.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonControlFlow/pythonControlFlowExMain.dart';

List<CoursesMainModel> coursesPythonMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'Python Basics',
    catExercise: pyBasicsExModelListEN,
    description:
        'Covers the fundamental concepts of Python, including syntax, variables, and data types. Provides the essential building blocks to start coding in Python.',
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
    description:
        'Explores conditional statements like if-else and loops such as for and while. Crucial for controlling program execution based on conditions.',
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
  /*CoursesMainModel(
    id: 2,
    generalName: 'Functions',
    catExercise: pythonFunctionsModelEN,
    description:
        'Introduces Python functions and their importance in modular programming. Learn to define and call functions for better code organization.',
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
    description:
        'Covers Python lists, dictionaries, sets, and tuples. Essential for storing, retrieving, and manipulating collections of data efficiently.',
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
    description:
        'Teaches how to work with files in Python, including reading, writing, and managing files. Key for interacting with external data sources.',
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
    description:
        'Focuses on handling exceptions and errors in Python using try-except blocks. Crucial for writing robust and error-tolerant applications.',
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
    description:
        'Introduces OOP concepts in Python, such as classes, objects, inheritance, and polymorphism. Essential for building scalable and reusable code.',
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
    description:
        'Explains how to use and create Python modules and libraries. Key for leveraging pre-built functionality and organizing code into separate files.',
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
    description:
        'Teaches how to interact with web APIs using Python. Essential for retrieving and sending data to external services.',
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
    description:
        'Introduces data analysis concepts using libraries like NumPy and Pandas. Crucial for processing and analyzing large datasets efficiently.',
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
  ), */
];
