import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2900.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2901.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2902.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2903.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2904.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2905.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2906.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2907.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2908.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2909.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2910.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2911.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2912.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2913.dart';
import 'package:learnswift/Screens/Courses/flutter/flNav/Ex/flNavEx2914.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlNavExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlNavExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlNavExMain> createState() => _FlNavExMainState();
}

class _FlNavExMainState extends State<FlNavExMain> {
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
          if (widget.id == 2900)
            FlNavEx2900(
              id: 2900,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2901)
            FlNavEx2901(
              id: 2901,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2902)
            FlNavEx2902(
              id: 2902,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2903)
            FlNavEx2903(
              id: 2903,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2904)
            FlNavEx2904(
              id: 2904,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2905)
            FlNavEx2905(
              id: 2905,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2906)
            FlNavEx2906(
              id: 2906,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2907)
            FlNavEx2907(
              id: 2907,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2908)
            FlNavEx2908(
              id: 2908,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2909)
            FlNavEx2909(
              id: 2909,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2910)
            FlNavEx2910(
              id: 2910,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2911)
            FlNavEx2911(
              id: 2911,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2912)
            FlNavEx2912(
              id: 2912,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2913)
            FlNavEx2913(
              id: 2913,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2914)
            FlNavEx2914(
              id: 2914,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
