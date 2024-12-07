import 'package:flutter/material.dart';
import 'package:learnswift/data/mainModel/coursesMainModel.dart';

class AllProvider with ChangeNotifier {
  
  List<CoursesMainModel> _data = [];
  int _courseCategory = 0;
  int _completedCount = 0;
  bool _everythingPurchased = false;
  String _lenguajeProductID = "";


  // Getters
  List<CoursesMainModel> get data => _data;
  int get courseCategory => _courseCategory;
  int get completedCount => _completedCount;
  bool get everythingPurchased => _everythingPurchased;
  String get lenguajeProductID => _lenguajeProductID;

  void setEverythingUnlocked(bool newData) async {
    _everythingPurchased = newData;
    notifyListeners();
  }

  // Método para actualizar un elemento específico
  void setData(List<CoursesMainModel> newData) {
    _data = newData;
    notifyListeners();
  }
 void setLenguajeProductID(String  newData) {
    _lenguajeProductID = newData;
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
  void getData(int value, List<CoursesMainModel> sbModel) {
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
