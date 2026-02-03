import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpClassesEx1466.dart';
import 'Ex/phpClassesEx1467.dart';
import 'Ex/phpClassesEx1468.dart';
import 'Ex/phpClassesEx1469.dart';
import 'Ex/phpClassesEx1470.dart';
import 'Ex/phpClassesEx1471.dart';
import 'Ex/phpClassesEx1472.dart';
import 'Ex/phpClassesEx1473.dart';
import 'Ex/phpClassesEx1474.dart';
import 'Ex/phpClassesEx1475.dart';
import 'Ex/phpClassesEx1476.dart';
import 'Ex/phpClassesEx1477.dart';
import 'Ex/phpClassesEx1478.dart';
import 'Ex/phpClassesEx1479.dart';
import 'Ex/phpClassesEx1480.dart';

class PhpClassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpClassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpClassesExMain> createState() => _PhpClassesExMainState();
}

class _PhpClassesExMainState extends State<PhpClassesExMain> {
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
          if (widget.id == 1466)
            PhpClassesEx1466(
              id: 1466,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1467)
            PhpClassesEx1467(
              id: 1467,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1468)
            PhpClassesEx1468(
              id: 1468,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1469)
            PhpClassesEx1469(
              id: 1469,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1470)
            PhpClassesEx1470(
              id: 1470,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1471)
            PhpClassesEx1471(
              id: 1471,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1472)
            PhpClassesEx1472(
              id: 1472,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1473)
            PhpClassesEx1473(
              id: 1473,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1474)
            PhpClassesEx1474(
              id: 1474,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1475)
            PhpClassesEx1475(
              id: 1475,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1476)
            PhpClassesEx1476(
              id: 1476,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1477)
            PhpClassesEx1477(
              id: 1477,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1478)
            PhpClassesEx1478(
              id: 1478,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1479)
            PhpClassesEx1479(
              id: 1479,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1480)
            PhpClassesEx1480(
              id: 1480,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}