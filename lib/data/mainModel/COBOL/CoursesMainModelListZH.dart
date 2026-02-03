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
import '../../courses/COBOL/cbBasics/cbBasicsExModelListZH.dart';
import '../../courses/COBOL/cbDataTypes/cbDataTypesExModelListZH.dart';
import '../../courses/COBOL/cbArithmetic/cbArithmeticExModelListZH.dart';
import '../../courses/COBOL/cbConditions/cbConditionsExModelListZH.dart';
import '../../courses/COBOL/cbEvaluate/cbEvaluateExModelListZH.dart';
import '../../courses/COBOL/cbLoops/cbLoopsExModelListZH.dart';
import '../../courses/COBOL/cbArrays/cbArraysExModelListZH.dart';
import '../../courses/COBOL/cbStrings/cbStringsExModelListZH.dart';
import '../../courses/COBOL/cbParagraphs/cbParagraphsExModelListZH.dart';
import '../../courses/COBOL/cbSections/cbSectionsExModelListZH.dart';
import '../../courses/COBOL/cbFiles/cbFilesExModelListZH.dart';
import '../../courses/COBOL/cbSort/cbSortExModelListZH.dart';
import '../../courses/COBOL/cbSubprograms/cbSubprogramsExModelListZH.dart';
import '../../courses/COBOL/cbTables/cbTablesExModelListZH.dart';
import '../../courses/COBOL/cbReports/cbReportsExModelListZH.dart';

List<CoursesMainModel> coursesCobolMainModelListZH = [
  CoursesMainModel(
    id: 0,
    generalName: "COBOL 基础",
    catExercise: cbBasicsModelZH,
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
    generalName: "数据类型",
    catExercise: cbDataTypesModelZH,
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
    generalName: "算术",
    catExercise: cbArithmeticModelZH,
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
    generalName: "条件",
    catExercise: cbConditionsModelZH,
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
    catExercise: cbEvaluateModelZH,
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
    generalName: "PERFORM 循环",
    catExercise: cbLoopsModelZH,
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
    generalName: "表与数组",
    catExercise: cbArraysModelZH,
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
    generalName: "字符串",
    catExercise: cbStringsModelZH,
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
    generalName: "段落",
    catExercise: cbParagraphsModelZH,
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
    generalName: "章节",
    catExercise: cbSectionsModelZH,
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
    generalName: "文件",
    catExercise: cbFilesModelZH,
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
    generalName: "排序与合并",
    catExercise: cbSortModelZH,
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
    generalName: "子程序",
    catExercise: cbSubprogramsModelZH,
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
    generalName: "高级表",
    catExercise: cbTablesModelZH,
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
    generalName: "报表",
    catExercise: cbReportsModelZH,
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
