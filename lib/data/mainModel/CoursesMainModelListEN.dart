import 'package:learnswift/data/courses/Swift/ArraysBasics/arraysExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/BooleanBasics/booleanBExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/LoopsBasics/loopsExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/SwiftDictionaries/swiftDictionariesExModelEN.dart';
import 'package:learnswift/data/courses/Swift/ifElseBasics/ifElseExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swichStatementsBasics/swichStatementsExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListEN.dart';
import 'package:learnswift/data/courses/Swift/swiftSets/swiftSetsExModelEN.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

List<CoursesMainModel> coursesSwiftMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: 'Swift Basics',
    catExercise: sbModelEN,
    description:
        'Introduces the fundamentals of Swift, including syntax, variables, constants, and basic operations. Understanding these concepts is crucial as they form the foundation for all Swift programming.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 1,
    generalName: 'Boolean Basics',
    catExercise: booleanBModelEN,
    description:
        'Covers boolean logic and its application in programming. Essential for making decisions in your code through comparisons and logical operations.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 2,
    generalName: 'If-Else',
    catExercise: ifElseModelEN,
    description:
        'Teaches conditional branching to control program flow based on certain conditions. Critical for implementing logic in your applications.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 3,
    generalName: 'Switch',
    catExercise: switchModelEN,
    description:
        'Explains how to use switch statements for handling multiple conditions efficiently. Helps write cleaner and more organized code compared to nested if-else.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 4,
    generalName: 'Loops',
    catExercise: loopsModelEN,
    description:
        'Covers the use of loops like for, while, and repeat-while to perform repetitive tasks. Vital for reducing redundancy and automating tasks in your code.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
    CoursesMainModel(
    id: 5,
    generalName: 'Arrays',
    catExercise: swiftArraysModelEN,
    description: 'Explores arrays and their use in storing collections of data. Key for handling multiple items in an organized manner.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
 CoursesMainModel(
    id: 6,
    generalName: 'Dictionaries',
    catExercise: swiftDictionariesExModelEN,
    description: 'Focuses on dictionaries for storing data as key-value pairs. Crucial for quick lookups and organizing information.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
   CoursesMainModel(
    id: 7,
    generalName: 'Sets',
    catExercise: swiftSetsExModelEN,
    description: 'Explains sets and their use for storing unique values. Important for ensuring data uniqueness and performing set operations.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  /*CoursesMainModel(
    id: 8,
    generalName: 'Functions',
    description: 'Introduces functions for structuring reusable blocks of code. Essential for modular programming and code organization.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 9,
    generalName: 'Optionals',
    description: 'Teaches how to handle values that might be absent. Key for writing safe and error-resistant code in Swift.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 10,
    generalName: 'Classes and Structures',
    description: 'Explains the use of classes and structures to organize data and behavior. Fundamental for object-oriented programming in Swift.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 11,
    generalName: 'Enumerations',
    description: 'Focuses on enums for defining groups of related values. Useful for improving code readability and handling fixed options.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 12,
    generalName: 'Protocols and Delegation',
    description: 'Covers protocols and the delegation pattern for defining and implementing interfaces. Crucial for designing modular and extensible code.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 13,
    generalName: 'Closures',
    description: 'Introduces closures, a powerful feature for passing functionality as arguments. Essential for writing concise and flexible code.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 14,
    generalName: 'Error Handling',
    description: 'Explains how to manage and handle errors gracefully in your code. Vital for creating robust and user-friendly applications.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 15,
    generalName: 'Advanced Swift',
    description: 'Explores advanced topics in Swift, including generics, extensions, and concurrency. Necessary for mastering the language and tackling complex problems.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 16,
    generalName: 'Memory Management',
    description: 'Covers memory management concepts like ARC and memory leaks. Crucial for building efficient and resource-friendly apps.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 17,
    generalName: 'Working with Files and Data',
    description: 'Teaches file handling and data manipulation in Swift. Key for creating apps that interact with the filesystem and external data sources.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ),
  CoursesMainModel(
    id: 18,
    generalName: 'UI Basics (Bonus para Apps)',
    description: 'Introduces basic UI design principles and SwiftUI components. Essential for creating interactive and visually appealing applications.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
  ), */
];
