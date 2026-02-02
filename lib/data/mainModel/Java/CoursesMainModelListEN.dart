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
import '../../courses/Java/javaBasics/javaBasicsExModelListEN.dart';
import '../../courses/Java/javaDataTypes/javaDataTypesExModelListEN.dart';
import '../../courses/Java/javaOperators/javaOperatorsExModelListEN.dart';
import '../../courses/Java/javaConditionals/javaConditionalsExModelListEN.dart';
import '../../courses/Java/javaSwitch/javaSwitchExModelListEN.dart';
import '../../courses/Java/javaLoops/javaLoopsExModelListEN.dart';
import '../../courses/Java/javaArrays/javaArraysExModelListEN.dart';
import '../../courses/Java/javaArrayList/javaArrayListExModelListEN.dart';
import '../../courses/Java/javaMethods/javaMethodsExModelListEN.dart';
import '../../courses/Java/javaOopBasics/javaOopBasicsExModelListEN.dart';
import '../../courses/Java/javaExceptions/javaExceptionsExModelListEN.dart';

List<CoursesMainModel> coursesJavaMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'Java Basics',
    catExercise: javaBasicsModelEN,
    description: 'Start with Java fundamentals: output, variables, and simple expressions. Perfect for your first steps in Java.',
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
    generalName: 'Data Types',
    catExercise: javaDataTypesModelEN,
    description: 'Learn Java data types like int, double, char, and boolean with small practical tasks.',
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
    generalName: 'Operators',
    catExercise: javaOperatorsModelEN,
    description: 'Practice arithmetic, comparison, and logical operators in Java.',
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
    generalName: 'Conditionals',
    catExercise: javaConditionalsModelEN,
    description: 'Use if, else, and ternary operators to control flow in Java.',
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
    catExercise: javaSwitchModelEN,
    description: 'Handle multiple cases with switch statements in Java.',
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
    generalName: 'Loops',
    catExercise: javaLoopsModelEN,
    description: 'Master for, while, and do while loops in Java.',
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
    catExercise: javaArraysModelEN,
    description: 'Create, read, and update arrays in Java.',
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
    catExercise: javaArrayListModelEN,
    description: 'Work with ArrayList: add, get, remove, and size.',
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
    generalName: 'Methods',
    catExercise: javaMethodsModelEN,
    description: 'Define and call methods with parameters and return values.',
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
    generalName: 'OOP Basics',
    catExercise: javaOopBasicsModelEN,
    description: 'Explore classes, objects, fields, and constructors in Java.',
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
    generalName: 'Exceptions',
    catExercise: javaExceptionsModelEN,
    description: 'Handle errors with try, catch, and throw in Java.',
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
