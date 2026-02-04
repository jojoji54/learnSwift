
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3420.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3421.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3422.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3423.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3424.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3425.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3426.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3427.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3428.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3429.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3430.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3431.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3432.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3433.dart';
import 'package:learnswift/Screens/Courses/angular/angularHttp/Ex/angularHttpEx3434.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularHttpExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularHttpExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularHttpExMain> createState() => _AngularHttpExMainState();
}

class _AngularHttpExMainState extends State<AngularHttpExMain> {
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
          if (widget.id == 3420)
            AngularHttpEx3420(
              id: 3420,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3421)
            AngularHttpEx3421(
              id: 3421,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3422)
            AngularHttpEx3422(
              id: 3422,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3423)
            AngularHttpEx3423(
              id: 3423,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3424)
            AngularHttpEx3424(
              id: 3424,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3425)
            AngularHttpEx3425(
              id: 3425,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3426)
            AngularHttpEx3426(
              id: 3426,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3427)
            AngularHttpEx3427(
              id: 3427,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3428)
            AngularHttpEx3428(
              id: 3428,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3429)
            AngularHttpEx3429(
              id: 3429,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3430)
            AngularHttpEx3430(
              id: 3430,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3431)
            AngularHttpEx3431(
              id: 3431,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3432)
            AngularHttpEx3432(
              id: 3432,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3433)
            AngularHttpEx3433(
              id: 3433,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3434)
            AngularHttpEx3434(
              id: 3434,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
