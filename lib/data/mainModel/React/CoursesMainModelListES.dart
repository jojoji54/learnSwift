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
import '../../courses/React/reactBasics/reactBasicsExModelListES.dart';
import '../../courses/React/reactProps/reactPropsExModelListES.dart';
import '../../courses/React/reactState/reactStateExModelListES.dart';
import '../../courses/React/reactEvents/reactEventsExModelListES.dart';
import '../../courses/React/reactLists/reactListsExModelListES.dart';
import '../../courses/React/reactConditional/reactConditionalExModelListES.dart';
import '../../courses/React/reactForms/reactFormsExModelListES.dart';
import '../../courses/React/reactEffects/reactEffectsExModelListES.dart';
import '../../courses/React/reactContext/reactContextExModelListES.dart';
import '../../courses/React/reactHooks/reactHooksExModelListES.dart';
import '../../courses/React/reactRouting/reactRoutingExModelListES.dart';
import '../../courses/React/reactData/reactDataExModelListES.dart';
import '../../courses/React/reactPerformance/reactPerformanceExModelListES.dart';
import '../../courses/React/reactTesting/reactTestingExModelListES.dart';
import '../../courses/React/reactStyling/reactStylingExModelListES.dart';

List<CoursesMainModel> coursesReactMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'React Básico',
  catExercise: reactBasicsModelES,
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
  catExercise: reactPropsModelES,
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
  generalName: 'Estado',
  catExercise: reactStateModelES,
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
  generalName: 'Eventos',
  catExercise: reactEventsModelES,
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
  generalName: 'Listas y Keys',
  catExercise: reactListsModelES,
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
  generalName: 'Renderizado condicional',
  catExercise: reactConditionalModelES,
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
  generalName: 'Formularios e Inputs',
  catExercise: reactFormsModelES,
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
  generalName: 'Efectos',
  catExercise: reactEffectsModelES,
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
  generalName: 'Contexto',
  catExercise: reactContextModelES,
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
  generalName: 'Hooks personalizados',
  catExercise: reactHooksModelES,
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
  generalName: 'Rutas',
  catExercise: reactRoutingModelES,
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
  generalName: 'Peticiones de datos',
  catExercise: reactDataModelES,
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
  generalName: 'Rendimiento',
  catExercise: reactPerformanceModelES,
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
  generalName: 'Testing',
  catExercise: reactTestingModelES,
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
  generalName: 'Estilos',
  catExercise: reactStylingModelES,
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