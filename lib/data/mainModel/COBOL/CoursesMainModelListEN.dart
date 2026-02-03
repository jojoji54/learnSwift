import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/cobol/cbBasics/cbBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbDataTypes/cbDataTypesExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbArithmetic/cbArithmeticExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbConditions/cbConditionsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbEvaluate/cbEvaluateExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbLoops/cbLoopsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbArrays/cbArraysExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbStrings/cbStringsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbParagraphs/cbParagraphsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbSections/cbSectionsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbFiles/cbFilesExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbSort/cbSortExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbSubprograms/cbSubprogramsExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbTables/cbTablesExMain.dart';
import 'package:learnswift/Screens/Courses/cobol/cbReports/cbReportsExMain.dart';
import '../../courses/COBOL/cbBasics/cbBasicsExModelListEN.dart';
import '../../courses/COBOL/cbDataTypes/cbDataTypesExModelListEN.dart';
import '../../courses/COBOL/cbArithmetic/cbArithmeticExModelListEN.dart';
import '../../courses/COBOL/cbConditions/cbConditionsExModelListEN.dart';
import '../../courses/COBOL/cbEvaluate/cbEvaluateExModelListEN.dart';
import '../../courses/COBOL/cbLoops/cbLoopsExModelListEN.dart';
import '../../courses/COBOL/cbArrays/cbArraysExModelListEN.dart';
import '../../courses/COBOL/cbStrings/cbStringsExModelListEN.dart';
import '../../courses/COBOL/cbParagraphs/cbParagraphsExModelListEN.dart';
import '../../courses/COBOL/cbSections/cbSectionsExModelListEN.dart';
import '../../courses/COBOL/cbFiles/cbFilesExModelListEN.dart';
import '../../courses/COBOL/cbSort/cbSortExModelListEN.dart';
import '../../courses/COBOL/cbSubprograms/cbSubprogramsExModelListEN.dart';
import '../../courses/COBOL/cbTables/cbTablesExModelListEN.dart';
import '../../courses/COBOL/cbReports/cbReportsExModelListEN.dart';

List<CoursesMainModel> coursesCobolMainModelListEN = [
  CoursesMainModel(
    id: 0,
    generalName: "COBOL Basics",
    catExercise: cbBasicsModelEN,
    description: "cobolCat0InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbBasicsExMain(
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
    generalName: "Data Types",
    catExercise: cbDataTypesModelEN,
    description: "cobolCat1InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbDataTypesExMain(
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
    generalName: "Arithmetic",
    catExercise: cbArithmeticModelEN,
    description: "cobolCat2InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbArithmeticExMain(
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
    generalName: "Conditions",
    catExercise: cbConditionsModelEN,
    description: "cobolCat3InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbConditionsExMain(
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
    generalName: "EVALUATE",
    catExercise: cbEvaluateModelEN,
    description: "cobolCat4InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbEvaluateExMain(
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
    generalName: "PERFORM Loops",
    catExercise: cbLoopsModelEN,
    description: "cobolCat5InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbLoopsExMain(
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
    generalName: "Tables and Arrays",
    catExercise: cbArraysModelEN,
    description: "cobolCat6InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbArraysExMain(
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
    generalName: "Strings",
    catExercise: cbStringsModelEN,
    description: "cobolCat7InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbStringsExMain(
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
    generalName: "Paragraphs",
    catExercise: cbParagraphsModelEN,
    description: "cobolCat8InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbParagraphsExMain(
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
    generalName: "Sections",
    catExercise: cbSectionsModelEN,
    description: "cobolCat9InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbSectionsExMain(
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
    generalName: "Files",
    catExercise: cbFilesModelEN,
    description: "cobolCat10InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbFilesExMain(
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
    generalName: "SORT and MERGE",
    catExercise: cbSortModelEN,
    description: "cobolCat11InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbSortExMain(
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
    generalName: "Subprograms",
    catExercise: cbSubprogramsModelEN,
    description: "cobolCat12InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbSubprogramsExMain(
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
    generalName: "Advanced Tables",
    catExercise: cbTablesModelEN,
    description: "cobolCat13InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbTablesExMain(
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
    generalName: "Reporting",
    catExercise: cbReportsModelEN,
    description: "cobolCat14InfoContent",
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        CbReportsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

];
