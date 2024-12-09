import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx147.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class PythonBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
    Color color1;
  Color color2;
   PythonBasicsExMain(
      {super.key,
      required this.id,
      required this.title,
      required this.description, required this.completed ,     required this.color1,
      required this.color2});

  @override
  State<PythonBasicsExMain> createState() => _PythonBasicsExMainState();
}

class _PythonBasicsExMainState extends State<PythonBasicsExMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          flexibleSpace: AnimatedContainer(
            duration: const Duration(seconds: 2), // Duración de la transición
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          toolbarHeight: 100, // Define la altura deseada del AppBar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontFamily: 'InconsolataBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CatInfoIcon(
                  description: widget.description,
                ), // Aquí añades el ícono de información
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            if (widget.id == 147)
              PythonBasicsEx147(
                id: 147,
                title: widget.title, completed: widget.completed
              ),
          ],
        ));
  }
}
