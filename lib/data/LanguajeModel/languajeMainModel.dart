import 'dart:ui';

import 'package:learnswift/data/mainModel/coursesMainModel.dart';

class ProgrammingItem {
  final int id; // Identificador único para cada lenguaje o framework
  final String name; // Nombre del lenguaje o framework
  final Color color1; // Primer color para el degradado
  final Color color2; // Segundo color para el degradado
  final bool isActive; // Indica si está activado inicialmente
  final String description;
   final List<CoursesMainModel> coursesList;

  ProgrammingItem({
    required this.id,
    required this.name,
    required this.coursesList,
    required this.color1,
    required this.color2,
    required this.isActive,
    required this.description,
  });
}
