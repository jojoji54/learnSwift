import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaConditionalsEx545.dart';
import 'Ex/javaConditionalsEx546.dart';
import 'Ex/javaConditionalsEx547.dart';
import 'Ex/javaConditionalsEx548.dart';
import 'Ex/javaConditionalsEx549.dart';
import 'Ex/javaConditionalsEx550.dart';
import 'Ex/javaConditionalsEx551.dart';
import 'Ex/javaConditionalsEx552.dart';
import 'Ex/javaConditionalsEx553.dart';
import 'Ex/javaConditionalsEx554.dart';
import 'Ex/javaConditionalsEx555.dart';
import 'Ex/javaConditionalsEx556.dart';
import 'Ex/javaConditionalsEx557.dart';
import 'Ex/javaConditionalsEx558.dart';
import 'Ex/javaConditionalsEx559.dart';

class JavaConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaConditionalsExMain> createState() => _JavaConditionalsExMainState();
}

class _JavaConditionalsExMainState extends State<JavaConditionalsExMain> {
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
          if (widget.id == 545)
            JavaConditionalsEx545(
              id: 545,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 546)
            JavaConditionalsEx546(
              id: 546,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 547)
            JavaConditionalsEx547(
              id: 547,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 548)
            JavaConditionalsEx548(
              id: 548,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 549)
            JavaConditionalsEx549(
              id: 549,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 550)
            JavaConditionalsEx550(
              id: 550,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 551)
            JavaConditionalsEx551(
              id: 551,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 552)
            JavaConditionalsEx552(
              id: 552,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 553)
            JavaConditionalsEx553(
              id: 553,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 554)
            JavaConditionalsEx554(
              id: 554,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 555)
            JavaConditionalsEx555(
              id: 555,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 556)
            JavaConditionalsEx556(
              id: 556,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 557)
            JavaConditionalsEx557(
              id: 557,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 558)
            JavaConditionalsEx558(
              id: 558,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 559)
            JavaConditionalsEx559(
              id: 559,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
