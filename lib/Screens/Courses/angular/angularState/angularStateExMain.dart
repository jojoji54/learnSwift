
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3450.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3451.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3452.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3453.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3454.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3455.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3456.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3457.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3458.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3459.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3460.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3461.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3462.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3463.dart';
import 'package:learnswift/Screens/Courses/angular/angularState/Ex/angularStateEx3464.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularStateExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularStateExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularStateExMain> createState() => _AngularStateExMainState();
}

class _AngularStateExMainState extends State<AngularStateExMain> {
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
          if (widget.id == 3450)
            AngularStateEx3450(
              id: 3450,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3451)
            AngularStateEx3451(
              id: 3451,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3452)
            AngularStateEx3452(
              id: 3452,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3453)
            AngularStateEx3453(
              id: 3453,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3454)
            AngularStateEx3454(
              id: 3454,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3455)
            AngularStateEx3455(
              id: 3455,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3456)
            AngularStateEx3456(
              id: 3456,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3457)
            AngularStateEx3457(
              id: 3457,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3458)
            AngularStateEx3458(
              id: 3458,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3459)
            AngularStateEx3459(
              id: 3459,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3460)
            AngularStateEx3460(
              id: 3460,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3461)
            AngularStateEx3461(
              id: 3461,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3462)
            AngularStateEx3462(
              id: 3462,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3463)
            AngularStateEx3463(
              id: 3463,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3464)
            AngularStateEx3464(
              id: 3464,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
