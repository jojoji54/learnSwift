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
import '../../courses/React/reactBasics/reactBasicsExModelListEN.dart';
import '../../courses/React/reactProps/reactPropsExModelListEN.dart';
import '../../courses/React/reactState/reactStateExModelListEN.dart';
import '../../courses/React/reactEvents/reactEventsExModelListEN.dart';
import '../../courses/React/reactLists/reactListsExModelListEN.dart';
import '../../courses/React/reactConditional/reactConditionalExModelListEN.dart';
import '../../courses/React/reactForms/reactFormsExModelListEN.dart';
import '../../courses/React/reactEffects/reactEffectsExModelListEN.dart';
import '../../courses/React/reactContext/reactContextExModelListEN.dart';
import '../../courses/React/reactHooks/reactHooksExModelListEN.dart';
import '../../courses/React/reactRouting/reactRoutingExModelListEN.dart';
import '../../courses/React/reactData/reactDataExModelListEN.dart';
import '../../courses/React/reactPerformance/reactPerformanceExModelListEN.dart';
import '../../courses/React/reactTesting/reactTestingExModelListEN.dart';
import '../../courses/React/reactStyling/reactStylingExModelListEN.dart';

List<CoursesMainModel> coursesReactMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'React Basics',
  catExercise: reactBasicsModelEN,
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
  catExercise: reactPropsModelEN,
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
  generalName: 'State',
  catExercise: reactStateModelEN,
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
  generalName: 'Events',
  catExercise: reactEventsModelEN,
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
  generalName: 'Lists & Keys',
  catExercise: reactListsModelEN,
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
  generalName: 'Conditional Rendering',
  catExercise: reactConditionalModelEN,
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
  generalName: 'Forms & Inputs',
  catExercise: reactFormsModelEN,
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
  generalName: 'Effects',
  catExercise: reactEffectsModelEN,
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
  catExercise: reactContextModelEN,
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
  generalName: 'Custom Hooks',
  catExercise: reactHooksModelEN,
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
  generalName: 'Routing',
  catExercise: reactRoutingModelEN,
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
  generalName: 'Data Fetching',
  catExercise: reactDataModelEN,
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
  generalName: 'Performance',
  catExercise: reactPerformanceModelEN,
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
  catExercise: reactTestingModelEN,
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
  generalName: 'Styling',
  catExercise: reactStylingModelEN,
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