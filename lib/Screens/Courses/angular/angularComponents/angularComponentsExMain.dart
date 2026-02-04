
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3330.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3331.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3332.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3333.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3334.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3335.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3336.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3337.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3338.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3339.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3340.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3341.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3342.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3343.dart';
import 'package:learnswift/Screens/Courses/angular/angularComponents/Ex/angularComponentsEx3344.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularComponentsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularComponentsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularComponentsExMain> createState() => _AngularComponentsExMainState();
}

class _AngularComponentsExMainState extends State<AngularComponentsExMain> {
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
          if (widget.id == 3330)
            AngularComponentsEx3330(
              id: 3330,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3331)
            AngularComponentsEx3331(
              id: 3331,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3332)
            AngularComponentsEx3332(
              id: 3332,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3333)
            AngularComponentsEx3333(
              id: 3333,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3334)
            AngularComponentsEx3334(
              id: 3334,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3335)
            AngularComponentsEx3335(
              id: 3335,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3336)
            AngularComponentsEx3336(
              id: 3336,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3337)
            AngularComponentsEx3337(
              id: 3337,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3338)
            AngularComponentsEx3338(
              id: 3338,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3339)
            AngularComponentsEx3339(
              id: 3339,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3340)
            AngularComponentsEx3340(
              id: 3340,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3341)
            AngularComponentsEx3341(
              id: 3341,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3342)
            AngularComponentsEx3342(
              id: 3342,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3343)
            AngularComponentsEx3343(
              id: 3343,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3344)
            AngularComponentsEx3344(
              id: 3344,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
