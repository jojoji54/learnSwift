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
import '../../courses/Kotlin/ktBasics/ktBasicsExModelListEN.dart';
import '../../courses/Kotlin/ktVariables/ktVariablesExModelListEN.dart';
import '../../courses/Kotlin/ktOperators/ktOperatorsExModelListEN.dart';
import '../../courses/Kotlin/ktConditionals/ktConditionalsExModelListEN.dart';
import '../../courses/Kotlin/ktWhen/ktWhenExModelListEN.dart';
import '../../courses/Kotlin/ktLoops/ktLoopsExModelListEN.dart';
import '../../courses/Kotlin/ktArrays/ktArraysExModelListEN.dart';
import '../../courses/Kotlin/ktLists/ktListsExModelListEN.dart';
import '../../courses/Kotlin/ktMaps/ktMapsExModelListEN.dart';
import '../../courses/Kotlin/ktStrings/ktStringsExModelListEN.dart';
import '../../courses/Kotlin/ktFunctions/ktFunctionsExModelListEN.dart';
import '../../courses/Kotlin/ktClasses/ktClassesExModelListEN.dart';
import '../../courses/Kotlin/ktDataClasses/ktDataClassesExModelListEN.dart';
import '../../courses/Kotlin/ktNullSafety/ktNullSafetyExModelListEN.dart';
import '../../courses/Kotlin/ktCollections/ktCollectionsExModelListEN.dart';

List<CoursesMainModel> coursesKotlinMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "Kotlin Basics",
    catExercise: ktBasicsModelEN,
    description: "kotlinCat0InfoContent",
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
    generalName: "Variables and Types",
    catExercise: ktVariablesModelEN,
    description: "kotlinCat1InfoContent",
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
    generalName: "Operators",
    catExercise: ktOperatorsModelEN,
    description: "kotlinCat2InfoContent",
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
    generalName: "Conditionals",
    catExercise: ktConditionalsModelEN,
    description: "kotlinCat3InfoContent",
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
    generalName: "When Expressions",
    catExercise: ktWhenModelEN,
    description: "kotlinCat4InfoContent",
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
    generalName: "Loops",
    catExercise: ktLoopsModelEN,
    description: "kotlinCat5InfoContent",
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
    generalName: "Arrays",
    catExercise: ktArraysModelEN,
    description: "kotlinCat6InfoContent",
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
    generalName: "Lists",
    catExercise: ktListsModelEN,
    description: "kotlinCat7InfoContent",
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
    generalName: "Maps",
    catExercise: ktMapsModelEN,
    description: "kotlinCat8InfoContent",
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
    generalName: "Strings",
    catExercise: ktStringsModelEN,
    description: "kotlinCat9InfoContent",
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
    generalName: "Functions",
    catExercise: ktFunctionsModelEN,
    description: "kotlinCat10InfoContent",
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
    generalName: "Classes",
    catExercise: ktClassesModelEN,
    description: "kotlinCat11InfoContent",
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
    catExercise: ktDataClassesModelEN,
    description: "kotlinCat12InfoContent",
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
    catExercise: ktNullSafetyModelEN,
    description: "kotlinCat13InfoContent",
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
    generalName: "Collections Practice",
    catExercise: ktCollectionsModelEN,
    description: "kotlinCat14InfoContent",
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