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
import '../../courses/SQL/sqlBasics/sqlBasicsExModelListZH.dart';
import '../../courses/SQL/sqlFiltering/sqlFilteringExModelListZH.dart';
import '../../courses/SQL/sqlSorting/sqlSortingExModelListZH.dart';
import '../../courses/SQL/sqlAggregation/sqlAggregationExModelListZH.dart';
import '../../courses/SQL/sqlJoins/sqlJoinsExModelListZH.dart';
import '../../courses/SQL/sqlSubqueries/sqlSubqueriesExModelListZH.dart';
import '../../courses/SQL/sqlSetOps/sqlSetOpsExModelListZH.dart';
import '../../courses/SQL/sqlInsert/sqlInsertExModelListZH.dart';
import '../../courses/SQL/sqlUpdateDelete/sqlUpdateDeleteExModelListZH.dart';
import '../../courses/SQL/sqlTableDesign/sqlTableDesignExModelListZH.dart';
import '../../courses/SQL/sqlConstraints/sqlConstraintsExModelListZH.dart';
import '../../courses/SQL/sqlIndexes/sqlIndexesExModelListZH.dart';
import '../../courses/SQL/sqlViews/sqlViewsExModelListZH.dart';
import '../../courses/SQL/sqlTransactions/sqlTransactionsExModelListZH.dart';
import '../../courses/SQL/sqlWindow/sqlWindowExModelListZH.dart';

List<CoursesMainModel> coursesSqlMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: '基础',
  catExercise: sqlBasicsModelZH,
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
  generalName: '过滤',
  catExercise: sqlFilteringModelZH,
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
  generalName: '排序',
  catExercise: sqlSortingModelZH,
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
  generalName: '聚合',
  catExercise: sqlAggregationModelZH,
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
  generalName: '连接',
  catExercise: sqlJoinsModelZH,
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
  generalName: '子查询',
  catExercise: sqlSubqueriesModelZH,
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
  generalName: '集合运算',
  catExercise: sqlSetOpsModelZH,
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
  generalName: '插入',
  catExercise: sqlInsertModelZH,
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
  generalName: '更新与删除',
  catExercise: sqlUpdateDeleteModelZH,
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
  generalName: '表设计',
  catExercise: sqlTableDesignModelZH,
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
  generalName: '约束',
  catExercise: sqlConstraintsModelZH,
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
  generalName: '索引',
  catExercise: sqlIndexesModelZH,
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
  generalName: '视图',
  catExercise: sqlViewsModelZH,
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
  generalName: '事务',
  catExercise: sqlTransactionsModelZH,
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
  generalName: '窗口函数',
  catExercise: sqlWindowModelZH,
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
