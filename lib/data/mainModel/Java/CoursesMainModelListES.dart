import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/java/javaBasics/javaBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaDataTypes/javaDataTypesExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaOperators/javaOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaConditionals/javaConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaSwitch/javaSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaLoops/javaLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaArrays/javaArraysExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaArrayList/javaArrayListExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaMethods/javaMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaOopBasics/javaOopBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/java/javaExceptions/javaExceptionsExMain.dart';
import '../../courses/Java/javaBasics/javaBasicsExModelListES.dart';
import '../../courses/Java/javaDataTypes/javaDataTypesExModelListES.dart';
import '../../courses/Java/javaOperators/javaOperatorsExModelListES.dart';
import '../../courses/Java/javaConditionals/javaConditionalsExModelListES.dart';
import '../../courses/Java/javaSwitch/javaSwitchExModelListES.dart';
import '../../courses/Java/javaLoops/javaLoopsExModelListES.dart';
import '../../courses/Java/javaArrays/javaArraysExModelListES.dart';
import '../../courses/Java/javaArrayList/javaArrayListExModelListES.dart';
import '../../courses/Java/javaMethods/javaMethodsExModelListES.dart';
import '../../courses/Java/javaOopBasics/javaOopBasicsExModelListES.dart';
import '../../courses/Java/javaExceptions/javaExceptionsExModelListES.dart';

List<CoursesMainModel> coursesJavaMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Java Basics',
    catExercise: javaBasicsModelES,
    description: 'Empieza con los fundamentos de Java: salida, variables y expresiones simples. Perfecto para tus primeros pasos en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaBasicsExMain(
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
    catExercise: javaDataTypesModelES,
    description: 'Aprende tipos de datos en Java como int, double, char y boolean con tareas prácticas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaDataTypesExMain(
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
    catExercise: javaOperatorsModelES,
    description: 'Practica operadores aritméticos, de comparación y lógicos en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaOperatorsExMain(
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
    catExercise: javaConditionalsModelES,
    description: 'Usa if, else y el operador ternario para controlar el flujo en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaConditionalsExMain(
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
    catExercise: javaSwitchModelES,
    description: 'Maneja múltiples casos con switch en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaSwitchExMain(
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
    catExercise: javaLoopsModelES,
    description: 'Domina los bucles for, while y do while en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaLoopsExMain(
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
    catExercise: javaArraysModelES,
    description: 'Crea, lee y actualiza arrays en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaArraysExMain(
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
    generalName: 'ArrayList',
    catExercise: javaArrayListModelES,
    description: 'Trabaja con ArrayList: add, get, remove y size.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaArrayListExMain(
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
    catExercise: javaMethodsModelES,
    description: 'Define y llama métodos con parámetros y valores de retorno.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaMethodsExMain(
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
    generalName: 'POO Básica',
    catExercise: javaOopBasicsModelES,
    description: 'Explora clases, objetos, campos y constructores en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaOopBasicsExMain(
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
    catExercise: javaExceptionsModelES,
    description: 'Maneja errores con try, catch y throw en Java.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        JavaExceptionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
