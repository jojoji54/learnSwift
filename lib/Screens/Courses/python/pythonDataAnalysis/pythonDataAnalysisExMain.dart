import 'package:flutter/material.dart';

// Exercises (282 - 296)
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx282.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx283.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx284.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx285.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx286.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx287.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx288.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx289.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx290.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx291.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx292.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx293.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx294.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx295.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataAnalysis/Ex/pythonDataAnalysisEx296.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class DataAnalysisExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DataAnalysisExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DataAnalysisExMain> createState() => _DataAnalysisExMainState();
}

class _DataAnalysisExMainState extends State<DataAnalysisExMain> {
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
          if (widget.id == 282)
            PythonDataAnalysisEx282(
              id: 282,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 283)
            PythonDataAnalysisEx283(
              id: 283,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 284)
            PythonDataAnalysisEx284(
              id: 284,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 285)
            PythonDataAnalysisEx285(
              id: 285,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 286)
            PythonDataAnalysisEx286(
              id: 286,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 287)
            PythonDataAnalysisEx287(
              id: 287,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 288)
            PythonDataAnalysisEx288(
              id: 288,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 289)
            PythonDataAnalysisEx289(
              id: 289,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 290)
            PythonDataAnalysisEx290(
              id: 290,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 291)
            PythonDataAnalysisEx291(
              id: 291,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 292)
            PythonDataAnalysisEx292(
              id: 292,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 293)
            PythonDataAnalysisEx293(
              id: 293,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 294)
            PythonDataAnalysisEx294(
              id: 294,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 295)
            PythonDataAnalysisEx295(
              id: 295,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 296)
            PythonDataAnalysisEx296(
              id: 296,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
