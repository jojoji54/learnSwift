import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/csharp/csBasics/csBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csVariables/csVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csOperators/csOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csConditionals/csConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csSwitch/csSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLoops/csLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csArrays/csArraysExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLists/csListsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csDictionaries/csDictionariesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csStrings/csStringsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csMethods/csMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csClasses/csClassesExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csStructsEnums/csStructsEnumsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csExceptions/csExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/csharp/csLinq/csLinqExMain.dart';
import '../../courses/CSharp/csBasics/csBasicsExModelListEN.dart';
import '../../courses/CSharp/csVariables/csVariablesExModelListEN.dart';
import '../../courses/CSharp/csOperators/csOperatorsExModelListEN.dart';
import '../../courses/CSharp/csConditionals/csConditionalsExModelListEN.dart';
import '../../courses/CSharp/csSwitch/csSwitchExModelListEN.dart';
import '../../courses/CSharp/csLoops/csLoopsExModelListEN.dart';
import '../../courses/CSharp/csArrays/csArraysExModelListEN.dart';
import '../../courses/CSharp/csLists/csListsExModelListEN.dart';
import '../../courses/CSharp/csDictionaries/csDictionariesExModelListEN.dart';
import '../../courses/CSharp/csStrings/csStringsExModelListEN.dart';
import '../../courses/CSharp/csMethods/csMethodsExModelListEN.dart';
import '../../courses/CSharp/csClasses/csClassesExModelListEN.dart';
import '../../courses/CSharp/csStructsEnums/csStructsEnumsExModelListEN.dart';
import '../../courses/CSharp/csExceptions/csExceptionsExModelListEN.dart';
import '../../courses/CSharp/csLinq/csLinqExModelListEN.dart';

List<CoursesMainModel> coursesCSharpMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "C# Basics",
    catExercise: csBasicsModelEN,
    description: "Start with the essentials: printing, variables, and simple values in C#.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpBasicsExMain(
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
    generalName: "Variables and Types",
    catExercise: csVariablesModelEN,
    description: "Practice declaring typed variables and reading their values.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpVariablesExMain(
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
    generalName: "Operators",
    catExercise: csOperatorsModelEN,
    description: "Work with arithmetic, comparison, and logical operators in C#.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpOperatorsExMain(
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
    generalName: "Conditionals",
    catExercise: csConditionalsModelEN,
    description: "Control flow with if, else, and simple decisions.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpConditionalsExMain(
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
    generalName: "Switch",
    catExercise: csSwitchModelEN,
    description: "Choose paths with switch and clean case logic.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpSwitchExMain(
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
    generalName: "Loops",
    catExercise: csLoopsModelEN,
    description: "Repeat tasks using for, while, and foreach patterns.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpLoopsExMain(
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
    generalName: "Arrays",
    catExercise: csArraysModelEN,
    description: "Create arrays, access indexes, and read lengths.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpArraysExMain(
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
    generalName: "Lists",
    catExercise: csListsModelEN,
    description: "Use List<T> to add, remove, and count items.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpListsExMain(
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
    generalName: "Dictionaries",
    catExercise: csDictionariesModelEN,
    description: "Store key-value data with Dictionary and read values quickly.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpDictionariesExMain(
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
    generalName: "Strings",
    catExercise: csStringsModelEN,
    description: "Explore common string operations like length and replace.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpStringsExMain(
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
    generalName: "Methods",
    catExercise: csMethodsModelEN,
    description: "Write methods with parameters and return values.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpMethodsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

  CoursesMainModel(
    id: 11,
    generalName: "Classes and Objects",
    catExercise: csClassesModelEN,
    description: "Model objects using classes, fields, and simple constructors.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpClassesExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

  CoursesMainModel(
    id: 12,
    generalName: "Structs and Enums",
    catExercise: csStructsEnumsModelEN,
    description: "Use structs and enums to organize compact data.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpStructsenumsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

  CoursesMainModel(
    id: 13,
    generalName: "Exceptions",
    catExercise: csExceptionsModelEN,
    description: "Handle errors with try, catch, and safe logic.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpExceptionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

  CoursesMainModel(
    id: 14,
    generalName: "LINQ",
    catExercise: csLinqModelEN,
    description: "Query collections using LINQ methods like Where and Select.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CSharpLinqExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];