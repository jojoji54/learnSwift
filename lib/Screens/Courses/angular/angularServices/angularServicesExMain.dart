
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3375.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3376.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3377.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3378.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3379.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3380.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3381.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3382.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3383.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3384.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3385.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3386.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3387.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3388.dart';
import 'package:learnswift/Screens/Courses/angular/angularServices/Ex/angularServicesEx3389.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularServicesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularServicesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularServicesExMain> createState() => _AngularServicesExMainState();
}

class _AngularServicesExMainState extends State<AngularServicesExMain> {
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
          if (widget.id == 3375)
            AngularServicesEx3375(
              id: 3375,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3376)
            AngularServicesEx3376(
              id: 3376,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3377)
            AngularServicesEx3377(
              id: 3377,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3378)
            AngularServicesEx3378(
              id: 3378,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3379)
            AngularServicesEx3379(
              id: 3379,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3380)
            AngularServicesEx3380(
              id: 3380,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3381)
            AngularServicesEx3381(
              id: 3381,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3382)
            AngularServicesEx3382(
              id: 3382,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3383)
            AngularServicesEx3383(
              id: 3383,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3384)
            AngularServicesEx3384(
              id: 3384,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3385)
            AngularServicesEx3385(
              id: 3385,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3386)
            AngularServicesEx3386(
              id: 3386,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3387)
            AngularServicesEx3387(
              id: 3387,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3388)
            AngularServicesEx3388(
              id: 3388,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3389)
            AngularServicesEx3389(
              id: 3389,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
