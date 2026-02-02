import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx315.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx316.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx317.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx318.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx319.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx320.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx321.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx322.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx323.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx324.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx325.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx326.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx327.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx328.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsBoolean/Ex/jsBooleanEx329.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsBooleanExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsBooleanExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsBooleanExMain> createState() => _JsBooleanExMainState();
}

class _JsBooleanExMainState extends State<JsBooleanExMain> {
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
          if (widget.id == 315)
            JsBooleanEx315(
              id: 315,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 316)
            JsBooleanEx316(
              id: 316,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 317)
            JsBooleanEx317(
              id: 317,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 318)
            JsBooleanEx318(
              id: 318,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 319)
            JsBooleanEx319(
              id: 319,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 320)
            JsBooleanEx320(
              id: 320,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 321)
            JsBooleanEx321(
              id: 321,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 322)
            JsBooleanEx322(
              id: 322,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 323)
            JsBooleanEx323(
              id: 323,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 324)
            JsBooleanEx324(
              id: 324,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 325)
            JsBooleanEx325(
              id: 325,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 326)
            JsBooleanEx326(
              id: 326,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 327)
            JsBooleanEx327(
              id: 327,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 328)
            JsBooleanEx328(
              id: 328,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 329)
            JsBooleanEx329(
              id: 329,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
