import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2855.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2856.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2857.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2858.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2859.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2860.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2861.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2862.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2863.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2864.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2865.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2866.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2867.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2868.dart';
import 'package:learnswift/Screens/Courses/flutter/flLayout/Ex/flLayoutEx2869.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlLayoutExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlLayoutExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlLayoutExMain> createState() => _FlLayoutExMainState();
}

class _FlLayoutExMainState extends State<FlLayoutExMain> {
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
          if (widget.id == 2855)
            FlLayoutEx2855(
              id: 2855,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2856)
            FlLayoutEx2856(
              id: 2856,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2857)
            FlLayoutEx2857(
              id: 2857,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2858)
            FlLayoutEx2858(
              id: 2858,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2859)
            FlLayoutEx2859(
              id: 2859,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2860)
            FlLayoutEx2860(
              id: 2860,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2861)
            FlLayoutEx2861(
              id: 2861,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2862)
            FlLayoutEx2862(
              id: 2862,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2863)
            FlLayoutEx2863(
              id: 2863,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2864)
            FlLayoutEx2864(
              id: 2864,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2865)
            FlLayoutEx2865(
              id: 2865,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2866)
            FlLayoutEx2866(
              id: 2866,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2867)
            FlLayoutEx2867(
              id: 2867,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2868)
            FlLayoutEx2868(
              id: 2868,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2869)
            FlLayoutEx2869(
              id: 2869,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
