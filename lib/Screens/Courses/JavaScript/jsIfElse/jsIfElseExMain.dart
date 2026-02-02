import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse330.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse331.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse332.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse333.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse334.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse335.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse336.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse337.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse338.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse339.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse340.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse341.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse342.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse343.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsIfElse/Ex/jsIfElse344.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsIfElseExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsIfElseExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsIfElseExMain> createState() => _JsIfElseExMainState();
}

class _JsIfElseExMainState extends State<JsIfElseExMain> {
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
          if (widget.id == 330)
            JsIfElseEx330(
              id: 330,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 331)
            JsIfElseEx331(
              id: 331,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 332)
            JsIfElseEx332(
              id: 332,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 333)
            JsIfElseEx333(
              id: 333,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 334)
            JsIfElseEx334(
              id: 334,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 335)
            JsIfElseEx335(
              id: 335,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 336)
            JsIfElseEx336(
              id: 336,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 337)
            JsIfElseEx337(
              id: 337,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 338)
            JsIfElseEx338(
              id: 338,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 339)
            JsIfElseEx339(
              id: 339,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 340)
            JsIfElseEx340(
              id: 340,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 341)
            JsIfElseEx341(
              id: 341,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 342)
            JsIfElseEx342(
              id: 342,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 343)
            JsIfElseEx343(
              id: 343,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 344)
            JsIfElseEx344(
              id: 344,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
