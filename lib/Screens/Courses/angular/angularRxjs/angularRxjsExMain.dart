
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3435.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3436.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3437.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3438.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3439.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3440.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3441.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3442.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3443.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3444.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3445.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3446.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3447.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3448.dart';
import 'package:learnswift/Screens/Courses/angular/angularRxjs/Ex/angularRxjsEx3449.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularRxjsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularRxjsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularRxjsExMain> createState() => _AngularRxjsExMainState();
}

class _AngularRxjsExMainState extends State<AngularRxjsExMain> {
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
          if (widget.id == 3435)
            AngularRxjsEx3435(
              id: 3435,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3436)
            AngularRxjsEx3436(
              id: 3436,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3437)
            AngularRxjsEx3437(
              id: 3437,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3438)
            AngularRxjsEx3438(
              id: 3438,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3439)
            AngularRxjsEx3439(
              id: 3439,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3440)
            AngularRxjsEx3440(
              id: 3440,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3441)
            AngularRxjsEx3441(
              id: 3441,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3442)
            AngularRxjsEx3442(
              id: 3442,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3443)
            AngularRxjsEx3443(
              id: 3443,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3444)
            AngularRxjsEx3444(
              id: 3444,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3445)
            AngularRxjsEx3445(
              id: 3445,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3446)
            AngularRxjsEx3446(
              id: 3446,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3447)
            AngularRxjsEx3447(
              id: 3447,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3448)
            AngularRxjsEx3448(
              id: 3448,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3449)
            AngularRxjsEx3449(
              id: 3449,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
