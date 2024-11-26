class CoursesExModel {
  final int id;
  final String exerciseName;
  bool alreadyBuy;
  bool completed;

  // Constructor de la clase
  CoursesExModel({
    required this.id,
    required this.exerciseName,
    required this.alreadyBuy,
    required this.completed,
  });

  // Factory constructor para crear una instancia desde JSON
  factory CoursesExModel.fromJson(Map<String, dynamic> json) {
    return CoursesExModel(
      id: json['id'],
      exerciseName: json['exerciseName'],
      alreadyBuy: json['alreadyBuy'],
      completed: json['completed'],
    );
  }

  // Método para convertir una instancia a JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'exerciseName': exerciseName,
      'alreadyBuy': alreadyBuy,
      'completed': completed,
    };
  }

  // Método para representar el curso como una cadena de texto
  @override
  String toString() {
    return 'CoursesExModel(id: $id, exerciseName: $exerciseName, alreadyBuy: $alreadyBuy, completed: $completed)';
  }
}
