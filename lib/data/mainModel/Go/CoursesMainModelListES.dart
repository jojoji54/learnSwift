import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/go/goBasics/goBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goVariables/goVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goOperators/goOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goConditionals/goConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goSwitch/goSwitchExMain.dart';
import 'package:learnswift/Screens/Courses/go/goLoops/goLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goSlices/goSlicesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goMaps/goMapsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goStrings/goStringsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goFunctions/goFunctionsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goStructs/goStructsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goInterfaces/goInterfacesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goErrors/goErrorsExMain.dart';
import 'package:learnswift/Screens/Courses/go/goGoroutines/goGoroutinesExMain.dart';
import 'package:learnswift/Screens/Courses/go/goChannels/goChannelsExMain.dart';
import '../../courses/Go/goBasics/goBasicsExModelListES.dart';
import '../../courses/Go/goVariables/goVariablesExModelListES.dart';
import '../../courses/Go/goOperators/goOperatorsExModelListES.dart';
import '../../courses/Go/goConditionals/goConditionalsExModelListES.dart';
import '../../courses/Go/goSwitch/goSwitchExModelListES.dart';
import '../../courses/Go/goLoops/goLoopsExModelListES.dart';
import '../../courses/Go/goSlices/goSlicesExModelListES.dart';
import '../../courses/Go/goMaps/goMapsExModelListES.dart';
import '../../courses/Go/goStrings/goStringsExModelListES.dart';
import '../../courses/Go/goFunctions/goFunctionsExModelListES.dart';
import '../../courses/Go/goStructs/goStructsExModelListES.dart';
import '../../courses/Go/goInterfaces/goInterfacesExModelListES.dart';
import '../../courses/Go/goErrors/goErrorsExModelListES.dart';
import '../../courses/Go/goGoroutines/goGoroutinesExModelListES.dart';
import '../../courses/Go/goChannels/goChannelsExModelListES.dart';

List<CoursesMainModel> coursesGoMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "Go Básico",
    catExercise: goBasicsModelES,
    description: "goCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoBasicsExMain(
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
    catExercise: goVariablesModelES,
    description: "goCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoVariablesExMain(
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
    catExercise: goOperatorsModelES,
    description: "goCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoOperatorsExMain(
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
    catExercise: goConditionalsModelES,
    description: "goCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoConditionalsExMain(
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
    catExercise: goSwitchModelES,
    description: "goCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoSwitchExMain(
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
    catExercise: goLoopsModelES,
    description: "goCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoLoopsExMain(
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
    generalName: "Slices",
    catExercise: goSlicesModelES,
    description: "goCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoSlicesExMain(
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
    generalName: "Mapas",
    catExercise: goMapsModelES,
    description: "goCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoMapsExMain(
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
    catExercise: goStringsModelES,
    description: "goCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoStringsExMain(
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
    catExercise: goFunctionsModelES,
    description: "goCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoFunctionsExMain(
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
    generalName: "Structs",
    catExercise: goStructsModelES,
    description: "goCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoStructsExMain(
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
    generalName: "Interfaces",
    catExercise: goInterfacesModelES,
    description: "goCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoInterfacesExMain(
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
    generalName: "Manejo de Errores",
    catExercise: goErrorsModelES,
    description: "goCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoErrorsExMain(
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
    generalName: "Goroutines",
    catExercise: goGoroutinesModelES,
    description: "goCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoGoroutinesExMain(
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
    generalName: "Canales",
    catExercise: goChannelsModelES,
    description: "goCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        GoChannelsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
