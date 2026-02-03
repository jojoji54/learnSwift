import 'package:flutter/material.dart';

// Exercises (237 - 251)
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx237.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx238.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx239.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx240.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx241.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx242.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx243.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx244.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx245.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx246.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx247.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx248.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx249.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx250.dart';
import 'package:learnswift/Screens/Courses/python/pythonOOP/Ex/pythonOOPEx251.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class OOPExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  OOPExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<OOPExMain> createState() => _OOPExMainState();
}

class _OOPExMainState extends State<OOPExMain> {
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
          duration: const Duration(seconds: 2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color1, widget.color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Expanded(
                  child: Center(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontFamily: 'InconsolataBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CatInfoIcon(description: widget.description),
                ),
          ],
        ),
      ),
      body: Stack(
        children: [
          if (widget.id == 237)
            PythonOOPEx237(
              id: 237,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 238)
            PythonOOPEx238(
              id: 238,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 239)
            PythonOOPEx239(
              id: 239,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 240)
            PythonOOPEx240(
              id: 240,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 241)
            PythonOOPEx241(
              id: 241,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 242)
            PythonOOPEx242(
              id: 242,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 243)
            PythonOOPEx243(
              id: 243,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 244)
            PythonOOPEx244(
              id: 244,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 245)
            PythonOOPEx245(
              id: 245,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 246)
            PythonOOPEx246(
              id: 246,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 247)
            PythonOOPEx247(
              id: 247,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 248)
            PythonOOPEx248(
              id: 248,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 249)
            PythonOOPEx249(
              id: 249,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 250)
            PythonOOPEx250(
              id: 250,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 251)
            PythonOOPEx251(
              id: 251,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
