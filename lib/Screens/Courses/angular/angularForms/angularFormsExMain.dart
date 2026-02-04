
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3405.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3406.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3407.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3408.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3409.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3410.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3411.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3412.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3413.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3414.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3415.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3416.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3417.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3418.dart';
import 'package:learnswift/Screens/Courses/angular/angularForms/Ex/angularFormsEx3419.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularFormsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularFormsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularFormsExMain> createState() => _AngularFormsExMainState();
}

class _AngularFormsExMainState extends State<AngularFormsExMain> {
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
          if (widget.id == 3405)
            AngularFormsEx3405(
              id: 3405,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3406)
            AngularFormsEx3406(
              id: 3406,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3407)
            AngularFormsEx3407(
              id: 3407,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3408)
            AngularFormsEx3408(
              id: 3408,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3409)
            AngularFormsEx3409(
              id: 3409,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3410)
            AngularFormsEx3410(
              id: 3410,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3411)
            AngularFormsEx3411(
              id: 3411,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3412)
            AngularFormsEx3412(
              id: 3412,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3413)
            AngularFormsEx3413(
              id: 3413,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3414)
            AngularFormsEx3414(
              id: 3414,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3415)
            AngularFormsEx3415(
              id: 3415,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3416)
            AngularFormsEx3416(
              id: 3416,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3417)
            AngularFormsEx3417(
              id: 3417,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3418)
            AngularFormsEx3418(
              id: 3418,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3419)
            AngularFormsEx3419(
              id: 3419,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
