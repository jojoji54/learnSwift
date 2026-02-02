import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects390.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects391.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects392.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects393.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects394.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects395.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects396.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects397.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects398.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects399.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects400.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects401.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects402.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects403.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsObjects/Ex/jsObjects404.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsObjectsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsObjectsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsObjectsExMain> createState() => _JsObjectsExMainState();
}

class _JsObjectsExMainState extends State<JsObjectsExMain> {
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
          if (widget.id == 390)
            JsObjectsEx390(
              id: 390,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 391)
            JsObjectsEx391(
              id: 391,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 392)
            JsObjectsEx392(
              id: 392,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 393)
            JsObjectsEx393(
              id: 393,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 394)
            JsObjectsEx394(
              id: 394,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 395)
            JsObjectsEx395(
              id: 395,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 396)
            JsObjectsEx396(
              id: 396,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 397)
            JsObjectsEx397(
              id: 397,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 398)
            JsObjectsEx398(
              id: 398,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 399)
            JsObjectsEx399(
              id: 399,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 400)
            JsObjectsEx400(
              id: 400,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 401)
            JsObjectsEx401(
              id: 401,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 402)
            JsObjectsEx402(
              id: 402,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 403)
            JsObjectsEx403(
              id: 403,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 404)
            JsObjectsEx404(
              id: 404,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
