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
import '../../courses/Vue/vueBasics/vueBasicsExModelListEN.dart';
import '../../courses/Vue/vueTemplates/vueTemplatesExModelListEN.dart';
import '../../courses/Vue/vueComponents/vueComponentsExModelListEN.dart';
import '../../courses/Vue/vueReactivity/vueReactivityExModelListEN.dart';
import '../../courses/Vue/vueDirectives/vueDirectivesExModelListEN.dart';
import '../../courses/Vue/vueComputed/vueComputedExModelListEN.dart';
import '../../courses/Vue/vueWatchers/vueWatchersExModelListEN.dart';
import '../../courses/Vue/vueLifecycle/vueLifecycleExModelListEN.dart';
import '../../courses/Vue/vueRouting/vueRoutingExModelListEN.dart';
import '../../courses/Vue/vueState/vueStateExModelListEN.dart';
import '../../courses/Vue/vueForms/vueFormsExModelListEN.dart';
import '../../courses/Vue/vueSlots/vueSlotsExModelListEN.dart';
import '../../courses/Vue/vueComposition/vueCompositionExModelListEN.dart';
import '../../courses/Vue/vuePerformance/vuePerformanceExModelListEN.dart';
import '../../courses/Vue/vueTesting/vueTestingExModelListEN.dart';

List<CoursesMainModel> coursesVueMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'Vue Basics',
  catExercise: vueBasicsModelEN,
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
  generalName: 'Templates',
  catExercise: vueTemplatesModelEN,
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
  generalName: 'Components',
  catExercise: vueComponentsModelEN,
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
  generalName: 'Reactivity',
  catExercise: vueReactivityModelEN,
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
  generalName: 'Directives',
  catExercise: vueDirectivesModelEN,
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
  generalName: 'Computed',
  catExercise: vueComputedModelEN,
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
  generalName: 'Watchers',
  catExercise: vueWatchersModelEN,
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
  generalName: 'Lifecycle',
  catExercise: vueLifecycleModelEN,
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
  generalName: 'Routing',
  catExercise: vueRoutingModelEN,
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
  generalName: 'State',
  catExercise: vueStateModelEN,
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
  generalName: 'Forms',
  catExercise: vueFormsModelEN,
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
  generalName: 'Slots',
  catExercise: vueSlotsModelEN,
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
  generalName: 'Composition API',
  catExercise: vueCompositionModelEN,
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
  generalName: 'Performance',
  catExercise: vuePerformanceModelEN,
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
  generalName: 'Testing',
  catExercise: vueTestingModelEN,
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