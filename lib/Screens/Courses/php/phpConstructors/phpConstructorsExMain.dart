import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpConstructorsEx1481.dart';
import 'Ex/phpConstructorsEx1482.dart';
import 'Ex/phpConstructorsEx1483.dart';
import 'Ex/phpConstructorsEx1484.dart';
import 'Ex/phpConstructorsEx1485.dart';
import 'Ex/phpConstructorsEx1486.dart';
import 'Ex/phpConstructorsEx1487.dart';
import 'Ex/phpConstructorsEx1488.dart';
import 'Ex/phpConstructorsEx1489.dart';
import 'Ex/phpConstructorsEx1490.dart';
import 'Ex/phpConstructorsEx1491.dart';
import 'Ex/phpConstructorsEx1492.dart';
import 'Ex/phpConstructorsEx1493.dart';
import 'Ex/phpConstructorsEx1494.dart';
import 'Ex/phpConstructorsEx1495.dart';

class PhpConstructorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpConstructorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpConstructorsExMain> createState() => _PhpConstructorsExMainState();
}

class _PhpConstructorsExMainState extends State<PhpConstructorsExMain> {
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
          if (widget.id == 1481)
            PhpConstructorsEx1481(
              id: 1481,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1482)
            PhpConstructorsEx1482(
              id: 1482,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1483)
            PhpConstructorsEx1483(
              id: 1483,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1484)
            PhpConstructorsEx1484(
              id: 1484,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1485)
            PhpConstructorsEx1485(
              id: 1485,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1486)
            PhpConstructorsEx1486(
              id: 1486,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1487)
            PhpConstructorsEx1487(
              id: 1487,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1488)
            PhpConstructorsEx1488(
              id: 1488,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1489)
            PhpConstructorsEx1489(
              id: 1489,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1490)
            PhpConstructorsEx1490(
              id: 1490,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1491)
            PhpConstructorsEx1491(
              id: 1491,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1492)
            PhpConstructorsEx1492(
              id: 1492,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1493)
            PhpConstructorsEx1493(
              id: 1493,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1494)
            PhpConstructorsEx1494(
              id: 1494,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1495)
            PhpConstructorsEx1495(
              id: 1495,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}