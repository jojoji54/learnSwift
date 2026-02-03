import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2765.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2766.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2767.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2768.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2769.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2770.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2771.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2772.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2773.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2774.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2775.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2776.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2777.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2778.dart';
import 'package:learnswift/Screens/Courses/sql/sqlIndexes/Ex/sqlIndexesEx2779.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlIndexesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlIndexesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlIndexesExMain> createState() => _SqlIndexesExMainState();
}

class _SqlIndexesExMainState extends State<SqlIndexesExMain> {
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
          if (widget.id == 2765)
            SqlIndexesEx2765(
              id: 2765,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2766)
            SqlIndexesEx2766(
              id: 2766,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2767)
            SqlIndexesEx2767(
              id: 2767,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2768)
            SqlIndexesEx2768(
              id: 2768,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2769)
            SqlIndexesEx2769(
              id: 2769,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2770)
            SqlIndexesEx2770(
              id: 2770,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2771)
            SqlIndexesEx2771(
              id: 2771,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2772)
            SqlIndexesEx2772(
              id: 2772,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2773)
            SqlIndexesEx2773(
              id: 2773,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2774)
            SqlIndexesEx2774(
              id: 2774,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2775)
            SqlIndexesEx2775(
              id: 2775,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2776)
            SqlIndexesEx2776(
              id: 2776,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2777)
            SqlIndexesEx2777(
              id: 2777,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2778)
            SqlIndexesEx2778(
              id: 2778,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2779)
            SqlIndexesEx2779(
              id: 2779,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
