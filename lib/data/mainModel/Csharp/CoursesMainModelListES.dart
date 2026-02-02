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
import '../../courses/Csharp/csharpBasics/csharpBasicsExModelListES.dart';
import '../../courses/Csharp/csharpDataTypes/csharpDataTypesExModelListES.dart';
import '../../courses/Csharp/csharpOperators/csharpOperatorsExModelListES.dart';
import '../../courses/Csharp/csharpConditionals/csharpConditionalsExModelListES.dart';
import '../../courses/Csharp/csharpSwitch/csharpSwitchExModelListES.dart';
import '../../courses/Csharp/csharpLoops/csharpLoopsExModelListES.dart';
import '../../courses/Csharp/csharpArrays/csharpArraysExModelListES.dart';
import '../../courses/Csharp/csharpLists/csharpListsExModelListES.dart';
import '../../courses/Csharp/csharpMethods/csharpMethodsExModelListES.dart';
import '../../courses/Csharp/csharpOopBasics/csharpOopBasicsExModelListES.dart';
import '../../courses/Csharp/csharpExceptions/csharpExceptionsExModelListES.dart';

List<CoursesMainModel> coursesCsharpMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Fundamentos de C#',
    catExercise: csharpBasicsModelES,
    description: 'Empieza con lo esencial de C#: salida, variables y expresiones simples.',
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
    generalName: 'Tipos de datos',
    catExercise: csharpDataTypesModelES,
    description: 'Aprende tipos de C# como int, double, bool y string con tareas cortas.',
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
    generalName: 'Operadores',
    catExercise: csharpOperatorsModelES,
    description: 'Practica operadores aritméticos y de comparación en C#.',
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
    generalName: 'Condicionales',
    catExercise: csharpConditionalsModelES,
    description: 'Toma decisiones con if, else if y lógica booleana.',
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
    catExercise: csharpSwitchModelES,
    description: 'Maneja varios casos con switch.',
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
    generalName: 'Bucles',
    catExercise: csharpLoopsModelES,
    description: 'Repite acciones con bucles for, while y foreach.',
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
    catExercise: csharpArraysModelES,
    description: 'Guarda datos fijos en arrays y accede a elementos.',
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
    generalName: 'Listas',
    catExercise: csharpListsModelES,
    description: 'Trabaja con List<T> para agregar, eliminar y contar items.',
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
    generalName: 'Métodos',
    catExercise: csharpMethodsModelES,
    description: 'Crea métodos para mantener tu código ordenado y reutilizable.',
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
    generalName: 'POO básica',
    catExercise: csharpOopBasicsModelES,
    description: 'Construye clases, objetos y patrones OOP simples.',
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
    generalName: 'Excepciones',
    catExercise: csharpExceptionsModelES,
    description: 'Maneja errores con try, catch y validaciones.',
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
