import 'package:flutter/material.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

// Control Flow exercises (162 - 176)
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx162.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx163.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx164.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx165.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx166.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx167.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx168.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx169.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx170.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx171.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx172.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx173.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx174.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx175.dart';
import 'package:learnswift/Screens/Courses/python/pythonControlFlow/Ex/pythonControlFlowEx176.dart';

class ControlFlowExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  ControlFlowExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<ControlFlowExMain> createState() => _ControlFlowExMainState();
}

class _ControlFlowExMainState extends State<ControlFlowExMain> {
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
          if (widget.id == 162)
            PythonControlFlowEx162(
              id: 162,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 163)
            PythonControlFlowEx163(
              id: 163,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 164)
            PythonControlFlowEx164(
              id: 164,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 165)
            PythonControlFlowEx165(
              id: 165,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 166)
            PythonControlFlowEx166(
              id: 166,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 167)
            PythonControlFlowEx167(
              id: 167,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 168)
            PythonControlFlowEx168(
              id: 168,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 169)
            PythonControlFlowEx169(
              id: 169,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 170)
            PythonControlFlowEx170(
              id: 170,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 171)
            PythonControlFlowEx171(
              id: 171,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 172)
            PythonControlFlowEx172(
              id: 172,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 173)
            PythonControlFlowEx173(
              id: 173,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 174)
            PythonControlFlowEx174(
              id: 174,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 175)
            PythonControlFlowEx175(
              id: 175,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 176)
            PythonControlFlowEx176(
              id: 176,
              title: widget.title,
              completed: widget.completed,
            ),

          // Fallback por si llega un id inesperado
          if (widget.id < 162 || widget.id > 176)
            const Center(
              child: Text(
                'Exercise not found',
                style: TextStyle(
                  fontFamily: 'InconsolataRegular',
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
