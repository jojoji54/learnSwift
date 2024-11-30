import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/Constant.dart';

class ComingSoonButton extends StatefulWidget {
  const ComingSoonButton({super.key});

  @override
  State<ComingSoonButton> createState() => _ComingSoonButtonState();
}

class _ComingSoonButtonState extends State<ComingSoonButton> {
  final List<CourseModel> _coursesEN = [
    CourseModel(id: 3, name: 'Switch Statements'),
    CourseModel(id: 4, name: 'Loops'),
    CourseModel(id: 5, name: 'Arrays'),
    CourseModel(id: 6, name: 'Dictionaries'),
    CourseModel(id: 7, name: 'Sets'),
    CourseModel(id: 8, name: 'Functions'),
    CourseModel(id: 9, name: 'Optionals'),
    CourseModel(id: 10, name: 'Classes and Structures'),
    CourseModel(id: 11, name: 'Enumerations'),
    CourseModel(id: 12, name: 'Protocols and Delegation'),
    CourseModel(id: 13, name: 'Closures'),
    CourseModel(id: 14, name: 'Error Handling'),
    CourseModel(id: 15, name: 'Error Handling'),
    CourseModel(id: 16, name: 'Advanced Swift'),
    CourseModel(id: 17, name: 'Memory Management'),
    CourseModel(id: 18, name: 'Working with Files and Data'),
    CourseModel(id: 19, name: 'UI Basics (Bonus para Apps)'),
  ];

  final List<CourseModel> _coursesES = [
    CourseModel(id: 3, name: 'Sentencias Switch'),
    CourseModel(id: 4, name: 'Bucles'),
    CourseModel(id: 5, name: 'Arreglos'),
    CourseModel(id: 6, name: 'Diccionarios'),
    CourseModel(id: 7, name: 'Conjuntos'),
    CourseModel(id: 8, name: 'Funciones'),
    CourseModel(id: 9, name: 'Opcionales'),
    CourseModel(id: 10, name: 'Clases y Estructuras'),
    CourseModel(id: 11, name: 'Enumeraciones'),
    CourseModel(id: 12, name: 'Protocolos y Delegación'),
    CourseModel(id: 13, name: 'Closures'),
    CourseModel(id: 14, name: 'Manejo de Errores'),
    CourseModel(id: 15, name: 'Manejo de Errores'),
    CourseModel(id: 16, name: 'Swift Avanzado'),
    CourseModel(id: 17, name: 'Gestión de Memoria'),
    CourseModel(id: 18, name: 'Trabajo con Archivos y Datos'),
    CourseModel(id: 19, name: 'Conceptos Básicos de UI\n(Bonus para Apps)'),
  ];

  List<CourseModel> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Constant.languaje == 'es') {
      data = _coursesES;
    } else {
      data = _coursesEN;
    }
  }

  void _showComingSoonDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            AppLocalizations.of(context)!.comingSoonTitle,
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.comingSoonButton,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: data.map((course) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 8,
                            color: Colors.black54,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            course.name,
                            style: const TextStyle(
                              fontFamily: 'InconsolataRegular',
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(AppLocalizations.of(context)!.close),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 120, // Limita la altura máxima del Card
        maxWidth: 1000, // Limita el ancho máximo del Card
        minWidth: 120,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1, //                   <--- border width here
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: () {
            _showComingSoonDialog(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFFf3f4f2), // Fondo similar a las cards
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Bordes redondeados
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            AppLocalizations.of(context)!.comingSoonButton,
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class CourseModel {
  final int id;
  final String name;
  bool isChecked;

  CourseModel({
    required this.id,
    required this.name,
    this.isChecked = false,
  });
}
