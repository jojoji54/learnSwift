
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3480.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3481.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3482.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3483.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3484.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3485.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3486.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3487.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3488.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3489.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3490.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3491.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3492.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3493.dart';
import 'package:learnswift/Screens/Courses/angular/angularTesting/Ex/angularTestingEx3494.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularTestingExMain> createState() => _AngularTestingExMainState();
}

class _AngularTestingExMainState extends State<AngularTestingExMain> {
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
          if (widget.id == 3480)
            AngularTestingEx3480(
              id: 3480,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3481)
            AngularTestingEx3481(
              id: 3481,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3482)
            AngularTestingEx3482(
              id: 3482,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3483)
            AngularTestingEx3483(
              id: 3483,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3484)
            AngularTestingEx3484(
              id: 3484,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3485)
            AngularTestingEx3485(
              id: 3485,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3486)
            AngularTestingEx3486(
              id: 3486,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3487)
            AngularTestingEx3487(
              id: 3487,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3488)
            AngularTestingEx3488(
              id: 3488,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3489)
            AngularTestingEx3489(
              id: 3489,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3490)
            AngularTestingEx3490(
              id: 3490,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3491)
            AngularTestingEx3491(
              id: 3491,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3492)
            AngularTestingEx3492(
              id: 3492,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3493)
            AngularTestingEx3493(
              id: 3493,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3494)
            AngularTestingEx3494(
              id: 3494,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
