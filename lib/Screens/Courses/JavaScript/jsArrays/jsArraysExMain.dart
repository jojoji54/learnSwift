import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays375.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays376.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays377.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays378.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays379.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays380.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays381.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays382.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays383.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays384.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays385.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays386.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays387.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays388.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsArrays/Ex/jsArrays389.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsArraysExMain> createState() => _JsArraysExMainState();
}

class _JsArraysExMainState extends State<JsArraysExMain> {
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
          if (widget.id == 375)
            JsArraysEx375(
              id: 375,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 376)
            JsArraysEx376(
              id: 376,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 377)
            JsArraysEx377(
              id: 377,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 378)
            JsArraysEx378(
              id: 378,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 379)
            JsArraysEx379(
              id: 379,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 380)
            JsArraysEx380(
              id: 380,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 381)
            JsArraysEx381(
              id: 381,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 382)
            JsArraysEx382(
              id: 382,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 383)
            JsArraysEx383(
              id: 383,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 384)
            JsArraysEx384(
              id: 384,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 385)
            JsArraysEx385(
              id: 385,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 386)
            JsArraysEx386(
              id: 386,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 387)
            JsArraysEx387(
              id: 387,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 388)
            JsArraysEx388(
              id: 388,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 389)
            JsArraysEx389(
              id: 389,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
