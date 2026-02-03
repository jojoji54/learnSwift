import 'package:flutter/material.dart';

// Exercises (267 - 281)
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx267.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx268.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx269.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx270.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx271.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx272.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx273.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx274.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx275.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx276.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx277.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx278.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx279.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx280.dart';
import 'package:learnswift/Screens/Courses/python/pythonAPIs/Ex/pythonAPIsEx281.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class APIsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  APIsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<APIsExMain> createState() => _APIsExMainState();
}

class _APIsExMainState extends State<APIsExMain> {
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
          if (widget.id == 267)
            PythonAPIsEx267(
              id: 267,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 268)
            PythonAPIsEx268(
              id: 268,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 269)
            PythonAPIsEx269(
              id: 269,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 270)
            PythonAPIsEx270(
              id: 270,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 271)
            PythonAPIsEx271(
              id: 271,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 272)
            PythonAPIsEx272(
              id: 272,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 273)
            PythonAPIsEx273(
              id: 273,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 274)
            PythonAPIsEx274(
              id: 274,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 275)
            PythonAPIsEx275(
              id: 275,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 276)
            PythonAPIsEx276(
              id: 276,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 277)
            PythonAPIsEx277(
              id: 277,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 278)
            PythonAPIsEx278(
              id: 278,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 279)
            PythonAPIsEx279(
              id: 279,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 280)
            PythonAPIsEx280(
              id: 280,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 281)
            PythonAPIsEx281(
              id: 281,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
