
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3360.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3361.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3362.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3363.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3364.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3365.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3366.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3367.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3368.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3369.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3370.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3371.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3372.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3373.dart';
import 'package:learnswift/Screens/Courses/angular/angularDirectives/Ex/angularDirectivesEx3374.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularDirectivesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularDirectivesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularDirectivesExMain> createState() => _AngularDirectivesExMainState();
}

class _AngularDirectivesExMainState extends State<AngularDirectivesExMain> {
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
          if (widget.id == 3360)
            AngularDirectivesEx3360(
              id: 3360,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3361)
            AngularDirectivesEx3361(
              id: 3361,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3362)
            AngularDirectivesEx3362(
              id: 3362,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3363)
            AngularDirectivesEx3363(
              id: 3363,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3364)
            AngularDirectivesEx3364(
              id: 3364,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3365)
            AngularDirectivesEx3365(
              id: 3365,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3366)
            AngularDirectivesEx3366(
              id: 3366,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3367)
            AngularDirectivesEx3367(
              id: 3367,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3368)
            AngularDirectivesEx3368(
              id: 3368,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3369)
            AngularDirectivesEx3369(
              id: 3369,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3370)
            AngularDirectivesEx3370(
              id: 3370,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3371)
            AngularDirectivesEx3371(
              id: 3371,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3372)
            AngularDirectivesEx3372(
              id: 3372,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3373)
            AngularDirectivesEx3373(
              id: 3373,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3374)
            AngularDirectivesEx3374(
              id: 3374,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
