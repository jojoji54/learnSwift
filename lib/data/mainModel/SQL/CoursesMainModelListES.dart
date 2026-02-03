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
import '../../courses/SQL/sqlBasics/sqlBasicsExModelListES.dart';
import '../../courses/SQL/sqlFiltering/sqlFilteringExModelListES.dart';
import '../../courses/SQL/sqlSorting/sqlSortingExModelListES.dart';
import '../../courses/SQL/sqlAggregation/sqlAggregationExModelListES.dart';
import '../../courses/SQL/sqlJoins/sqlJoinsExModelListES.dart';
import '../../courses/SQL/sqlSubqueries/sqlSubqueriesExModelListES.dart';
import '../../courses/SQL/sqlSetOps/sqlSetOpsExModelListES.dart';
import '../../courses/SQL/sqlInsert/sqlInsertExModelListES.dart';
import '../../courses/SQL/sqlUpdateDelete/sqlUpdateDeleteExModelListES.dart';
import '../../courses/SQL/sqlTableDesign/sqlTableDesignExModelListES.dart';
import '../../courses/SQL/sqlConstraints/sqlConstraintsExModelListES.dart';
import '../../courses/SQL/sqlIndexes/sqlIndexesExModelListES.dart';
import '../../courses/SQL/sqlViews/sqlViewsExModelListES.dart';
import '../../courses/SQL/sqlTransactions/sqlTransactionsExModelListES.dart';
import '../../courses/SQL/sqlWindow/sqlWindowExModelListES.dart';

List<CoursesMainModel> coursesSqlMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos',
  catExercise: sqlBasicsModelES,
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
  generalName: 'Filtrado',
  catExercise: sqlFilteringModelES,
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
  generalName: 'Ordenamiento',
  catExercise: sqlSortingModelES,
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
  generalName: 'Agregación',
  catExercise: sqlAggregationModelES,
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
  catExercise: sqlJoinsModelES,
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
  generalName: 'Subconsultas',
  catExercise: sqlSubqueriesModelES,
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
  generalName: 'Operaciones de conjuntos',
  catExercise: sqlSetOpsModelES,
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
  generalName: 'Insertar',
  catExercise: sqlInsertModelES,
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
  generalName: 'Actualizar y borrar',
  catExercise: sqlUpdateDeleteModelES,
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
  generalName: 'Diseño de tablas',
  catExercise: sqlTableDesignModelES,
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
  generalName: 'Restricciones',
  catExercise: sqlConstraintsModelES,
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
  generalName: 'Índices',
  catExercise: sqlIndexesModelES,
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
  generalName: 'Vistas',
  catExercise: sqlViewsModelES,
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
  generalName: 'Transacciones',
  catExercise: sqlTransactionsModelES,
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
  generalName: 'Funciones de ventana',
  catExercise: sqlWindowModelES,
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
