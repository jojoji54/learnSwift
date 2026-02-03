import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2630.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2631.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2632.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2633.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2634.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2635.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2636.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2637.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2638.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2639.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2640.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2641.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2642.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2643.dart';
import 'package:learnswift/Screens/Courses/sql/sqlSorting/Ex/sqlSortingEx2644.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlSortingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlSortingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlSortingExMain> createState() => _SqlSortingExMainState();
}

class _SqlSortingExMainState extends State<SqlSortingExMain> {
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
          if (widget.id == 2630)
            SqlSortingEx2630(
              id: 2630,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2631)
            SqlSortingEx2631(
              id: 2631,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2632)
            SqlSortingEx2632(
              id: 2632,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2633)
            SqlSortingEx2633(
              id: 2633,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2634)
            SqlSortingEx2634(
              id: 2634,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2635)
            SqlSortingEx2635(
              id: 2635,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2636)
            SqlSortingEx2636(
              id: 2636,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2637)
            SqlSortingEx2637(
              id: 2637,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2638)
            SqlSortingEx2638(
              id: 2638,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2639)
            SqlSortingEx2639(
              id: 2639,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2640)
            SqlSortingEx2640(
              id: 2640,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2641)
            SqlSortingEx2641(
              id: 2641,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2642)
            SqlSortingEx2642(
              id: 2642,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2643)
            SqlSortingEx2643(
              id: 2643,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2644)
            SqlSortingEx2644(
              id: 2644,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
