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
import '../../courses/Vue/vueBasics/vueBasicsExModelListES.dart';
import '../../courses/Vue/vueTemplates/vueTemplatesExModelListES.dart';
import '../../courses/Vue/vueComponents/vueComponentsExModelListES.dart';
import '../../courses/Vue/vueReactivity/vueReactivityExModelListES.dart';
import '../../courses/Vue/vueDirectives/vueDirectivesExModelListES.dart';
import '../../courses/Vue/vueComputed/vueComputedExModelListES.dart';
import '../../courses/Vue/vueWatchers/vueWatchersExModelListES.dart';
import '../../courses/Vue/vueLifecycle/vueLifecycleExModelListES.dart';
import '../../courses/Vue/vueRouting/vueRoutingExModelListES.dart';
import '../../courses/Vue/vueState/vueStateExModelListES.dart';
import '../../courses/Vue/vueForms/vueFormsExModelListES.dart';
import '../../courses/Vue/vueSlots/vueSlotsExModelListES.dart';
import '../../courses/Vue/vueComposition/vueCompositionExModelListES.dart';
import '../../courses/Vue/vuePerformance/vuePerformanceExModelListES.dart';
import '../../courses/Vue/vueTesting/vueTestingExModelListES.dart';

List<CoursesMainModel> coursesVueMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos Vue',
  catExercise: vueBasicsModelES,
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
  catExercise: vueTemplatesModelES,
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
  generalName: 'Componentes',
  catExercise: vueComponentsModelES,
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
  generalName: 'Reactividad',
  catExercise: vueReactivityModelES,
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
  generalName: 'Directivas',
  catExercise: vueDirectivesModelES,
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
  catExercise: vueComputedModelES,
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
  catExercise: vueWatchersModelES,
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
  generalName: 'Ciclo de vida',
  catExercise: vueLifecycleModelES,
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
  catExercise: vueRoutingModelES,
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
  generalName: 'Estado',
  catExercise: vueStateModelES,
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
  generalName: 'Formularios',
  catExercise: vueFormsModelES,
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
  catExercise: vueSlotsModelES,
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
  catExercise: vueCompositionModelES,
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
  catExercise: vuePerformanceModelES,
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
  catExercise: vueTestingModelES,
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