import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2810.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2811.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2812.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2813.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2814.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2815.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2816.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2817.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2818.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2819.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2820.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2821.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2822.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2823.dart';
import 'package:learnswift/Screens/Courses/sql/sqlWindow/Ex/sqlWindowEx2824.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlWindowExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlWindowExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlWindowExMain> createState() => _SqlWindowExMainState();
}

class _SqlWindowExMainState extends State<SqlWindowExMain> {
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
          if (widget.id == 2810)
            SqlWindowEx2810(
              id: 2810,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2811)
            SqlWindowEx2811(
              id: 2811,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2812)
            SqlWindowEx2812(
              id: 2812,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2813)
            SqlWindowEx2813(
              id: 2813,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2814)
            SqlWindowEx2814(
              id: 2814,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2815)
            SqlWindowEx2815(
              id: 2815,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2816)
            SqlWindowEx2816(
              id: 2816,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2817)
            SqlWindowEx2817(
              id: 2817,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2818)
            SqlWindowEx2818(
              id: 2818,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2819)
            SqlWindowEx2819(
              id: 2819,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2820)
            SqlWindowEx2820(
              id: 2820,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2821)
            SqlWindowEx2821(
              id: 2821,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2822)
            SqlWindowEx2822(
              id: 2822,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2823)
            SqlWindowEx2823(
              id: 2823,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2824)
            SqlWindowEx2824(
              id: 2824,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
