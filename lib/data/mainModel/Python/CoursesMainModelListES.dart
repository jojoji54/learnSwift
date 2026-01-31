import 'package:learnswift/data/courses/Python/pythonBasics/pyBasicsExModelListES.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

import '../../../Screens/Courses/python/pythonBasics/PythonBasicExMain.dart';

List<CoursesMainModel> coursesPythonMainModelListES = [
  CoursesMainModel(
    id: 0,
    generalName: 'Conceptos básicos',
    catExercise: pyBasicsExModelListES,
    description:
        'Cubre los conceptos fundamentales de Python, incluyendo la sintaxis, variables y tipos de datos. Proporciona las bases esenciales para empezar a programar en Python.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        PythonBasicsExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),
  /* CoursesMainModel(
    id: 1,
    generalName: 'Control de Flujo',
    catExercise: pythonControlFlowModelES,
    description:
        'Explora las sentencias condicionales como if-else y los bucles como for y while. Fundamental para controlar la ejecución del programa en base a condiciones.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ControlFlowExMain(
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
    generalName: 'Funciones',
    catExercise: pythonFunctionsModelES,
    description:
        'Introduce las funciones en Python y su importancia en la programación modular. Aprende a definir y llamar funciones para una mejor organización del código.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        FunctionsExMain(
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
    generalName: 'Estructuras de Datos',
    catExercise: pythonDataStructuresModelES,
    description:
        'Cubre listas, diccionarios, conjuntos y tuplas en Python. Esencial para almacenar, recuperar y manipular colecciones de datos de manera eficiente.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        DataStructuresExMain(
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
    generalName: 'Manejo de Archivos',
    catExercise: pythonFileHandlingModelES,
    description:
        'Enseña cómo trabajar con archivos en Python, incluyendo lectura, escritura y gestión de archivos. Clave para interactuar con fuentes de datos externas.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        FileHandlingExMain(
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
    generalName: 'Manejo de Errores',
    catExercise: pythonErrorHandlingModelES,
    description:
        'Se centra en manejar excepciones y errores en Python usando bloques try-except. Esencial para escribir aplicaciones robustas y tolerantes a errores.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ErrorHandlingExMain(
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
    generalName: 'Programación Orientada a Objetos',
    catExercise: pythonOOPModelES,
    description:
        'Introduce los conceptos de POO en Python, como clases, objetos, herencia y polimorfismo. Fundamental para construir código escalable y reutilizable.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        OOPExMain(
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
    generalName: 'Módulos y Librerías',
    catExercise: pythonModulesModelES,
    description:
        'Explica cómo usar y crear módulos y librerías en Python. Clave para aprovechar funcionalidades preconstruidas y organizar código en archivos separados.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        ModulesLibrariesExMain(
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
    generalName: 'Trabajando con APIs',
    catExercise: pythonAPIsModelES,
    description:
        'Enseña cómo interactuar con APIs web usando Python. Esencial para recuperar y enviar datos a servicios externos.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        APIsExMain(
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
    generalName: 'Python para Análisis de Datos',
    catExercise: pythonDataAnalysisModelES,
    description:
        'Introduce conceptos de análisis de datos utilizando librerías como NumPy y Pandas. Clave para procesar y analizar grandes conjuntos de datos de manera eficiente.',
    numCompletedCourses: 0,
    totalCourses: 15,
    alreadyBuy: true,
    completed: false,
    builder: (context, id, title, description, completed, color1, color2) =>
        DataAnalysisExMain(
      id: id,
      title: title,
      description: description,
      completed: completed,
      color1: color1,
      color2: color2,
    ),
  ),

*/
];
