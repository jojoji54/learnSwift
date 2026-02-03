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
import '../../courses/PHP/phpBasics/phpBasicsExModelListEN.dart';
import '../../courses/PHP/phpVariables/phpVariablesExModelListEN.dart';
import '../../courses/PHP/phpOperators/phpOperatorsExModelListEN.dart';
import '../../courses/PHP/phpConditionals/phpConditionalsExModelListEN.dart';
import '../../courses/PHP/phpSwitch/phpSwitchExModelListEN.dart';
import '../../courses/PHP/phpLoops/phpLoopsExModelListEN.dart';
import '../../courses/PHP/phpArrays/phpArraysExModelListEN.dart';
import '../../courses/PHP/phpAssociative/phpAssociativeExModelListEN.dart';
import '../../courses/PHP/phpStrings/phpStringsExModelListEN.dart';
import '../../courses/PHP/phpFunctions/phpFunctionsExModelListEN.dart';
import '../../courses/PHP/phpClasses/phpClassesExModelListEN.dart';
import '../../courses/PHP/phpConstructors/phpConstructorsExModelListEN.dart';
import '../../courses/PHP/phpInheritance/phpInheritanceExModelListEN.dart';
import '../../courses/PHP/phpExceptions/phpExceptionsExModelListEN.dart';
import '../../courses/PHP/phpArrayFunctions/phpArrayFunctionsExModelListEN.dart';

List<CoursesMainModel> coursesPhpMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "PHP Basics",
    catExercise: phpBasicsModelEN,
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
    generalName: "Variables and Types",
    catExercise: phpVariablesModelEN,
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
    generalName: "Operators",
    catExercise: phpOperatorsModelEN,
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
    generalName: "Conditionals",
    catExercise: phpConditionalsModelEN,
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
    catExercise: phpSwitchModelEN,
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
    generalName: "Loops",
    catExercise: phpLoopsModelEN,
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
    generalName: "Arrays",
    catExercise: phpArraysModelEN,
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
    generalName: "Associative Arrays",
    catExercise: phpAssociativeModelEN,
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
    generalName: "Strings",
    catExercise: phpStringsModelEN,
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
    generalName: "Functions",
    catExercise: phpFunctionsModelEN,
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
    generalName: "Classes",
    catExercise: phpClassesModelEN,
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
    generalName: "Constructors",
    catExercise: phpConstructorsModelEN,
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
    generalName: "Inheritance",
    catExercise: phpInheritanceModelEN,
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
    generalName: "Exceptions",
    catExercise: phpExceptionsModelEN,
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
    generalName: "Array Functions",
    catExercise: phpArrayFunctionsModelEN,
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