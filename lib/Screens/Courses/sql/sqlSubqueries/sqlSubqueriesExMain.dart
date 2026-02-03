import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2675.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2676.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2677.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2678.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2679.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2680.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2681.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2682.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2683.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2684.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2685.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2686.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2687.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2688.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSubqueries/Ex/sqlSubqueriesEx2689.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlSubqueriesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlSubqueriesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlSubqueriesExMain> createState() => _SqlSubqueriesExMainState();
}

class _SqlSubqueriesExMainState extends State<SqlSubqueriesExMain> {
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
          if (widget.id == 2675)
            SqlSubqueriesEx2675(
              id: 2675,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2676)
            SqlSubqueriesEx2676(
              id: 2676,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2677)
            SqlSubqueriesEx2677(
              id: 2677,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2678)
            SqlSubqueriesEx2678(
              id: 2678,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2679)
            SqlSubqueriesEx2679(
              id: 2679,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2680)
            SqlSubqueriesEx2680(
              id: 2680,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2681)
            SqlSubqueriesEx2681(
              id: 2681,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2682)
            SqlSubqueriesEx2682(
              id: 2682,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2683)
            SqlSubqueriesEx2683(
              id: 2683,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2684)
            SqlSubqueriesEx2684(
              id: 2684,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2685)
            SqlSubqueriesEx2685(
              id: 2685,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2686)
            SqlSubqueriesEx2686(
              id: 2686,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2687)
            SqlSubqueriesEx2687(
              id: 2687,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2688)
            SqlSubqueriesEx2688(
              id: 2688,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2689)
            SqlSubqueriesEx2689(
              id: 2689,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
