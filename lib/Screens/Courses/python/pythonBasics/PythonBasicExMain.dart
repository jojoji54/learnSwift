import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx147.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx148.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx149.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx150.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx151.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx152.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx153.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx154.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx155.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx156.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx157.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx158.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx159.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx160.dart';
import 'package:learnswift/Screens/Courses/python/pythonBasics/Ex/pythonBasicsEx161.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class PythonBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PythonBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

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
          if (widget.id == 147)
            PythonBasicsEx147(
              id: 147,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 148)
            PythonBasicsEx148(
              id: 148,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 149)
            PythonBasicsEx149(
              id: 149,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 150)
            PythonBasicsEx150(
              id: 150,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 151)
            PythonBasicsEx151(
              id: 151,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 152)
            PythonBasicsEx152(
              id: 152,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 153)
            PythonBasicsEx153(
              id: 153,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 154)
            PythonBasicsEx154(
              id: 154,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 155)
            PythonBasicsEx155(
              id: 155,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 156)
            PythonBasicsEx156(
              id: 156,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 157)
            PythonBasicsEx157(
              id: 157,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 158)
            PythonBasicsEx158(
              id: 158,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 159)
            PythonBasicsEx159(
              id: 159,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 160)
            PythonBasicsEx160(
              id: 160,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 161)
            PythonBasicsEx161(
              id: 161,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
