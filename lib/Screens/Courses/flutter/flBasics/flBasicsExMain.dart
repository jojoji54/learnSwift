import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2825.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2826.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2827.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2828.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2829.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2830.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2831.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2832.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2833.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2834.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2835.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2836.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2837.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2838.dart';
import 'package:learnswift/Screens/Courses/flutter/flBasics/Ex/flBasicsEx2839.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlBasicsExMain> createState() => _FlBasicsExMainState();
}

class _FlBasicsExMainState extends State<FlBasicsExMain> {
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
          if (widget.id == 2825)
            FlBasicsEx2825(
              id: 2825,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2826)
            FlBasicsEx2826(
              id: 2826,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2827)
            FlBasicsEx2827(
              id: 2827,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2828)
            FlBasicsEx2828(
              id: 2828,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2829)
            FlBasicsEx2829(
              id: 2829,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2830)
            FlBasicsEx2830(
              id: 2830,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2831)
            FlBasicsEx2831(
              id: 2831,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2832)
            FlBasicsEx2832(
              id: 2832,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2833)
            FlBasicsEx2833(
              id: 2833,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2834)
            FlBasicsEx2834(
              id: 2834,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2835)
            FlBasicsEx2835(
              id: 2835,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2836)
            FlBasicsEx2836(
              id: 2836,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2837)
            FlBasicsEx2837(
              id: 2837,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2838)
            FlBasicsEx2838(
              id: 2838,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2839)
            FlBasicsEx2839(
              id: 2839,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
