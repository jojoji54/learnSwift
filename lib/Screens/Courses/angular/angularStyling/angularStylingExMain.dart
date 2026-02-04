
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3510.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3511.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3512.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3513.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3514.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3515.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3516.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3517.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3518.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3519.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3520.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3521.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3522.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3523.dart';
import 'package:learnswift/Screens/Courses/angular/angularStyling/Ex/angularStylingEx3524.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularStylingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularStylingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularStylingExMain> createState() => _AngularStylingExMainState();
}

class _AngularStylingExMainState extends State<AngularStylingExMain> {
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
          if (widget.id == 3510)
            AngularStylingEx3510(
              id: 3510,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3511)
            AngularStylingEx3511(
              id: 3511,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3512)
            AngularStylingEx3512(
              id: 3512,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3513)
            AngularStylingEx3513(
              id: 3513,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3514)
            AngularStylingEx3514(
              id: 3514,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3515)
            AngularStylingEx3515(
              id: 3515,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3516)
            AngularStylingEx3516(
              id: 3516,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3517)
            AngularStylingEx3517(
              id: 3517,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3518)
            AngularStylingEx3518(
              id: 3518,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3519)
            AngularStylingEx3519(
              id: 3519,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3520)
            AngularStylingEx3520(
              id: 3520,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3521)
            AngularStylingEx3521(
              id: 3521,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3522)
            AngularStylingEx3522(
              id: 3522,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3523)
            AngularStylingEx3523(
              id: 3523,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3524)
            AngularStylingEx3524(
              id: 3524,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
