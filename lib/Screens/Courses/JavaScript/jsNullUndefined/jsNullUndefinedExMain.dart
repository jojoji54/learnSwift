import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined435.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined436.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined437.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined438.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined439.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined440.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined441.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined442.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined443.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined444.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined445.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined446.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined447.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined448.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsNullUndefined/Ex/jsNullUndefined449.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsNullUndefinedExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsNullUndefinedExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsNullUndefinedExMain> createState() => _JsNullUndefinedExMainState();
}

class _JsNullUndefinedExMainState extends State<JsNullUndefinedExMain> {
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
          if (widget.id == 435)
            JsNullUndefinedEx435(
              id: 435,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 436)
            JsNullUndefinedEx436(
              id: 436,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 437)
            JsNullUndefinedEx437(
              id: 437,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 438)
            JsNullUndefinedEx438(
              id: 438,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 439)
            JsNullUndefinedEx439(
              id: 439,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 440)
            JsNullUndefinedEx440(
              id: 440,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 441)
            JsNullUndefinedEx441(
              id: 441,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 442)
            JsNullUndefinedEx442(
              id: 442,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 443)
            JsNullUndefinedEx443(
              id: 443,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 444)
            JsNullUndefinedEx444(
              id: 444,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 445)
            JsNullUndefinedEx445(
              id: 445,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 446)
            JsNullUndefinedEx446(
              id: 446,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 447)
            JsNullUndefinedEx447(
              id: 447,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 448)
            JsNullUndefinedEx448(
              id: 448,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 449)
            JsNullUndefinedEx449(
              id: 449,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
