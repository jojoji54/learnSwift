import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2930.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2931.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2932.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2933.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2934.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2935.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2936.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2937.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2938.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2939.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2940.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2941.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2942.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2943.dart';
import 'package:learnswift/Screens/Courses/flutter/flAsync/Ex/flAsyncEx2944.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlAsyncExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlAsyncExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlAsyncExMain> createState() => _FlAsyncExMainState();
}

class _FlAsyncExMainState extends State<FlAsyncExMain> {
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
          if (widget.id == 2930)
            FlAsyncEx2930(
              id: 2930,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2931)
            FlAsyncEx2931(
              id: 2931,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2932)
            FlAsyncEx2932(
              id: 2932,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2933)
            FlAsyncEx2933(
              id: 2933,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2934)
            FlAsyncEx2934(
              id: 2934,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2935)
            FlAsyncEx2935(
              id: 2935,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2936)
            FlAsyncEx2936(
              id: 2936,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2937)
            FlAsyncEx2937(
              id: 2937,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2938)
            FlAsyncEx2938(
              id: 2938,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2939)
            FlAsyncEx2939(
              id: 2939,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2940)
            FlAsyncEx2940(
              id: 2940,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2941)
            FlAsyncEx2941(
              id: 2941,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2942)
            FlAsyncEx2942(
              id: 2942,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2943)
            FlAsyncEx2943(
              id: 2943,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2944)
            FlAsyncEx2944(
              id: 2944,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
