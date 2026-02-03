import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2705.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2706.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2707.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2708.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2709.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2710.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2711.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2712.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2713.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2714.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2715.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2716.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2717.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2718.dart';
import 'package:learnswift/Screens/Courses/sql/sqlInsert/Ex/sqlInsertEx2719.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlInsertExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlInsertExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlInsertExMain> createState() => _SqlInsertExMainState();
}

class _SqlInsertExMainState extends State<SqlInsertExMain> {
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
          if (widget.id == 2705)
            SqlInsertEx2705(
              id: 2705,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2706)
            SqlInsertEx2706(
              id: 2706,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2707)
            SqlInsertEx2707(
              id: 2707,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2708)
            SqlInsertEx2708(
              id: 2708,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2709)
            SqlInsertEx2709(
              id: 2709,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2710)
            SqlInsertEx2710(
              id: 2710,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2711)
            SqlInsertEx2711(
              id: 2711,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2712)
            SqlInsertEx2712(
              id: 2712,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2713)
            SqlInsertEx2713(
              id: 2713,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2714)
            SqlInsertEx2714(
              id: 2714,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2715)
            SqlInsertEx2715(
              id: 2715,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2716)
            SqlInsertEx2716(
              id: 2716,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2717)
            SqlInsertEx2717(
              id: 2717,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2718)
            SqlInsertEx2718(
              id: 2718,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2719)
            SqlInsertEx2719(
              id: 2719,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
