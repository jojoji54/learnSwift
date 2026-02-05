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
import '../../courses/TensorFlow/tfBasics/tfBasicsExModelListES.dart';
import '../../courses/TensorFlow/tfTensors/tfTensorsExModelListES.dart';
import '../../courses/TensorFlow/tfOps/tfOpsExModelListES.dart';
import '../../courses/TensorFlow/tfAutodiff/tfAutodiffExModelListES.dart';
import '../../courses/TensorFlow/tfKerasIntro/tfKerasIntroExModelListES.dart';
import '../../courses/TensorFlow/tfLayersModels/tfLayersModelsExModelListES.dart';
import '../../courses/TensorFlow/tfTraining/tfTrainingExModelListES.dart';
import '../../courses/TensorFlow/tfCallbacks/tfCallbacksExModelListES.dart';
import '../../courses/TensorFlow/tfData/tfDataExModelListES.dart';
import '../../courses/TensorFlow/tfPreprocessing/tfPreprocessingExModelListES.dart';
import '../../courses/TensorFlow/tfSaving/tfSavingExModelListES.dart';
import '../../courses/TensorFlow/tfTensorBoard/tfTensorBoardExModelListES.dart';
import '../../courses/TensorFlow/tfDeployment/tfDeploymentExModelListES.dart';
import '../../courses/TensorFlow/tfPerformance/tfPerformanceExModelListES.dart';
import '../../courses/TensorFlow/tfAdvanced/tfAdvancedExModelListES.dart';

List<CoursesMainModel> coursesTensorFlowMainModelListES = [
CoursesMainModel(
  id: 0,
  generalName: 'Fundamentos de TensorFlow',
  catExercise: tfBasicsModelES,
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
  generalName: 'Tensores y Formas',
  catExercise: tfTensorsModelES,
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
  generalName: 'Operaciones con Tensores',
  catExercise: tfOpsModelES,
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
  generalName: 'Autodiff y Gradientes',
  catExercise: tfAutodiffModelES,
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
  generalName: 'Keras Basico',
  catExercise: tfKerasIntroModelES,
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
  generalName: 'Capas y Modelos',
  catExercise: tfLayersModelsModelES,
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
  generalName: 'Bucles de Entrenamiento',
  catExercise: tfTrainingModelES,
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
  catExercise: tfCallbacksModelES,
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
  generalName: 'Pipelines con tf.data',
  catExercise: tfDataModelES,
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
  generalName: 'Preprocesado',
  catExercise: tfPreprocessingModelES,
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
  generalName: 'Guardar y Cargar',
  catExercise: tfSavingModelES,
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
  catExercise: tfTensorBoardModelES,
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
  generalName: 'Despliegue y TFLite',
  catExercise: tfDeploymentModelES,
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
  generalName: 'Rendimiento y Debug',
  catExercise: tfPerformanceModelES,
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
  generalName: 'Patrones Avanzados',
  catExercise: tfAdvancedModelES,
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
