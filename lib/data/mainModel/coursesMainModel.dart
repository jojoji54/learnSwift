import 'package:learnswift/data/courses/coursesExModel.dart';

class CoursesMainModel {
  final int id;
  final String generalName;
  int numCompletedCourses; // Nombre corregido
  List<CoursesExModel> catExercise;
  int totalCourses;
  bool alreadyBuy;
  bool completed;
  String description;

  // Constructor de la clase
  CoursesMainModel({
    required this.id,
    required this.generalName,
    required this.catExercise,
    required this.description,
    required this.numCompletedCourses,
    required this.totalCourses,
    required this.alreadyBuy,
    required this.completed,
  });

  // Factory constructor para crear una instancia desde JSON
  factory CoursesMainModel.fromJson(Map<String, dynamic> json) {
    return CoursesMainModel(
      id: json['id'],
      generalName: json['generalName'],
      catExercise: json['catExercise'],
      description: json['description'],
      numCompletedCourses: json['numCompletedCourses'],
      totalCourses: json['totalCourses'],
      alreadyBuy: json['alreadyBuy'],
      completed: json['completed'],
    );
  }

  // Método para convertir una instancia a JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'generalName': generalName,
      'catExercise': catExercise,
      'description': description,
      'numCompletedCourses': numCompletedCourses,
      'totalCourses': totalCourses,
      'alreadyBuy': alreadyBuy,
      'completed': completed,
    };
  }

  // Método para representar el curso como una cadena de texto
  @override
  String toString() {
    return 'CoursesMainModel(id: $id, generalName: $generalName, numCompletedCourses: $numCompletedCourses, totalCourses: $totalCourses, alreadyBuy: $alreadyBuy, completed: $completed)';
  }
}
