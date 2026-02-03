import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/sqlBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/sqlFilteringExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/sqlSortingExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/sqlAggregationExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/sqlJoinsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/sqlSubqueriesExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/sqlSetOpsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/sqlInsertExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/sqlUpdateDeleteExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/sqlTableDesignExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/sqlConstraintsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/sqlIndexesExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/sqlViewsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/sqlTransactionsExMain.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/sqlWindowExMain.dart';
import '../../courses/SQL/sqlBasics/sqlBasicsExModelListEN.dart';
import '../../courses/SQL/sqlFiltering/sqlFilteringExModelListEN.dart';
import '../../courses/SQL/sqlSorting/sqlSortingExModelListEN.dart';
import '../../courses/SQL/sqlAggregation/sqlAggregationExModelListEN.dart';
import '../../courses/SQL/sqlJoins/sqlJoinsExModelListEN.dart';
import '../../courses/SQL/sqlSubqueries/sqlSubqueriesExModelListEN.dart';
import '../../courses/SQL/sqlSetOps/sqlSetOpsExModelListEN.dart';
import '../../courses/SQL/sqlInsert/sqlInsertExModelListEN.dart';
import '../../courses/SQL/sqlUpdateDelete/sqlUpdateDeleteExModelListEN.dart';
import '../../courses/SQL/sqlTableDesign/sqlTableDesignExModelListEN.dart';
import '../../courses/SQL/sqlConstraints/sqlConstraintsExModelListEN.dart';
import '../../courses/SQL/sqlIndexes/sqlIndexesExModelListEN.dart';
import '../../courses/SQL/sqlViews/sqlViewsExModelListEN.dart';
import '../../courses/SQL/sqlTransactions/sqlTransactionsExModelListEN.dart';
import '../../courses/SQL/sqlWindow/sqlWindowExModelListEN.dart';

List<CoursesMainModel> coursesSqlMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Basics',
  catExercise: sqlBasicsModelEN,
  description: "sqlCat0InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlBasicsExMain(
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
  generalName: 'Filtering',
  catExercise: sqlFilteringModelEN,
  description: "sqlCat1InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlFilteringExMain(
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
  generalName: 'Sorting',
  catExercise: sqlSortingModelEN,
  description: "sqlCat2InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlSortingExMain(
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
  generalName: 'Aggregation',
  catExercise: sqlAggregationModelEN,
  description: "sqlCat3InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlAggregationExMain(
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
  generalName: 'Joins',
  catExercise: sqlJoinsModelEN,
  description: "sqlCat4InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlJoinsExMain(
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
  generalName: 'Subqueries',
  catExercise: sqlSubqueriesModelEN,
  description: "sqlCat5InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlSubqueriesExMain(
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
  generalName: 'Set Operations',
  catExercise: sqlSetOpsModelEN,
  description: "sqlCat6InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlSetOpsExMain(
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
  generalName: 'Insert',
  catExercise: sqlInsertModelEN,
  description: "sqlCat7InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlInsertExMain(
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
  generalName: 'Update & Delete',
  catExercise: sqlUpdateDeleteModelEN,
  description: "sqlCat8InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlUpdateDeleteExMain(
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
  generalName: 'Table Design',
  catExercise: sqlTableDesignModelEN,
  description: "sqlCat9InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlTableDesignExMain(
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
  generalName: 'Constraints',
  catExercise: sqlConstraintsModelEN,
  description: "sqlCat10InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlConstraintsExMain(
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
  generalName: 'Indexes',
  catExercise: sqlIndexesModelEN,
  description: "sqlCat11InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlIndexesExMain(
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
  generalName: 'Views',
  catExercise: sqlViewsModelEN,
  description: "sqlCat12InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlViewsExMain(
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
  generalName: 'Transactions',
  catExercise: sqlTransactionsModelEN,
  description: "sqlCat13InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlTransactionsExMain(
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
  generalName: 'Window Functions',
  catExercise: sqlWindowModelEN,
  description: "sqlCat14InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      SqlWindowExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
