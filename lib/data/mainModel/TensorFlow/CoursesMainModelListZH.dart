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
import '../../courses/TensorFlow/tfBasics/tfBasicsExModelListZH.dart';
import '../../courses/TensorFlow/tfTensors/tfTensorsExModelListZH.dart';
import '../../courses/TensorFlow/tfOps/tfOpsExModelListZH.dart';
import '../../courses/TensorFlow/tfAutodiff/tfAutodiffExModelListZH.dart';
import '../../courses/TensorFlow/tfKerasIntro/tfKerasIntroExModelListZH.dart';
import '../../courses/TensorFlow/tfLayersModels/tfLayersModelsExModelListZH.dart';
import '../../courses/TensorFlow/tfTraining/tfTrainingExModelListZH.dart';
import '../../courses/TensorFlow/tfCallbacks/tfCallbacksExModelListZH.dart';
import '../../courses/TensorFlow/tfData/tfDataExModelListZH.dart';
import '../../courses/TensorFlow/tfPreprocessing/tfPreprocessingExModelListZH.dart';
import '../../courses/TensorFlow/tfSaving/tfSavingExModelListZH.dart';
import '../../courses/TensorFlow/tfTensorBoard/tfTensorBoardExModelListZH.dart';
import '../../courses/TensorFlow/tfDeployment/tfDeploymentExModelListZH.dart';
import '../../courses/TensorFlow/tfPerformance/tfPerformanceExModelListZH.dart';
import '../../courses/TensorFlow/tfAdvanced/tfAdvancedExModelListZH.dart';

List<CoursesMainModel> coursesTensorFlowMainModelListZH = [
CoursesMainModel(
  id: 0,
  generalName: 'TensorFlow 基础',
  catExercise: tfBasicsModelZH,
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
  generalName: '张量与形状',
  catExercise: tfTensorsModelZH,
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
  generalName: '张量运算',
  catExercise: tfOpsModelZH,
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
  generalName: '自动求导与梯度',
  catExercise: tfAutodiffModelZH,
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
  generalName: 'Keras 基础',
  catExercise: tfKerasIntroModelZH,
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
  generalName: '层与模型',
  catExercise: tfLayersModelsModelZH,
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
  generalName: '训练循环',
  catExercise: tfTrainingModelZH,
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
  generalName: '回调',
  catExercise: tfCallbacksModelZH,
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
  generalName: 'tf.data 数据管道',
  catExercise: tfDataModelZH,
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
  generalName: '预处理',
  catExercise: tfPreprocessingModelZH,
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
  generalName: '保存与加载',
  catExercise: tfSavingModelZH,
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
  catExercise: tfTensorBoardModelZH,
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
  generalName: '部署与 TFLite',
  catExercise: tfDeploymentModelZH,
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
  generalName: '性能与调试',
  catExercise: tfPerformanceModelZH,
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
  generalName: '高级模式',
  catExercise: tfAdvancedModelZH,
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
