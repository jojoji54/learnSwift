import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync450.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync451.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync452.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync453.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync454.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync455.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync456.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync457.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync458.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync459.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync460.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync461.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync462.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync463.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsPromisesAsync/Ex/jsPromisesAsync464.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsPromisesAsyncExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsPromisesAsyncExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsPromisesAsyncExMain> createState() => _JsPromisesAsyncExMainState();
}

class _JsPromisesAsyncExMainState extends State<JsPromisesAsyncExMain> {
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
          if (widget.id == 450)
            JsPromisesAsyncEx450(
              id: 450,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 451)
            JsPromisesAsyncEx451(
              id: 451,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 452)
            JsPromisesAsyncEx452(
              id: 452,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 453)
            JsPromisesAsyncEx453(
              id: 453,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 454)
            JsPromisesAsyncEx454(
              id: 454,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 455)
            JsPromisesAsyncEx455(
              id: 455,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 456)
            JsPromisesAsyncEx456(
              id: 456,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 457)
            JsPromisesAsyncEx457(
              id: 457,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 458)
            JsPromisesAsyncEx458(
              id: 458,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 459)
            JsPromisesAsyncEx459(
              id: 459,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 460)
            JsPromisesAsyncEx460(
              id: 460,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 461)
            JsPromisesAsyncEx461(
              id: 461,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 462)
            JsPromisesAsyncEx462(
              id: 462,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 463)
            JsPromisesAsyncEx463(
              id: 463,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 464)
            JsPromisesAsyncEx464(
              id: 464,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
