import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx192.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx193.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx194.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx195.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx196.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx197.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx198.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx199.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx200.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx201.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx202.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx203.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx204.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx205.dart';
import 'package:learnswift/Screens/Courses/python/pythonDataStructures/Ex/pythonDataStructuresEx206.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class DataStructuresExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DataStructuresExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DataStructuresExMain> createState() => _DataStructuresExMainState();
}

class _DataStructuresExMainState extends State<DataStructuresExMain> {
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
          if (widget.id == 192)
            PythonDataStructuresEx192(id: 192, title: widget.title, completed: widget.completed),
          if (widget.id == 193)
            PythonDataStructuresEx193(id: 193, title: widget.title, completed: widget.completed),
          if (widget.id == 194)
            PythonDataStructuresEx194(id: 194, title: widget.title, completed: widget.completed),
          if (widget.id == 195)
            PythonDataStructuresEx195(id: 195, title: widget.title, completed: widget.completed),
          if (widget.id == 196)
            PythonDataStructuresEx196(id: 196, title: widget.title, completed: widget.completed),
          if (widget.id == 197)
            PythonDataStructuresEx197(id: 197, title: widget.title, completed: widget.completed),
          if (widget.id == 198)
            PythonDataStructuresEx198(id: 198, title: widget.title, completed: widget.completed),
          if (widget.id == 199)
            PythonDataStructuresEx199(id: 199, title: widget.title, completed: widget.completed),

          // 💰 de pago (últimos 7)
          if (widget.id == 200)
            PythonDataStructuresEx200(id: 200, title: widget.title, completed: widget.completed),
          if (widget.id == 201)
            PythonDataStructuresEx201(id: 201, title: widget.title, completed: widget.completed),
          if (widget.id == 202)
            PythonDataStructuresEx202(id: 202, title: widget.title, completed: widget.completed),
          if (widget.id == 203)
            PythonDataStructuresEx203(id: 203, title: widget.title, completed: widget.completed),
          if (widget.id == 204)
            PythonDataStructuresEx204(id: 204, title: widget.title, completed: widget.completed),
          if (widget.id == 205)
            PythonDataStructuresEx205(id: 205, title: widget.title, completed: widget.completed),
          if (widget.id == 206)
            PythonDataStructuresEx206(id: 206, title: widget.title, completed: widget.completed),
        ],
      ),
    );
  }
}
