import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2840.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2841.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2842.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2843.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2844.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2845.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2846.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2847.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2848.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2849.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2850.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2851.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2852.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2853.dart';
import 'package:learnswift/Screens/Courses/flutter/flState/Ex/flStateEx2854.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlStateExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlStateExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlStateExMain> createState() => _FlStateExMainState();
}

class _FlStateExMainState extends State<FlStateExMain> {
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
          if (widget.id == 2840)
            FlStateEx2840(
              id: 2840,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2841)
            FlStateEx2841(
              id: 2841,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2842)
            FlStateEx2842(
              id: 2842,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2843)
            FlStateEx2843(
              id: 2843,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2844)
            FlStateEx2844(
              id: 2844,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2845)
            FlStateEx2845(
              id: 2845,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2846)
            FlStateEx2846(
              id: 2846,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2847)
            FlStateEx2847(
              id: 2847,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2848)
            FlStateEx2848(
              id: 2848,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2849)
            FlStateEx2849(
              id: 2849,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2850)
            FlStateEx2850(
              id: 2850,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2851)
            FlStateEx2851(
              id: 2851,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2852)
            FlStateEx2852(
              id: 2852,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2853)
            FlStateEx2853(
              id: 2853,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2854)
            FlStateEx2854(
              id: 2854,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
