import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops360.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops361.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops362.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops363.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops364.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops365.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops366.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops367.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops368.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops369.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops370.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops371.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops372.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops373.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsLoops/Ex/jsLoops374.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsLoopsExMain> createState() => _JsLoopsExMainState();
}

class _JsLoopsExMainState extends State<JsLoopsExMain> {
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
          if (widget.id == 360)
            JsLoopsEx360(
              id: 360,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 361)
            JsLoopsEx361(
              id: 361,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 362)
            JsLoopsEx362(
              id: 362,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 363)
            JsLoopsEx363(
              id: 363,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 364)
            JsLoopsEx364(
              id: 364,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 365)
            JsLoopsEx365(
              id: 365,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 366)
            JsLoopsEx366(
              id: 366,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 367)
            JsLoopsEx367(
              id: 367,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 368)
            JsLoopsEx368(
              id: 368,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 369)
            JsLoopsEx369(
              id: 369,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 370)
            JsLoopsEx370(
              id: 370,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 371)
            JsLoopsEx371(
              id: 371,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 372)
            JsLoopsEx372(
              id: 372,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 373)
            JsLoopsEx373(
              id: 373,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 374)
            JsLoopsEx374(
              id: 374,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
