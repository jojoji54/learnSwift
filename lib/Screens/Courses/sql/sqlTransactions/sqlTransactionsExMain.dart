import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2795.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2796.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2797.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2798.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2799.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2800.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2801.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2802.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2803.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2804.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2805.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2806.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2807.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2808.dart';
import 'package:learnswift/Screens/Courses/sql/sqlTransactions/Ex/sqlTransactionsEx2809.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class SqlTransactionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SqlTransactionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SqlTransactionsExMain> createState() => _SqlTransactionsExMainState();
}

class _SqlTransactionsExMainState extends State<SqlTransactionsExMain> {
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
          if (widget.id == 2795)
            SqlTransactionsEx2795(
              id: 2795,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2796)
            SqlTransactionsEx2796(
              id: 2796,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2797)
            SqlTransactionsEx2797(
              id: 2797,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2798)
            SqlTransactionsEx2798(
              id: 2798,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2799)
            SqlTransactionsEx2799(
              id: 2799,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2800)
            SqlTransactionsEx2800(
              id: 2800,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2801)
            SqlTransactionsEx2801(
              id: 2801,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2802)
            SqlTransactionsEx2802(
              id: 2802,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2803)
            SqlTransactionsEx2803(
              id: 2803,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2804)
            SqlTransactionsEx2804(
              id: 2804,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2805)
            SqlTransactionsEx2805(
              id: 2805,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2806)
            SqlTransactionsEx2806(
              id: 2806,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2807)
            SqlTransactionsEx2807(
              id: 2807,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2808)
            SqlTransactionsEx2808(
              id: 2808,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2809)
            SqlTransactionsEx2809(
              id: 2809,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
