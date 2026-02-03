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
import '../../courses/Go/goBasics/goBasicsExModelListEN.dart';
import '../../courses/Go/goVariables/goVariablesExModelListEN.dart';
import '../../courses/Go/goOperators/goOperatorsExModelListEN.dart';
import '../../courses/Go/goConditionals/goConditionalsExModelListEN.dart';
import '../../courses/Go/goSwitch/goSwitchExModelListEN.dart';
import '../../courses/Go/goLoops/goLoopsExModelListEN.dart';
import '../../courses/Go/goSlices/goSlicesExModelListEN.dart';
import '../../courses/Go/goMaps/goMapsExModelListEN.dart';
import '../../courses/Go/goStrings/goStringsExModelListEN.dart';
import '../../courses/Go/goFunctions/goFunctionsExModelListEN.dart';
import '../../courses/Go/goStructs/goStructsExModelListEN.dart';
import '../../courses/Go/goInterfaces/goInterfacesExModelListEN.dart';
import '../../courses/Go/goErrors/goErrorsExModelListEN.dart';
import '../../courses/Go/goGoroutines/goGoroutinesExModelListEN.dart';
import '../../courses/Go/goChannels/goChannelsExModelListEN.dart';

List<CoursesMainModel> coursesGoMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "Channels",
    catExercise: goBasicsModelEN,
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
    generalName: "Variables and Types",
    catExercise: goVariablesModelEN,
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
    generalName: "Operators",
    catExercise: goOperatorsModelEN,
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
    generalName: "Conditionals",
    catExercise: goConditionalsModelEN,
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
    catExercise: goSwitchModelEN,
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
    generalName: "Loops",
    catExercise: goLoopsModelEN,
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
    catExercise: goSlicesModelEN,
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
    generalName: "Maps",
    catExercise: goMapsModelEN,
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
    generalName: "Strings",
    catExercise: goStringsModelEN,
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
    generalName: "Functions",
    catExercise: goFunctionsModelEN,
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
    catExercise: goStructsModelEN,
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
    catExercise: goInterfacesModelEN,
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
    generalName: "Error Handling",
    catExercise: goErrorsModelEN,
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
    catExercise: goGoroutinesModelEN,
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
    generalName: "Channels",
    catExercise: goChannelsModelEN,
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
