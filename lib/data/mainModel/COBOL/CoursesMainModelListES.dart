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
import '../../courses/COBOL/cbBasics/cbBasicsExModelListES.dart';
import '../../courses/COBOL/cbDataTypes/cbDataTypesExModelListES.dart';
import '../../courses/COBOL/cbArithmetic/cbArithmeticExModelListES.dart';
import '../../courses/COBOL/cbConditions/cbConditionsExModelListES.dart';
import '../../courses/COBOL/cbEvaluate/cbEvaluateExModelListES.dart';
import '../../courses/COBOL/cbLoops/cbLoopsExModelListES.dart';
import '../../courses/COBOL/cbArrays/cbArraysExModelListES.dart';
import '../../courses/COBOL/cbStrings/cbStringsExModelListES.dart';
import '../../courses/COBOL/cbParagraphs/cbParagraphsExModelListES.dart';
import '../../courses/COBOL/cbSections/cbSectionsExModelListES.dart';
import '../../courses/COBOL/cbFiles/cbFilesExModelListES.dart';
import '../../courses/COBOL/cbSort/cbSortExModelListES.dart';
import '../../courses/COBOL/cbSubprograms/cbSubprogramsExModelListES.dart';
import '../../courses/COBOL/cbTables/cbTablesExModelListES.dart';
import '../../courses/COBOL/cbReports/cbReportsExModelListES.dart';

List<CoursesMainModel> coursesCobolMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: "COBOL Básico",
    catExercise: cbBasicsModelES,
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
    generalName: "Tipos de Datos",
    catExercise: cbDataTypesModelES,
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
    generalName: "Aritmética",
    catExercise: cbArithmeticModelES,
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
    generalName: "Condiciones",
    catExercise: cbConditionsModelES,
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
    catExercise: cbEvaluateModelES,
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
    generalName: "Bucles PERFORM",
    catExercise: cbLoopsModelES,
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
    generalName: "Tablas y Arrays",
    catExercise: cbArraysModelES,
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
    generalName: "Cadenas",
    catExercise: cbStringsModelES,
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
    generalName: "Párrafos",
    catExercise: cbParagraphsModelES,
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
    generalName: "Secciones",
    catExercise: cbSectionsModelES,
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
    generalName: "Archivos",
    catExercise: cbFilesModelES,
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
    generalName: "SORT y MERGE",
    catExercise: cbSortModelES,
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
    generalName: "Subprogramas",
    catExercise: cbSubprogramsModelES,
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
    generalName: "Tablas Avanzadas",
    catExercise: cbTablesModelES,
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
    generalName: "Reportes",
    catExercise: cbReportsModelES,
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
