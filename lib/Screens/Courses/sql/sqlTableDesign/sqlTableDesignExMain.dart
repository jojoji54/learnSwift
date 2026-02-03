import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2735.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2736.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2737.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2738.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2739.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2740.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2741.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2742.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2743.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2744.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2745.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2746.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2747.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2748.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTableDesign/Ex/sqlTableDesignEx2749.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlTableDesignExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlTableDesignExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlTableDesignExMain> createState() => _SqlTableDesignExMainState();
}

class _SqlTableDesignExMainState extends State<SqlTableDesignExMain> {
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
          if (widget.id == 2735)
            SqlTableDesignEx2735(
              id: 2735,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2736)
            SqlTableDesignEx2736(
              id: 2736,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2737)
            SqlTableDesignEx2737(
              id: 2737,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2738)
            SqlTableDesignEx2738(
              id: 2738,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2739)
            SqlTableDesignEx2739(
              id: 2739,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2740)
            SqlTableDesignEx2740(
              id: 2740,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2741)
            SqlTableDesignEx2741(
              id: 2741,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2742)
            SqlTableDesignEx2742(
              id: 2742,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2743)
            SqlTableDesignEx2743(
              id: 2743,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2744)
            SqlTableDesignEx2744(
              id: 2744,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2745)
            SqlTableDesignEx2745(
              id: 2745,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2746)
            SqlTableDesignEx2746(
              id: 2746,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2747)
            SqlTableDesignEx2747(
              id: 2747,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2748)
            SqlTableDesignEx2748(
              id: 2748,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2749)
            SqlTableDesignEx2749(
              id: 2749,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
