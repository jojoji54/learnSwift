import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaArraysEx590.dart';
import 'Ex/javaArraysEx591.dart';
import 'Ex/javaArraysEx592.dart';
import 'Ex/javaArraysEx593.dart';
import 'Ex/javaArraysEx594.dart';
import 'Ex/javaArraysEx595.dart';
import 'Ex/javaArraysEx596.dart';
import 'Ex/javaArraysEx597.dart';
import 'Ex/javaArraysEx598.dart';
import 'Ex/javaArraysEx599.dart';
import 'Ex/javaArraysEx600.dart';
import 'Ex/javaArraysEx601.dart';
import 'Ex/javaArraysEx602.dart';
import 'Ex/javaArraysEx603.dart';
import 'Ex/javaArraysEx604.dart';

class JavaArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaArraysExMain> createState() => _JavaArraysExMainState();
}

class _JavaArraysExMainState extends State<JavaArraysExMain> {
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
          if (widget.id == 590)
            JavaArraysEx590(
              id: 590,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 591)
            JavaArraysEx591(
              id: 591,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 592)
            JavaArraysEx592(
              id: 592,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 593)
            JavaArraysEx593(
              id: 593,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 594)
            JavaArraysEx594(
              id: 594,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 595)
            JavaArraysEx595(
              id: 595,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 596)
            JavaArraysEx596(
              id: 596,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 597)
            JavaArraysEx597(
              id: 597,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 598)
            JavaArraysEx598(
              id: 598,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 599)
            JavaArraysEx599(
              id: 599,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 600)
            JavaArraysEx600(
              id: 600,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 601)
            JavaArraysEx601(
              id: 601,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 602)
            JavaArraysEx602(
              id: 602,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 603)
            JavaArraysEx603(
              id: 603,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 604)
            JavaArraysEx604(
              id: 604,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
