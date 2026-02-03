import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2615.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2616.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2617.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2618.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2619.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2620.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2621.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2622.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2623.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2624.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2625.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2626.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2627.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2628.dart';
import 'package:learnswift/Screens/Courses/sql/sqlFiltering/Ex/sqlFilteringEx2629.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlFilteringExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlFilteringExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlFilteringExMain> createState() => _SqlFilteringExMainState();
}

class _SqlFilteringExMainState extends State<SqlFilteringExMain> {
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
          if (widget.id == 2615)
            SqlFilteringEx2615(
              id: 2615,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2616)
            SqlFilteringEx2616(
              id: 2616,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2617)
            SqlFilteringEx2617(
              id: 2617,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2618)
            SqlFilteringEx2618(
              id: 2618,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2619)
            SqlFilteringEx2619(
              id: 2619,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2620)
            SqlFilteringEx2620(
              id: 2620,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2621)
            SqlFilteringEx2621(
              id: 2621,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2622)
            SqlFilteringEx2622(
              id: 2622,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2623)
            SqlFilteringEx2623(
              id: 2623,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2624)
            SqlFilteringEx2624(
              id: 2624,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2625)
            SqlFilteringEx2625(
              id: 2625,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2626)
            SqlFilteringEx2626(
              id: 2626,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2627)
            SqlFilteringEx2627(
              id: 2627,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2628)
            SqlFilteringEx2628(
              id: 2628,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2629)
            SqlFilteringEx2629(
              id: 2629,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
