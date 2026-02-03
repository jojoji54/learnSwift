import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3035.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3036.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3037.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3038.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3039.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3040.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3041.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3042.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3043.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3044.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3045.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3046.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3047.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3048.dart';
import 'package:learnswift/Screens/Courses/flutter/flTesting/Ex/flTestingEx3049.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlTestingExMain> createState() => _FlTestingExMainState();
}

class _FlTestingExMainState extends State<FlTestingExMain> {
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
          if (widget.id == 3035)
            FlTestingEx3035(
              id: 3035,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3036)
            FlTestingEx3036(
              id: 3036,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3037)
            FlTestingEx3037(
              id: 3037,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3038)
            FlTestingEx3038(
              id: 3038,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3039)
            FlTestingEx3039(
              id: 3039,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3040)
            FlTestingEx3040(
              id: 3040,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3041)
            FlTestingEx3041(
              id: 3041,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3042)
            FlTestingEx3042(
              id: 3042,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3043)
            FlTestingEx3043(
              id: 3043,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3044)
            FlTestingEx3044(
              id: 3044,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3045)
            FlTestingEx3045(
              id: 3045,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3046)
            FlTestingEx3046(
              id: 3046,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3047)
            FlTestingEx3047(
              id: 3047,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3048)
            FlTestingEx3048(
              id: 3048,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3049)
            FlTestingEx3049(
              id: 3049,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
