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
import '../../courses/Csharp/csharpBasics/csharpBasicsExModelListEN.dart';
import '../../courses/Csharp/csharpDataTypes/csharpDataTypesExModelListEN.dart';
import '../../courses/Csharp/csharpOperators/csharpOperatorsExModelListEN.dart';
import '../../courses/Csharp/csharpConditionals/csharpConditionalsExModelListEN.dart';
import '../../courses/Csharp/csharpSwitch/csharpSwitchExModelListEN.dart';
import '../../courses/Csharp/csharpLoops/csharpLoopsExModelListEN.dart';
import '../../courses/Csharp/csharpArrays/csharpArraysExModelListEN.dart';
import '../../courses/Csharp/csharpLists/csharpListsExModelListEN.dart';
import '../../courses/Csharp/csharpMethods/csharpMethodsExModelListEN.dart';
import '../../courses/Csharp/csharpOopBasics/csharpOopBasicsExModelListEN.dart';
import '../../courses/Csharp/csharpExceptions/csharpExceptionsExModelListEN.dart';

List<CoursesMainModel> coursesCsharpMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'C# Basics',
    catExercise: csharpBasicsModelEN,
    description: 'Start with the C# essentials: output, variables, and tiny expressions.',
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
    generalName: 'Data Types',
    catExercise: csharpDataTypesModelEN,
    description: 'Learn C# types like int, double, bool, and string with short tasks.',
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
    generalName: 'Operators',
    catExercise: csharpOperatorsModelEN,
    description: 'Practice arithmetic and comparison operators in C#.',
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
    generalName: 'Conditionals',
    catExercise: csharpConditionalsModelEN,
    description: 'Make decisions with if, else if, and boolean logic.',
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
    catExercise: csharpSwitchModelEN,
    description: 'Handle multiple cases cleanly with switch.',
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
    generalName: 'Loops',
    catExercise: csharpLoopsModelEN,
    description: 'Repeat actions with for, while, and foreach loops.',
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
    generalName: 'Arrays',
    catExercise: csharpArraysModelEN,
    description: 'Store fixed data in arrays and access elements.',
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
    generalName: 'Lists',
    catExercise: csharpListsModelEN,
    description: 'Work with List<T> to add, remove, and count items.',
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
    generalName: 'Methods',
    catExercise: csharpMethodsModelEN,
    description: 'Create methods to keep your code organized and reusable.',
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
    generalName: 'OOP Basics',
    catExercise: csharpOopBasicsModelEN,
    description: 'Build classes, objects, and simple OOP patterns.',
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
    generalName: 'Exceptions',
    catExercise: csharpExceptionsModelEN,
    description: 'Handle errors safely with try, catch, and guards.',
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
