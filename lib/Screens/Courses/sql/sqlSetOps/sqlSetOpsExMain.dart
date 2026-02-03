import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2690.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2691.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2692.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2693.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2694.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2695.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2696.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2697.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2698.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2699.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2700.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2701.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2702.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2703.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSetOps/Ex/sqlSetOpsEx2704.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlSetOpsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlSetOpsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlSetOpsExMain> createState() => _SqlSetOpsExMainState();
}

class _SqlSetOpsExMainState extends State<SqlSetOpsExMain> {
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
          if (widget.id == 2690)
            SqlSetOpsEx2690(
              id: 2690,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2691)
            SqlSetOpsEx2691(
              id: 2691,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2692)
            SqlSetOpsEx2692(
              id: 2692,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2693)
            SqlSetOpsEx2693(
              id: 2693,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2694)
            SqlSetOpsEx2694(
              id: 2694,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2695)
            SqlSetOpsEx2695(
              id: 2695,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2696)
            SqlSetOpsEx2696(
              id: 2696,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2697)
            SqlSetOpsEx2697(
              id: 2697,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2698)
            SqlSetOpsEx2698(
              id: 2698,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2699)
            SqlSetOpsEx2699(
              id: 2699,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2700)
            SqlSetOpsEx2700(
              id: 2700,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2701)
            SqlSetOpsEx2701(
              id: 2701,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2702)
            SqlSetOpsEx2702(
              id: 2702,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2703)
            SqlSetOpsEx2703(
              id: 2703,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2704)
            SqlSetOpsEx2704(
              id: 2704,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
