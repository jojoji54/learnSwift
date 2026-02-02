import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets405.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets406.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets407.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets408.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets409.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets410.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets411.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets412.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets413.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets414.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets415.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets416.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets417.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets418.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsMapsAndSets/Ex/jsMapsAndSets419.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsMapsAndSetsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsMapsAndSetsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsMapsAndSetsExMain> createState() => _JsMapsAndSetsExMainState();
}

class _JsMapsAndSetsExMainState extends State<JsMapsAndSetsExMain> {
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
          if (widget.id == 405)
            JsMapsAndSetsEx405(
              id: 405,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 406)
            JsMapsAndSetsEx406(
              id: 406,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 407)
            JsMapsAndSetsEx407(
              id: 407,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 408)
            JsMapsAndSetsEx408(
              id: 408,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 409)
            JsMapsAndSetsEx409(
              id: 409,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 410)
            JsMapsAndSetsEx410(
              id: 410,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 411)
            JsMapsAndSetsEx411(
              id: 411,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 412)
            JsMapsAndSetsEx412(
              id: 412,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 413)
            JsMapsAndSetsEx413(
              id: 413,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 414)
            JsMapsAndSetsEx414(
              id: 414,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 415)
            JsMapsAndSetsEx415(
              id: 415,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 416)
            JsMapsAndSetsEx416(
              id: 416,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 417)
            JsMapsAndSetsEx417(
              id: 417,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 418)
            JsMapsAndSetsEx418(
              id: 418,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 419)
            JsMapsAndSetsEx419(
              id: 419,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
