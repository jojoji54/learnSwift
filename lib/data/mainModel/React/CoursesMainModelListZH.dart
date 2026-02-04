import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/reactBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/reactPropsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactState/reactStateExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/reactEventsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactLists/reactListsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/reactConditionalExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactForms/reactFormsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactEffects/reactEffectsExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactContext/reactContextExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactHooks/reactHooksExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/reactRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactData/reactDataExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/reactPerformanceExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactTesting/reactTestingExMain.dart';
import 'package:learnswift/Screens/Courses/react/reactStyling/reactStylingExMain.dart';
import '../../courses/React/reactBasics/reactBasicsExModelListZH.dart';
import '../../courses/React/reactProps/reactPropsExModelListZH.dart';
import '../../courses/React/reactState/reactStateExModelListZH.dart';
import '../../courses/React/reactEvents/reactEventsExModelListZH.dart';
import '../../courses/React/reactLists/reactListsExModelListZH.dart';
import '../../courses/React/reactConditional/reactConditionalExModelListZH.dart';
import '../../courses/React/reactForms/reactFormsExModelListZH.dart';
import '../../courses/React/reactEffects/reactEffectsExModelListZH.dart';
import '../../courses/React/reactContext/reactContextExModelListZH.dart';
import '../../courses/React/reactHooks/reactHooksExModelListZH.dart';
import '../../courses/React/reactRouting/reactRoutingExModelListZH.dart';
import '../../courses/React/reactData/reactDataExModelListZH.dart';
import '../../courses/React/reactPerformance/reactPerformanceExModelListZH.dart';
import '../../courses/React/reactTesting/reactTestingExModelListZH.dart';
import '../../courses/React/reactStyling/reactStylingExModelListZH.dart';

List<CoursesMainModel> coursesReactMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'React 基础',
  catExercise: reactBasicsModelZH,
  description: "reactCat0InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactBasicsExMain(
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
  generalName: 'Props',
  catExercise: reactPropsModelZH,
  description: "reactCat1InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactPropsExMain(
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
  generalName: '状态',
  catExercise: reactStateModelZH,
  description: "reactCat2InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactStateExMain(
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
  generalName: '事件',
  catExercise: reactEventsModelZH,
  description: "reactCat3InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactEventsExMain(
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
  generalName: '列表与 Key',
  catExercise: reactListsModelZH,
  description: "reactCat4InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactListsExMain(
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
  generalName: '条件渲染',
  catExercise: reactConditionalModelZH,
  description: "reactCat5InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactConditionalExMain(
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
  generalName: '表单与输入',
  catExercise: reactFormsModelZH,
  description: "reactCat6InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactFormsExMain(
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
  generalName: '副作用',
  catExercise: reactEffectsModelZH,
  description: "reactCat7InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactEffectsExMain(
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
  generalName: 'Context',
  catExercise: reactContextModelZH,
  description: "reactCat8InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactContextExMain(
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
  generalName: '自定义 Hook',
  catExercise: reactHooksModelZH,
  description: "reactCat9InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactHooksExMain(
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
  generalName: '路由',
  catExercise: reactRoutingModelZH,
  description: "reactCat10InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactRoutingExMain(
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
  generalName: '数据请求',
  catExercise: reactDataModelZH,
  description: "reactCat11InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactDataExMain(
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
  generalName: '性能',
  catExercise: reactPerformanceModelZH,
  description: "reactCat12InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactPerformanceExMain(
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
  generalName: '测试',
  catExercise: reactTestingModelZH,
  description: "reactCat13InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactTestingExMain(
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
  generalName: '样式',
  catExercise: reactStylingModelZH,
  description: "reactCat14InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      ReactStylingExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];