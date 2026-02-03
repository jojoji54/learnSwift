import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/php/phpBasics/phpBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpVariables/phpVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpOperators/phpOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpConditionals/phpConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpSwitch/phpSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpLoops/phpLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpArrays/phpArraysExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpAssociative/phpAssociativeExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpStrings/phpStringsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpFunctions/phpFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpClasses/phpClassesExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpConstructors/phpConstructorsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpInheritance/phpInheritanceExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpExceptions/phpExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/php/phpArrayFunctions/phpArrayFunctionsExMain.dart';
import '../../courses/PHP/phpBasics/phpBasicsExModelListES.dart';
import '../../courses/PHP/phpVariables/phpVariablesExModelListES.dart';
import '../../courses/PHP/phpOperators/phpOperatorsExModelListES.dart';
import '../../courses/PHP/phpConditionals/phpConditionalsExModelListES.dart';
import '../../courses/PHP/phpSwitch/phpSwitchExModelListES.dart';
import '../../courses/PHP/phpLoops/phpLoopsExModelListES.dart';
import '../../courses/PHP/phpArrays/phpArraysExModelListES.dart';
import '../../courses/PHP/phpAssociative/phpAssociativeExModelListES.dart';
import '../../courses/PHP/phpStrings/phpStringsExModelListES.dart';
import '../../courses/PHP/phpFunctions/phpFunctionsExModelListES.dart';
import '../../courses/PHP/phpClasses/phpClassesExModelListES.dart';
import '../../courses/PHP/phpConstructors/phpConstructorsExModelListES.dart';
import '../../courses/PHP/phpInheritance/phpInheritanceExModelListES.dart';
import '../../courses/PHP/phpExceptions/phpExceptionsExModelListES.dart';
import '../../courses/PHP/phpArrayFunctions/phpArrayFunctionsExModelListES.dart';

List<CoursesMainModel> coursesPhpMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "PHP Básico",
    catExercise: phpBasicsModelES,
    description: "phpCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpBasicsExMain(
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
    catExercise: phpVariablesModelES,
    description: "phpCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpVariablesExMain(
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
    catExercise: phpOperatorsModelES,
    description: "phpCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpOperatorsExMain(
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
    catExercise: phpConditionalsModelES,
    description: "phpCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpConditionalsExMain(
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
    catExercise: phpSwitchModelES,
    description: "phpCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpSwitchExMain(
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
    catExercise: phpLoopsModelES,
    description: "phpCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpLoopsExMain(
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
    catExercise: phpArraysModelES,
    description: "phpCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpArraysExMain(
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
    generalName: "Arreglos Asociativos",
    catExercise: phpAssociativeModelES,
    description: "phpCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpAssociativeExMain(
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
    generalName: "Cadenas",
    catExercise: phpStringsModelES,
    description: "phpCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpStringsExMain(
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
    generalName: "Funciones",
    catExercise: phpFunctionsModelES,
    description: "phpCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpFunctionsExMain(
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
    generalName: "Clases",
    catExercise: phpClassesModelES,
    description: "phpCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpClassesExMain(
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
    generalName: "Constructores",
    catExercise: phpConstructorsModelES,
    description: "phpCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpConstructorsExMain(
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
    generalName: "Herencia",
    catExercise: phpInheritanceModelES,
    description: "phpCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpInheritanceExMain(
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
    catExercise: phpExceptionsModelES,
    description: "phpCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpExceptionsExMain(
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
    generalName: "Funciones de Arreglo",
    catExercise: phpArrayFunctionsModelES,
    description: "phpCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PhpArrayfunctionsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];