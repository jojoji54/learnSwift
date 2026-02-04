
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3495.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3496.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3497.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3498.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3499.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3500.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3501.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3502.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3503.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3504.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3505.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3506.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3507.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3508.dart';
import 'package:learnswift/Screens/Courses/angular/angularPerformance/Ex/angularPerformanceEx3509.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularPerformanceExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularPerformanceExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularPerformanceExMain> createState() => _AngularPerformanceExMainState();
}

class _AngularPerformanceExMainState extends State<AngularPerformanceExMain> {
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
          if (widget.id == 3495)
            AngularPerformanceEx3495(
              id: 3495,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3496)
            AngularPerformanceEx3496(
              id: 3496,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3497)
            AngularPerformanceEx3497(
              id: 3497,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3498)
            AngularPerformanceEx3498(
              id: 3498,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3499)
            AngularPerformanceEx3499(
              id: 3499,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3500)
            AngularPerformanceEx3500(
              id: 3500,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3501)
            AngularPerformanceEx3501(
              id: 3501,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3502)
            AngularPerformanceEx3502(
              id: 3502,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3503)
            AngularPerformanceEx3503(
              id: 3503,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3504)
            AngularPerformanceEx3504(
              id: 3504,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3505)
            AngularPerformanceEx3505(
              id: 3505,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3506)
            AngularPerformanceEx3506(
              id: 3506,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3507)
            AngularPerformanceEx3507(
              id: 3507,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3508)
            AngularPerformanceEx3508(
              id: 3508,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3509)
            AngularPerformanceEx3509(
              id: 3509,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
