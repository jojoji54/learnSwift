
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3465.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3466.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3467.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3468.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3469.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3470.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3471.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3472.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3473.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3474.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3475.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3476.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3477.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3478.dart';
import 'package:learnswift/Screens/Courses/angular/angularPipes/Ex/angularPipesEx3479.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularPipesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularPipesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularPipesExMain> createState() => _AngularPipesExMainState();
}

class _AngularPipesExMainState extends State<AngularPipesExMain> {
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
          if (widget.id == 3465)
            AngularPipesEx3465(
              id: 3465,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3466)
            AngularPipesEx3466(
              id: 3466,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3467)
            AngularPipesEx3467(
              id: 3467,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3468)
            AngularPipesEx3468(
              id: 3468,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3469)
            AngularPipesEx3469(
              id: 3469,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3470)
            AngularPipesEx3470(
              id: 3470,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3471)
            AngularPipesEx3471(
              id: 3471,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3472)
            AngularPipesEx3472(
              id: 3472,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3473)
            AngularPipesEx3473(
              id: 3473,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3474)
            AngularPipesEx3474(
              id: 3474,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3475)
            AngularPipesEx3475(
              id: 3475,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3476)
            AngularPipesEx3476(
              id: 3476,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3477)
            AngularPipesEx3477(
              id: 3477,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3478)
            AngularPipesEx3478(
              id: 3478,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3479)
            AngularPipesEx3479(
              id: 3479,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
