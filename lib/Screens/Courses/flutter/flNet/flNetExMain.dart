import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3005.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3006.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3007.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3008.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3009.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3010.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3011.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3012.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3013.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3014.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3015.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3016.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3017.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3018.dart';
import 'package:learnswift/Screens/Courses/flutter/flNet/Ex/flNetEx3019.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlNetExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlNetExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlNetExMain> createState() => _FlNetExMainState();
}

class _FlNetExMainState extends State<FlNetExMain> {
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
          if (widget.id == 3005)
            FlNetEx3005(
              id: 3005,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3006)
            FlNetEx3006(
              id: 3006,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3007)
            FlNetEx3007(
              id: 3007,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3008)
            FlNetEx3008(
              id: 3008,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3009)
            FlNetEx3009(
              id: 3009,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3010)
            FlNetEx3010(
              id: 3010,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3011)
            FlNetEx3011(
              id: 3011,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3012)
            FlNetEx3012(
              id: 3012,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3013)
            FlNetEx3013(
              id: 3013,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3014)
            FlNetEx3014(
              id: 3014,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3015)
            FlNetEx3015(
              id: 3015,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3016)
            FlNetEx3016(
              id: 3016,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3017)
            FlNetEx3017(
              id: 3017,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3018)
            FlNetEx3018(
              id: 3018,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3019)
            FlNetEx3019(
              id: 3019,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
