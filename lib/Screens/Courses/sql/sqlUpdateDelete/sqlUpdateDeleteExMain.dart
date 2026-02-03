import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2720.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2721.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2722.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2723.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2724.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2725.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2726.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2727.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2728.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2729.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2730.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2731.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2732.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2733.dart';
import 'package:learnswift/Screens/Courses/sql/sqlUpdateDelete/Ex/sqlUpdateDeleteEx2734.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlUpdateDeleteExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlUpdateDeleteExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlUpdateDeleteExMain> createState() => _SqlUpdateDeleteExMainState();
}

class _SqlUpdateDeleteExMainState extends State<SqlUpdateDeleteExMain> {
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
          if (widget.id == 2720)
            SqlUpdateDeleteEx2720(
              id: 2720,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2721)
            SqlUpdateDeleteEx2721(
              id: 2721,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2722)
            SqlUpdateDeleteEx2722(
              id: 2722,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2723)
            SqlUpdateDeleteEx2723(
              id: 2723,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2724)
            SqlUpdateDeleteEx2724(
              id: 2724,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2725)
            SqlUpdateDeleteEx2725(
              id: 2725,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2726)
            SqlUpdateDeleteEx2726(
              id: 2726,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2727)
            SqlUpdateDeleteEx2727(
              id: 2727,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2728)
            SqlUpdateDeleteEx2728(
              id: 2728,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2729)
            SqlUpdateDeleteEx2729(
              id: 2729,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2730)
            SqlUpdateDeleteEx2730(
              id: 2730,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2731)
            SqlUpdateDeleteEx2731(
              id: 2731,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2732)
            SqlUpdateDeleteEx2732(
              id: 2732,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2733)
            SqlUpdateDeleteEx2733(
              id: 2733,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2734)
            SqlUpdateDeleteEx2734(
              id: 2734,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
