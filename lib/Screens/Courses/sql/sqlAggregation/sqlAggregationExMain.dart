import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2645.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2646.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2647.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2648.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2649.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2650.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2651.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2652.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2653.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2654.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2655.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2656.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2657.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2658.dart';
import 'package:learnswift/Screens/Courses/sql/sqlAggregation/Ex/sqlAggregationEx2659.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlAggregationExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlAggregationExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlAggregationExMain> createState() => _SqlAggregationExMainState();
}

class _SqlAggregationExMainState extends State<SqlAggregationExMain> {
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
          if (widget.id == 2645)
            SqlAggregationEx2645(
              id: 2645,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2646)
            SqlAggregationEx2646(
              id: 2646,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2647)
            SqlAggregationEx2647(
              id: 2647,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2648)
            SqlAggregationEx2648(
              id: 2648,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2649)
            SqlAggregationEx2649(
              id: 2649,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2650)
            SqlAggregationEx2650(
              id: 2650,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2651)
            SqlAggregationEx2651(
              id: 2651,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2652)
            SqlAggregationEx2652(
              id: 2652,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2653)
            SqlAggregationEx2653(
              id: 2653,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2654)
            SqlAggregationEx2654(
              id: 2654,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2655)
            SqlAggregationEx2655(
              id: 2655,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2656)
            SqlAggregationEx2656(
              id: 2656,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2657)
            SqlAggregationEx2657(
              id: 2657,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2658)
            SqlAggregationEx2658(
              id: 2658,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2659)
            SqlAggregationEx2659(
              id: 2659,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
