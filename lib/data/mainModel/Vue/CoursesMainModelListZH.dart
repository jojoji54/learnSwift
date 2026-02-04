import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/vue/vueBasics/vueBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueTemplates/vueTemplatesExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueComponents/vueComponentsExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueReactivity/vueReactivityExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueDirectives/vueDirectivesExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueComputed/vueComputedExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueWatchers/vueWatchersExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueLifecycle/vueLifecycleExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueRouting/vueRoutingExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/vueStateExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/vueFormsExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueSlots/vueSlotsExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/vueCompositionExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vuePerformance/vuePerformanceExMain.dart';
import 'package:learnswift/Screens/Courses/vue/vueTesting/vueTestingExMain.dart';
import '../../courses/Vue/vueBasics/vueBasicsExModelListZH.dart';
import '../../courses/Vue/vueTemplates/vueTemplatesExModelListZH.dart';
import '../../courses/Vue/vueComponents/vueComponentsExModelListZH.dart';
import '../../courses/Vue/vueReactivity/vueReactivityExModelListZH.dart';
import '../../courses/Vue/vueDirectives/vueDirectivesExModelListZH.dart';
import '../../courses/Vue/vueComputed/vueComputedExModelListZH.dart';
import '../../courses/Vue/vueWatchers/vueWatchersExModelListZH.dart';
import '../../courses/Vue/vueLifecycle/vueLifecycleExModelListZH.dart';
import '../../courses/Vue/vueRouting/vueRoutingExModelListZH.dart';
import '../../courses/Vue/vueState/vueStateExModelListZH.dart';
import '../../courses/Vue/vueForms/vueFormsExModelListZH.dart';
import '../../courses/Vue/vueSlots/vueSlotsExModelListZH.dart';
import '../../courses/Vue/vueComposition/vueCompositionExModelListZH.dart';
import '../../courses/Vue/vuePerformance/vuePerformanceExModelListZH.dart';
import '../../courses/Vue/vueTesting/vueTestingExModelListZH.dart';

List<CoursesMainModel> coursesVueMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'Vue 基础',
  catExercise: vueBasicsModelZH,
  description: "vueCat0InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueBasicsExMain(
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
  generalName: '模板',
  catExercise: vueTemplatesModelZH,
  description: "vueCat1InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueTemplatesExMain(
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
  generalName: '组件',
  catExercise: vueComponentsModelZH,
  description: "vueCat2InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueComponentsExMain(
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
  generalName: '响应式',
  catExercise: vueReactivityModelZH,
  description: "vueCat3InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueReactivityExMain(
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
  generalName: '指令',
  catExercise: vueDirectivesModelZH,
  description: "vueCat4InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueDirectivesExMain(
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
  generalName: '计算属性',
  catExercise: vueComputedModelZH,
  description: "vueCat5InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueComputedExMain(
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
  generalName: '侦听器',
  catExercise: vueWatchersModelZH,
  description: "vueCat6InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueWatchersExMain(
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
  generalName: '生命周期',
  catExercise: vueLifecycleModelZH,
  description: "vueCat7InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueLifecycleExMain(
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
  generalName: '路由',
  catExercise: vueRoutingModelZH,
  description: "vueCat8InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueRoutingExMain(
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
  generalName: '状态管理',
  catExercise: vueStateModelZH,
  description: "vueCat9InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueStateExMain(
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
  generalName: '表单',
  catExercise: vueFormsModelZH,
  description: "vueCat10InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueFormsExMain(
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
  generalName: '插槽',
  catExercise: vueSlotsModelZH,
  description: "vueCat11InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueSlotsExMain(
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
  generalName: '组合式 API',
  catExercise: vueCompositionModelZH,
  description: "vueCat12InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueCompositionExMain(
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
  generalName: '性能',
  catExercise: vuePerformanceModelZH,
  description: "vueCat13InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VuePerformanceExMain(
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
  generalName: '测试',
  catExercise: vueTestingModelZH,
  description: "vueCat14InfoContent",
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      VueTestingExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];