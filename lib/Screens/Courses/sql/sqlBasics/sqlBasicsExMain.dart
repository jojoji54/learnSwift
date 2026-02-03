import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2600.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2601.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2602.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2603.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2604.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2605.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2606.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2607.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2608.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2609.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2610.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2611.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2612.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2613.dart';
import 'package:learnswift/Screens/Courses/sql/sqlBasics/Ex/sqlBasicsEx2614.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlBasicsExMain> createState() => _SqlBasicsExMainState();
}

class _SqlBasicsExMainState extends State<SqlBasicsExMain> {
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
          if (widget.id == 2600)
            SqlBasicsEx2600(
              id: 2600,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2601)
            SqlBasicsEx2601(
              id: 2601,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2602)
            SqlBasicsEx2602(
              id: 2602,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2603)
            SqlBasicsEx2603(
              id: 2603,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2604)
            SqlBasicsEx2604(
              id: 2604,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2605)
            SqlBasicsEx2605(
              id: 2605,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2606)
            SqlBasicsEx2606(
              id: 2606,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2607)
            SqlBasicsEx2607(
              id: 2607,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2608)
            SqlBasicsEx2608(
              id: 2608,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2609)
            SqlBasicsEx2609(
              id: 2609,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2610)
            SqlBasicsEx2610(
              id: 2610,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2611)
            SqlBasicsEx2611(
              id: 2611,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2612)
            SqlBasicsEx2612(
              id: 2612,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2613)
            SqlBasicsEx2613(
              id: 2613,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2614)
            SqlBasicsEx2614(
              id: 2614,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
