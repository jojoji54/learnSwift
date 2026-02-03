import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2780.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2781.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2782.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2783.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2784.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2785.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2786.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2787.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2788.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2789.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2790.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2791.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2792.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2793.dart';
import 'package:learnswift/Screens/Courses/sql/sqlViews/Ex/sqlViewsEx2794.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlViewsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlViewsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlViewsExMain> createState() => _SqlViewsExMainState();
}

class _SqlViewsExMainState extends State<SqlViewsExMain> {
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
          if (widget.id == 2780)
            SqlViewsEx2780(
              id: 2780,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2781)
            SqlViewsEx2781(
              id: 2781,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2782)
            SqlViewsEx2782(
              id: 2782,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2783)
            SqlViewsEx2783(
              id: 2783,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2784)
            SqlViewsEx2784(
              id: 2784,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2785)
            SqlViewsEx2785(
              id: 2785,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2786)
            SqlViewsEx2786(
              id: 2786,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2787)
            SqlViewsEx2787(
              id: 2787,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2788)
            SqlViewsEx2788(
              id: 2788,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2789)
            SqlViewsEx2789(
              id: 2789,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2790)
            SqlViewsEx2790(
              id: 2790,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2791)
            SqlViewsEx2791(
              id: 2791,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2792)
            SqlViewsEx2792(
              id: 2792,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2793)
            SqlViewsEx2793(
              id: 2793,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2794)
            SqlViewsEx2794(
              id: 2794,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
