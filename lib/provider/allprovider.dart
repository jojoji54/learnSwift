import 'package:flutter/material.dart';
import 'package:learnswift/data/courses/coursesExModel.dart';

class AllProvider with ChangeNotifier {
  List<CoursesExModel> _data = [];
  int _courseCategory = 0;
  int _completedCount = 0;

  // Getters
  List<CoursesExModel> get data => _data;
  int get courseCategory => _courseCategory;
  int get completedCount => _completedCount;

  // Método para actualizar un elemento específico
  void setData(List<CoursesExModel> newData) {
    _data = newData;
    notifyListeners();
  }

  void setCourseCategory(int newCourseCat) {
    _courseCategory = newCourseCat;
    notifyListeners();
  }

  void setCourseCount(int newCourseCount) {
    _completedCount = newCourseCount;
    notifyListeners();
  }

  // Método para actualizar los datos
  void getData(int value, List<CoursesExModel> sbModel) {
    switch (value) {
      case 0:
        _data = sbModel;
        _courseCategory = 0;
        break;
      default:
        _data = [];
        break;
    }
    // Calcular el número de cursos completados
    _completedCount = _data.where((course) => course.completed).length;

    // Notificar a los widgets que escuchan
    notifyListeners();
  }

 
}
