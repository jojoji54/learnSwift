import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2960.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2961.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2962.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2963.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2964.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2965.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2966.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2967.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2968.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2969.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2970.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2971.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2972.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2973.dart';
import 'package:learnswift/Screens/Courses/flutter/flAnim/Ex/flAnimEx2974.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlAnimExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlAnimExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlAnimExMain> createState() => _FlAnimExMainState();
}

class _FlAnimExMainState extends State<FlAnimExMain> {
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
          if (widget.id == 2960)
            FlAnimEx2960(
              id: 2960,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2961)
            FlAnimEx2961(
              id: 2961,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2962)
            FlAnimEx2962(
              id: 2962,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2963)
            FlAnimEx2963(
              id: 2963,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2964)
            FlAnimEx2964(
              id: 2964,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2965)
            FlAnimEx2965(
              id: 2965,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2966)
            FlAnimEx2966(
              id: 2966,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2967)
            FlAnimEx2967(
              id: 2967,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2968)
            FlAnimEx2968(
              id: 2968,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2969)
            FlAnimEx2969(
              id: 2969,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2970)
            FlAnimEx2970(
              id: 2970,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2971)
            FlAnimEx2971(
              id: 2971,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2972)
            FlAnimEx2972(
              id: 2972,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2973)
            FlAnimEx2973(
              id: 2973,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2974)
            FlAnimEx2974(
              id: 2974,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
