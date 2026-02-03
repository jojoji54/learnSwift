import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2915.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2916.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2917.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2918.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2919.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2920.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2921.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2922.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2923.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2924.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2925.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2926.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2927.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2928.dart';
import 'package:learnswift/Screens/Courses/flutter/flForms/Ex/flFormsEx2929.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlFormsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlFormsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlFormsExMain> createState() => _FlFormsExMainState();
}

class _FlFormsExMainState extends State<FlFormsExMain> {
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
          if (widget.id == 2915)
            FlFormsEx2915(
              id: 2915,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2916)
            FlFormsEx2916(
              id: 2916,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2917)
            FlFormsEx2917(
              id: 2917,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2918)
            FlFormsEx2918(
              id: 2918,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2919)
            FlFormsEx2919(
              id: 2919,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2920)
            FlFormsEx2920(
              id: 2920,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2921)
            FlFormsEx2921(
              id: 2921,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2922)
            FlFormsEx2922(
              id: 2922,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2923)
            FlFormsEx2923(
              id: 2923,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2924)
            FlFormsEx2924(
              id: 2924,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2925)
            FlFormsEx2925(
              id: 2925,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2926)
            FlFormsEx2926(
              id: 2926,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2927)
            FlFormsEx2927(
              id: 2927,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2928)
            FlFormsEx2928(
              id: 2928,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2929)
            FlFormsEx2929(
              id: 2929,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
