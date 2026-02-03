import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2870.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2871.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2872.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2873.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2874.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2875.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2876.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2877.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2878.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2879.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2880.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2881.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2882.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2883.dart';
import 'package:learnswift/Screens/Courses/flutter/flStyle/Ex/flStyleEx2884.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlStyleExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlStyleExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlStyleExMain> createState() => _FlStyleExMainState();
}

class _FlStyleExMainState extends State<FlStyleExMain> {
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
          if (widget.id == 2870)
            FlStyleEx2870(
              id: 2870,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2871)
            FlStyleEx2871(
              id: 2871,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2872)
            FlStyleEx2872(
              id: 2872,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2873)
            FlStyleEx2873(
              id: 2873,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2874)
            FlStyleEx2874(
              id: 2874,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2875)
            FlStyleEx2875(
              id: 2875,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2876)
            FlStyleEx2876(
              id: 2876,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2877)
            FlStyleEx2877(
              id: 2877,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2878)
            FlStyleEx2878(
              id: 2878,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2879)
            FlStyleEx2879(
              id: 2879,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2880)
            FlStyleEx2880(
              id: 2880,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2881)
            FlStyleEx2881(
              id: 2881,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2882)
            FlStyleEx2882(
              id: 2882,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2883)
            FlStyleEx2883(
              id: 2883,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2884)
            FlStyleEx2884(
              id: 2884,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
