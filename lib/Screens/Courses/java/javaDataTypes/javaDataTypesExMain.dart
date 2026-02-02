import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaDataTypesEx515.dart';
import 'Ex/javaDataTypesEx516.dart';
import 'Ex/javaDataTypesEx517.dart';
import 'Ex/javaDataTypesEx518.dart';
import 'Ex/javaDataTypesEx519.dart';
import 'Ex/javaDataTypesEx520.dart';
import 'Ex/javaDataTypesEx521.dart';
import 'Ex/javaDataTypesEx522.dart';
import 'Ex/javaDataTypesEx523.dart';
import 'Ex/javaDataTypesEx524.dart';
import 'Ex/javaDataTypesEx525.dart';
import 'Ex/javaDataTypesEx526.dart';
import 'Ex/javaDataTypesEx527.dart';
import 'Ex/javaDataTypesEx528.dart';
import 'Ex/javaDataTypesEx529.dart';

class JavaDataTypesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaDataTypesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaDataTypesExMain> createState() => _JavaDataTypesExMainState();
}

class _JavaDataTypesExMainState extends State<JavaDataTypesExMain> {
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
          if (widget.id == 515)
            JavaDataTypesEx515(
              id: 515,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 516)
            JavaDataTypesEx516(
              id: 516,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 517)
            JavaDataTypesEx517(
              id: 517,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 518)
            JavaDataTypesEx518(
              id: 518,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 519)
            JavaDataTypesEx519(
              id: 519,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 520)
            JavaDataTypesEx520(
              id: 520,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 521)
            JavaDataTypesEx521(
              id: 521,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 522)
            JavaDataTypesEx522(
              id: 522,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 523)
            JavaDataTypesEx523(
              id: 523,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 524)
            JavaDataTypesEx524(
              id: 524,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 525)
            JavaDataTypesEx525(
              id: 525,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 526)
            JavaDataTypesEx526(
              id: 526,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 527)
            JavaDataTypesEx527(
              id: 527,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 528)
            JavaDataTypesEx528(
              id: 528,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 529)
            JavaDataTypesEx529(
              id: 529,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
