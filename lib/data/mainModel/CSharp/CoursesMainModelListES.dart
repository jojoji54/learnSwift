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
import '../../courses/CSharp/csBasics/csBasicsExModelListES.dart';
import '../../courses/CSharp/csVariables/csVariablesExModelListES.dart';
import '../../courses/CSharp/csOperators/csOperatorsExModelListES.dart';
import '../../courses/CSharp/csConditionals/csConditionalsExModelListES.dart';
import '../../courses/CSharp/csSwitch/csSwitchExModelListES.dart';
import '../../courses/CSharp/csLoops/csLoopsExModelListES.dart';
import '../../courses/CSharp/csArrays/csArraysExModelListES.dart';
import '../../courses/CSharp/csLists/csListsExModelListES.dart';
import '../../courses/CSharp/csDictionaries/csDictionariesExModelListES.dart';
import '../../courses/CSharp/csStrings/csStringsExModelListES.dart';
import '../../courses/CSharp/csMethods/csMethodsExModelListES.dart';
import '../../courses/CSharp/csClasses/csClassesExModelListES.dart';
import '../../courses/CSharp/csStructsEnums/csStructsEnumsExModelListES.dart';
import '../../courses/CSharp/csExceptions/csExceptionsExModelListES.dart';
import '../../courses/CSharp/csLinq/csLinqExModelListES.dart';

List<CoursesMainModel> coursesCSharpMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "C# Básico",
    catExercise: csBasicsModelES,
    description: "csharpCat0InfoContent",
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
    generalName: "Variables y Tipos",
    catExercise: csVariablesModelES,
    description: "csharpCat1InfoContent",
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
    generalName: "Operadores",
    catExercise: csOperatorsModelES,
    description: "csharpCat2InfoContent",
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
    generalName: "Condicionales",
    catExercise: csConditionalsModelES,
    description: "csharpCat3InfoContent",
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
    catExercise: csSwitchModelES,
    description: "csharpCat4InfoContent",
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
    generalName: "Bucles",
    catExercise: csLoopsModelES,
    description: "csharpCat5InfoContent",
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
    generalName: "Arreglos",
    catExercise: csArraysModelES,
    description: "csharpCat6InfoContent",
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
    generalName: "Listas",
    catExercise: csListsModelES,
    description: "csharpCat7InfoContent",
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
    generalName: "Diccionarios",
    catExercise: csDictionariesModelES,
    description: "csharpCat8InfoContent",
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
    generalName: "Cadenas",
    catExercise: csStringsModelES,
    description: "csharpCat9InfoContent",
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
    generalName: "Métodos",
    catExercise: csMethodsModelES,
    description: "csharpCat10InfoContent",
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
    generalName: "Clases y Objetos",
    catExercise: csClassesModelES,
    description: "csharpCat11InfoContent",
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
    generalName: "Structs y Enums",
    catExercise: csStructsEnumsModelES,
    description: "csharpCat12InfoContent",
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
    generalName: "Excepciones",
    catExercise: csExceptionsModelES,
    description: "csharpCat13InfoContent",
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
    catExercise: csLinqModelES,
    description: "csharpCat14InfoContent",
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