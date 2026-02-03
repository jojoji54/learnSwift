import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/ruby/rbBasics/rbBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbVariables/rbVariablesExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbOperators/rbOperatorsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbConditionals/rbConditionalsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbCase/rbCaseExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbLoops/rbLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbArrays/rbArraysExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbHashes/rbHashesExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbStrings/rbStringsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbMethods/rbMethodsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbClasses/rbClassesExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbModules/rbModulesExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbInheritance/rbInheritanceExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbExceptions/rbExceptionsExMain.dart';
import 'package:learnswift/Screens/Courses/ruby/rbBlocks/rbBlocksExMain.dart';
import '../../courses/Ruby/rbBasics/rbBasicsExModelListEN.dart';
import '../../courses/Ruby/rbVariables/rbVariablesExModelListEN.dart';
import '../../courses/Ruby/rbOperators/rbOperatorsExModelListEN.dart';
import '../../courses/Ruby/rbConditionals/rbConditionalsExModelListEN.dart';
import '../../courses/Ruby/rbCase/rbCaseExModelListEN.dart';
import '../../courses/Ruby/rbLoops/rbLoopsExModelListEN.dart';
import '../../courses/Ruby/rbArrays/rbArraysExModelListEN.dart';
import '../../courses/Ruby/rbHashes/rbHashesExModelListEN.dart';
import '../../courses/Ruby/rbStrings/rbStringsExModelListEN.dart';
import '../../courses/Ruby/rbMethods/rbMethodsExModelListEN.dart';
import '../../courses/Ruby/rbClasses/rbClassesExModelListEN.dart';
import '../../courses/Ruby/rbModules/rbModulesExModelListEN.dart';
import '../../courses/Ruby/rbInheritance/rbInheritanceExModelListEN.dart';
import '../../courses/Ruby/rbExceptions/rbExceptionsExModelListEN.dart';
import '../../courses/Ruby/rbBlocks/rbBlocksExModelListEN.dart';

List<CoursesMainModel> coursesRubyMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "Ruby Basics", 
    catExercise: rbBasicsModelEN,
    description: "rubyCat0InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyBasicsExMain(
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
    catExercise: rbVariablesModelEN,
    description: "rubyCat1InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyVariablesTypesExMain(
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
    catExercise: rbOperatorsModelEN,
    description: "rubyCat2InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyOperatorsExMain(
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
    catExercise: rbConditionalsModelEN,
    description: "rubyCat3InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyConditionalsExMain(
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
    generalName: "Case Statements", 
    catExercise: rbCaseModelEN,
    description: "rubyCat4InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyCaseStatementsExMain(
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
    catExercise: rbLoopsModelEN,
    description: "rubyCat5InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyLoopsExMain(
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
    catExercise: rbArraysModelEN,
    description: "rubyCat6InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyArraysExMain(
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
    generalName: "Hashes", 
    catExercise: rbHashesModelEN,
    description: "rubyCat7InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyHashesExMain(
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
    catExercise: rbStringsModelEN,
    description: "rubyCat8InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyStringsExMain(
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
    generalName: "Methods", 
    catExercise: rbMethodsModelEN,
    description: "rubyCat9InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyMethodsExMain(
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
    catExercise: rbClassesModelEN,
    description: "rubyCat10InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyClassesExMain(
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
    generalName: "Modules", 
    catExercise: rbModulesModelEN,
    description: "rubyCat11InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyModulesExMain(
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
    catExercise: rbInheritanceModelEN,
    description: "rubyCat12InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyInheritanceExMain(
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
    catExercise: rbExceptionsModelEN,
    description: "rubyCat13InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyExceptionsExMain(
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
    generalName: "Blocks and Enumerables", 
    catExercise: rbBlocksModelEN,
    description: "rubyCat14InfoContent", 
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        RubyBlocksEnumerablesExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
