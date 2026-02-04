
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3300.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3301.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3302.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3303.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3304.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3305.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3306.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3307.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3308.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3309.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3310.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3311.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3312.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3313.dart';
import 'package:learnswift/Screens/Courses/angular/angularBasics/Ex/angularBasicsEx3314.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularBasicsExMain> createState() => _AngularBasicsExMainState();
}

class _AngularBasicsExMainState extends State<AngularBasicsExMain> {
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
          if (widget.id == 3300)
            AngularBasicsEx3300(
              id: 3300,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3301)
            AngularBasicsEx3301(
              id: 3301,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3302)
            AngularBasicsEx3302(
              id: 3302,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3303)
            AngularBasicsEx3303(
              id: 3303,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3304)
            AngularBasicsEx3304(
              id: 3304,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3305)
            AngularBasicsEx3305(
              id: 3305,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3306)
            AngularBasicsEx3306(
              id: 3306,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3307)
            AngularBasicsEx3307(
              id: 3307,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3308)
            AngularBasicsEx3308(
              id: 3308,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3309)
            AngularBasicsEx3309(
              id: 3309,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3310)
            AngularBasicsEx3310(
              id: 3310,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3311)
            AngularBasicsEx3311(
              id: 3311,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3312)
            AngularBasicsEx3312(
              id: 3312,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3313)
            AngularBasicsEx3313(
              id: 3313,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3314)
            AngularBasicsEx3314(
              id: 3314,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
