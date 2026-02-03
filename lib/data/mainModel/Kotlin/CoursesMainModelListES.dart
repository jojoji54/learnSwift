import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktBasics/ktBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktVariables/ktVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktOperators/ktOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktConditionals/ktConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktWhen/ktWhenExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktLoops/ktLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktArrays/ktArraysExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktLists/ktListsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktMaps/ktMapsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktStrings/ktStringsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktFunctions/ktFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktClasses/ktClassesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktDataClasses/ktDataClassesExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktNullSafety/ktNullSafetyExMain.dart';
import 'package:learnswift/Screens/Courses/kotlin/ktCollections/ktCollectionsExMain.dart';
import '../../courses/Kotlin/ktBasics/ktBasicsExModelListES.dart';
import '../../courses/Kotlin/ktVariables/ktVariablesExModelListES.dart';
import '../../courses/Kotlin/ktOperators/ktOperatorsExModelListES.dart';
import '../../courses/Kotlin/ktConditionals/ktConditionalsExModelListES.dart';
import '../../courses/Kotlin/ktWhen/ktWhenExModelListES.dart';
import '../../courses/Kotlin/ktLoops/ktLoopsExModelListES.dart';
import '../../courses/Kotlin/ktArrays/ktArraysExModelListES.dart';
import '../../courses/Kotlin/ktLists/ktListsExModelListES.dart';
import '../../courses/Kotlin/ktMaps/ktMapsExModelListES.dart';
import '../../courses/Kotlin/ktStrings/ktStringsExModelListES.dart';
import '../../courses/Kotlin/ktFunctions/ktFunctionsExModelListES.dart';
import '../../courses/Kotlin/ktClasses/ktClassesExModelListES.dart';
import '../../courses/Kotlin/ktDataClasses/ktDataClassesExModelListES.dart';
import '../../courses/Kotlin/ktNullSafety/ktNullSafetyExModelListES.dart';
import '../../courses/Kotlin/ktCollections/ktCollectionsExModelListES.dart';

List<CoursesMainModel> coursesKotlinMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "Kotlin Básico",
    catExercise: ktBasicsModelES,
    description: "Empieza con impresión, valores simples y sintaxis básica de Kotlin.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinBasicsExMain(
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
    catExercise: ktVariablesModelES,
    description: "Usa val, var y tipos básicos como Int, Double, String y Boolean.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinVariablesExMain(
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
    catExercise: ktOperatorsModelES,
    description: "Practica operadores aritméticos, de comparación y lógicos en Kotlin.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinOperatorsExMain(
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
    catExercise: ktConditionalsModelES,
    description: "Controla el flujo con if y else en Kotlin.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinConditionalsExMain(
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
    generalName: "When",
    catExercise: ktWhenModelES,
    description: "Usa when para manejar múltiples casos con claridad.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinWhenExMain(
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
    catExercise: ktLoopsModelES,
    description: "Repite tareas con bucles for y while.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinLoopsExMain(
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
    catExercise: ktArraysModelES,
    description: "Crea arreglos y accede a elementos por índice.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinArraysExMain(
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
    catExercise: ktListsModelES,
    description: "Trabaja con listOf y mutableListOf.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinListsExMain(
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
    generalName: "Mapas",
    catExercise: ktMapsModelES,
    description: "Guarda datos clave-valor con mapOf y mutableMapOf.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinMapsExMain(
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
    catExercise: ktStringsModelES,
    description: "Usa operaciones de cadenas como length, replace y contains.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinStringsExMain(
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
    generalName: "Funciones",
    catExercise: ktFunctionsModelES,
    description: "Define funciones con parámetros y valores de retorno.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinFunctionsExMain(
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
    generalName: "Clases",
    catExercise: ktClassesModelES,
    description: "Crea clases, propiedades e instancias simples.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinClassesExMain(
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
    generalName: "Data Classes",
    catExercise: ktDataClassesModelES,
    description: "Usa data class para guardar datos de forma clara.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinDataclassesExMain(
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
    generalName: "Null Safety",
    catExercise: ktNullSafetyModelES,
    description: "Trabaja con tipos anulables, safe calls y operador Elvis.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinNullsafetyExMain(
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
    generalName: "Práctica de Colecciones",
    catExercise: ktCollectionsModelES,
    description: "Practica operaciones de colecciones como filter y map.",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        KotlinCollectionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];