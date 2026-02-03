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
import '../../courses/Ruby/rbBasics/rbBasicsExModelListES.dart';
import '../../courses/Ruby/rbVariables/rbVariablesExModelListES.dart';
import '../../courses/Ruby/rbOperators/rbOperatorsExModelListES.dart';
import '../../courses/Ruby/rbConditionals/rbConditionalsExModelListES.dart';
import '../../courses/Ruby/rbCase/rbCaseExModelListES.dart';
import '../../courses/Ruby/rbLoops/rbLoopsExModelListES.dart';
import '../../courses/Ruby/rbArrays/rbArraysExModelListES.dart';
import '../../courses/Ruby/rbHashes/rbHashesExModelListES.dart';
import '../../courses/Ruby/rbStrings/rbStringsExModelListES.dart';
import '../../courses/Ruby/rbMethods/rbMethodsExModelListES.dart';
import '../../courses/Ruby/rbClasses/rbClassesExModelListES.dart';
import '../../courses/Ruby/rbModules/rbModulesExModelListES.dart';
import '../../courses/Ruby/rbInheritance/rbInheritanceExModelListES.dart';
import '../../courses/Ruby/rbExceptions/rbExceptionsExModelListES.dart';
import '../../courses/Ruby/rbBlocks/rbBlocksExModelListES.dart';

List<CoursesMainModel> coursesRubyMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "Fundamentos de Ruby", 
    catExercise: rbBasicsModelES,
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
    generalName: "Variables y Tipos", 
    catExercise: rbVariablesModelES,
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
    generalName: "Operadores", 
    catExercise: rbOperatorsModelES,
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
    generalName: "Condicionales", 
    catExercise: rbConditionalsModelES,
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
    generalName: "Sentencias Case", 
    catExercise: rbCaseModelES,
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
    generalName: "Bucles", 
    catExercise: rbLoopsModelES,
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
    generalName: "Arreglos", 
    catExercise: rbArraysModelES,
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
    catExercise: rbHashesModelES,
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
    generalName: "Cadenas", 
    catExercise: rbStringsModelES,
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
    generalName: "Métodos", 
    catExercise: rbMethodsModelES,
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
    generalName: "Clases", 
    catExercise: rbClassesModelES,
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
    generalName: "Módulos", 
    catExercise: rbModulesModelES,
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
    generalName: "Herencia", 
    catExercise: rbInheritanceModelES,
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
    generalName: "Excepciones", 
    catExercise: rbExceptionsModelES,
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
    generalName: "Bloques y Enumerables", 
    catExercise: rbBlocksModelES,
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
