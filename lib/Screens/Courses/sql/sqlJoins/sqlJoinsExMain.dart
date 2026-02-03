import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2660.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2661.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2662.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2663.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2664.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2665.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2666.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2667.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2668.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2669.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2670.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2671.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2672.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2673.dart';
import 'package:learnswift/Screens/Courses/sql/sqlJoins/Ex/sqlJoinsEx2674.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlJoinsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlJoinsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlJoinsExMain> createState() => _SqlJoinsExMainState();
}

class _SqlJoinsExMainState extends State<SqlJoinsExMain> {
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
          if (widget.id == 2660)
            SqlJoinsEx2660(
              id: 2660,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2661)
            SqlJoinsEx2661(
              id: 2661,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2662)
            SqlJoinsEx2662(
              id: 2662,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2663)
            SqlJoinsEx2663(
              id: 2663,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2664)
            SqlJoinsEx2664(
              id: 2664,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2665)
            SqlJoinsEx2665(
              id: 2665,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2666)
            SqlJoinsEx2666(
              id: 2666,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2667)
            SqlJoinsEx2667(
              id: 2667,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2668)
            SqlJoinsEx2668(
              id: 2668,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2669)
            SqlJoinsEx2669(
              id: 2669,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2670)
            SqlJoinsEx2670(
              id: 2670,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2671)
            SqlJoinsEx2671(
              id: 2671,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2672)
            SqlJoinsEx2672(
              id: 2672,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2673)
            SqlJoinsEx2673(
              id: 2673,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2674)
            SqlJoinsEx2674(
              id: 2674,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
