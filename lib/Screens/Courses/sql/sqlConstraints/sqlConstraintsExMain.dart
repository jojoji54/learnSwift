import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2750.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2751.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2752.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2753.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2754.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2755.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2756.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2757.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2758.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2759.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2760.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2761.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2762.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2763.dart';
import 'package:learnswift/Screens/Courses/sql/sqlConstraints/Ex/sqlConstraintsEx2764.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlConstraintsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlConstraintsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlConstraintsExMain> createState() => _SqlConstraintsExMainState();
}

class _SqlConstraintsExMainState extends State<SqlConstraintsExMain> {
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
          if (widget.id == 2750)
            SqlConstraintsEx2750(
              id: 2750,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2751)
            SqlConstraintsEx2751(
              id: 2751,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2752)
            SqlConstraintsEx2752(
              id: 2752,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2753)
            SqlConstraintsEx2753(
              id: 2753,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2754)
            SqlConstraintsEx2754(
              id: 2754,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2755)
            SqlConstraintsEx2755(
              id: 2755,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2756)
            SqlConstraintsEx2756(
              id: 2756,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2757)
            SqlConstraintsEx2757(
              id: 2757,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2758)
            SqlConstraintsEx2758(
              id: 2758,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2759)
            SqlConstraintsEx2759(
              id: 2759,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2760)
            SqlConstraintsEx2760(
              id: 2760,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2761)
            SqlConstraintsEx2761(
              id: 2761,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2762)
            SqlConstraintsEx2762(
              id: 2762,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2763)
            SqlConstraintsEx2763(
              id: 2763,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2764)
            SqlConstraintsEx2764(
              id: 2764,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
