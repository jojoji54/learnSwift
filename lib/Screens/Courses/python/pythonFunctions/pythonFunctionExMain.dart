import 'package:flutter/material.dart';

// Exercises (177 - 191)
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx177.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx178.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx179.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx180.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx181.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx182.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx183.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx184.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx185.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx186.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx187.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx188.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx189.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx190.dart';
import 'package:learnswift/Screens/Courses/python/pythonFunctions/Ex/pythonFunctionsEx191.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FunctionsExMain> createState() => _FunctionsExMainState();
}

class _FunctionsExMainState extends State<FunctionsExMain> {
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
          if (widget.id == 177)
            PythonFunctionsEx177(
              id: 177,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 178)
            PythonFunctionsEx178(
              id: 178,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 179)
            PythonFunctionsEx179(
              id: 179,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 180)
            PythonFunctionsEx180(
              id: 180,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 181)
            PythonFunctionsEx181(
              id: 181,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 182)
            PythonFunctionsEx182(
              id: 182,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 183)
            PythonFunctionsEx183(
              id: 183,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 184)
            PythonFunctionsEx184(
              id: 184,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 185)
            PythonFunctionsEx185(
              id: 185,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 186)
            PythonFunctionsEx186(
              id: 186,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 187)
            PythonFunctionsEx187(
              id: 187,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 188)
            PythonFunctionsEx188(
              id: 188,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 189)
            PythonFunctionsEx189(
              id: 189,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 190)
            PythonFunctionsEx190(
              id: 190,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 191)
            PythonFunctionsEx191(
              id: 191,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
