import 'package:learnswift/data/mainModel/coursesMainModel.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/tfBasicsExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/tfTensorsExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/tfOpsExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/tfAutodiffExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/tfKerasIntroExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/tfLayersModelsExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/tfTrainingExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/tfCallbacksExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/tfDataExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/tfPreprocessingExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/tfSavingExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/tfTensorBoardExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/tfDeploymentExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/tfPerformanceExMain.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/tfAdvancedExMain.dart';
import '../../courses/TensorFlow/tfBasics/tfBasicsExModelListEN.dart';
import '../../courses/TensorFlow/tfTensors/tfTensorsExModelListEN.dart';
import '../../courses/TensorFlow/tfOps/tfOpsExModelListEN.dart';
import '../../courses/TensorFlow/tfAutodiff/tfAutodiffExModelListEN.dart';
import '../../courses/TensorFlow/tfKerasIntro/tfKerasIntroExModelListEN.dart';
import '../../courses/TensorFlow/tfLayersModels/tfLayersModelsExModelListEN.dart';
import '../../courses/TensorFlow/tfTraining/tfTrainingExModelListEN.dart';
import '../../courses/TensorFlow/tfCallbacks/tfCallbacksExModelListEN.dart';
import '../../courses/TensorFlow/tfData/tfDataExModelListEN.dart';
import '../../courses/TensorFlow/tfPreprocessing/tfPreprocessingExModelListEN.dart';
import '../../courses/TensorFlow/tfSaving/tfSavingExModelListEN.dart';
import '../../courses/TensorFlow/tfTensorBoard/tfTensorBoardExModelListEN.dart';
import '../../courses/TensorFlow/tfDeployment/tfDeploymentExModelListEN.dart';
import '../../courses/TensorFlow/tfPerformance/tfPerformanceExModelListEN.dart';
import '../../courses/TensorFlow/tfAdvanced/tfAdvancedExModelListEN.dart';

List<CoursesMainModel> coursesTensorFlowMainModelListEN = [
CoursesMainModel(
  id: 0,
  generalName: 'TensorFlow Basics',
  catExercise: tfBasicsModelEN,
  description: "tensorflowCat0InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfBasicsExMain(
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
  generalName: 'Tensors and Shapes',
  catExercise: tfTensorsModelEN,
  description: "tensorflowCat1InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfTensorsExMain(
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
  generalName: 'Tensor Ops',
  catExercise: tfOpsModelEN,
  description: "tensorflowCat2InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfOpsExMain(
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
  generalName: 'Autodiff and Gradients',
  catExercise: tfAutodiffModelEN,
  description: "tensorflowCat3InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfAutodiffExMain(
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
  generalName: 'Keras Basics',
  catExercise: tfKerasIntroModelEN,
  description: "tensorflowCat4InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfKerasIntroExMain(
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
  generalName: 'Layers and Models',
  catExercise: tfLayersModelsModelEN,
  description: "tensorflowCat5InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfLayersModelsExMain(
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
  generalName: 'Training Loops',
  catExercise: tfTrainingModelEN,
  description: "tensorflowCat6InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfTrainingExMain(
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
  generalName: 'Callbacks',
  catExercise: tfCallbacksModelEN,
  description: "tensorflowCat7InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfCallbacksExMain(
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
  generalName: 'tf.data Pipelines',
  catExercise: tfDataModelEN,
  description: "tensorflowCat8InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfDataExMain(
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
  generalName: 'Preprocessing',
  catExercise: tfPreprocessingModelEN,
  description: "tensorflowCat9InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfPreprocessingExMain(
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
  generalName: 'Saving and Loading',
  catExercise: tfSavingModelEN,
  description: "tensorflowCat10InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfSavingExMain(
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
  generalName: 'TensorBoard',
  catExercise: tfTensorBoardModelEN,
  description: "tensorflowCat11InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfTensorBoardExMain(
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
  generalName: 'Deployment and TFLite',
  catExercise: tfDeploymentModelEN,
  description: "tensorflowCat12InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfDeploymentExMain(
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
  generalName: 'Performance and Debugging',
  catExercise: tfPerformanceModelEN,
  description: "tensorflowCat13InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfPerformanceExMain(
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
  generalName: 'Advanced Patterns',
  catExercise: tfAdvancedModelEN,
  description: "tensorflowCat14InfoContent", 
  numCompletedCourses: 0,
  totalCourses: 15,
  alreadyBuy: true,
  completed: false,
  builder: (context, id, title, description, completed, color1, color2) =>
      TfAdvancedExMain(
    id: id,
    title: title,
    description: description,
    completed: completed,
    color1: color1,
    color2: color2,
  ),
),
];
