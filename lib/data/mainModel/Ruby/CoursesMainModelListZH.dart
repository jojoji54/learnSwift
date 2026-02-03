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
import '../../courses/Ruby/rbBasics/rbBasicsExModelListZH.dart';
import '../../courses/Ruby/rbVariables/rbVariablesExModelListZH.dart';
import '../../courses/Ruby/rbOperators/rbOperatorsExModelListZH.dart';
import '../../courses/Ruby/rbConditionals/rbConditionalsExModelListZH.dart';
import '../../courses/Ruby/rbCase/rbCaseExModelListZH.dart';
import '../../courses/Ruby/rbLoops/rbLoopsExModelListZH.dart';
import '../../courses/Ruby/rbArrays/rbArraysExModelListZH.dart';
import '../../courses/Ruby/rbHashes/rbHashesExModelListZH.dart';
import '../../courses/Ruby/rbStrings/rbStringsExModelListZH.dart';
import '../../courses/Ruby/rbMethods/rbMethodsExModelListZH.dart';
import '../../courses/Ruby/rbClasses/rbClassesExModelListZH.dart';
import '../../courses/Ruby/rbModules/rbModulesExModelListZH.dart';
import '../../courses/Ruby/rbInheritance/rbInheritanceExModelListZH.dart';
import '../../courses/Ruby/rbExceptions/rbExceptionsExModelListZH.dart';
import '../../courses/Ruby/rbBlocks/rbBlocksExModelListZH.dart';

List<CoursesMainModel> coursesRubyMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "Ruby 基础", 
    catExercise: rbBasicsModelZH,
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
    generalName: "变量和类型", 
    catExercise: rbVariablesModelZH,
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
    generalName: "运算符", 
    catExercise: rbOperatorsModelZH,
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
    generalName: "条件判断", 
    catExercise: rbConditionalsModelZH,
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
    generalName: "Case 语句", 
    catExercise: rbCaseModelZH,
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
    generalName: "循环", 
    catExercise: rbLoopsModelZH,
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
    generalName: "数组", 
    catExercise: rbArraysModelZH,
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
    generalName: "哈希", 
    catExercise: rbHashesModelZH,
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
    generalName: "字符串", 
    catExercise: rbStringsModelZH,
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
    generalName: "方法", 
    catExercise: rbMethodsModelZH,
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
    generalName: "类", 
    catExercise: rbClassesModelZH,
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
    generalName: "模块", 
    catExercise: rbModulesModelZH,
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
    generalName: "继承", 
    catExercise: rbInheritanceModelZH,
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
    generalName: "异常处理", 
    catExercise: rbExceptionsModelZH,
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
    generalName: "代码块与枚举", 
    catExercise: rbBlocksModelZH,
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
