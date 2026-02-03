import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2945.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2946.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2947.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2948.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2949.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2950.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2951.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2952.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2953.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2954.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2955.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2956.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2957.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2958.dart';
import 'package:learnswift/Screens/Courses/flutter/flRoute/Ex/flRouteEx2959.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlRouteExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlRouteExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlRouteExMain> createState() => _FlRouteExMainState();
}

class _FlRouteExMainState extends State<FlRouteExMain> {
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
          if (widget.id == 2945)
            FlRouteEx2945(
              id: 2945,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2946)
            FlRouteEx2946(
              id: 2946,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2947)
            FlRouteEx2947(
              id: 2947,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2948)
            FlRouteEx2948(
              id: 2948,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2949)
            FlRouteEx2949(
              id: 2949,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2950)
            FlRouteEx2950(
              id: 2950,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2951)
            FlRouteEx2951(
              id: 2951,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2952)
            FlRouteEx2952(
              id: 2952,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2953)
            FlRouteEx2953(
              id: 2953,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2954)
            FlRouteEx2954(
              id: 2954,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2955)
            FlRouteEx2955(
              id: 2955,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2956)
            FlRouteEx2956(
              id: 2956,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2957)
            FlRouteEx2957(
              id: 2957,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2958)
            FlRouteEx2958(
              id: 2958,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2959)
            FlRouteEx2959(
              id: 2959,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
