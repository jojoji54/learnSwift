import 'package:flutter/material.dart';

// Exercises (222 - 236)
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx222.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx223.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx224.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx225.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx226.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx227.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx228.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx229.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx230.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx231.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx232.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx233.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx234.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx235.dart';
import 'package:learnswift/Screens/Courses/python/pythonErrorHandling/Ex/pythonErrorHandlingEx236.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class ErrorHandlingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  ErrorHandlingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<ErrorHandlingExMain> createState() => _ErrorHandlingExMainState();
}

class _ErrorHandlingExMainState extends State<ErrorHandlingExMain> {
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
          if (widget.id == 222)
            PythonErrorHandlingEx222(
              id: 222,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 223)
            PythonErrorHandlingEx223(
              id: 223,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 224)
            PythonErrorHandlingEx224(
              id: 224,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 225)
            PythonErrorHandlingEx225(
              id: 225,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 226)
            PythonErrorHandlingEx226(
              id: 226,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 227)
            PythonErrorHandlingEx227(
              id: 227,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 228)
            PythonErrorHandlingEx228(
              id: 228,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 229)
            PythonErrorHandlingEx229(
              id: 229,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 230)
            PythonErrorHandlingEx230(
              id: 230,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 231)
            PythonErrorHandlingEx231(
              id: 231,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 232)
            PythonErrorHandlingEx232(
              id: 232,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 233)
            PythonErrorHandlingEx233(
              id: 233,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 234)
            PythonErrorHandlingEx234(
              id: 234,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 235)
            PythonErrorHandlingEx235(
              id: 235,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 236)
            PythonErrorHandlingEx236(
              id: 236,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
