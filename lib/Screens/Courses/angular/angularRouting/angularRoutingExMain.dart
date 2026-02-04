
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3390.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3391.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3392.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3393.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3394.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3395.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3396.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3397.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3398.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3399.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3400.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3401.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3402.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3403.dart';
import 'package:learnswift/Screens/Courses/angular/angularRouting/Ex/angularRoutingEx3404.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularRoutingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularRoutingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularRoutingExMain> createState() => _AngularRoutingExMainState();
}

class _AngularRoutingExMainState extends State<AngularRoutingExMain> {
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
          if (widget.id == 3390)
            AngularRoutingEx3390(
              id: 3390,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3391)
            AngularRoutingEx3391(
              id: 3391,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3392)
            AngularRoutingEx3392(
              id: 3392,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3393)
            AngularRoutingEx3393(
              id: 3393,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3394)
            AngularRoutingEx3394(
              id: 3394,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3395)
            AngularRoutingEx3395(
              id: 3395,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3396)
            AngularRoutingEx3396(
              id: 3396,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3397)
            AngularRoutingEx3397(
              id: 3397,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3398)
            AngularRoutingEx3398(
              id: 3398,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3399)
            AngularRoutingEx3399(
              id: 3399,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3400)
            AngularRoutingEx3400(
              id: 3400,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3401)
            AngularRoutingEx3401(
              id: 3401,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3402)
            AngularRoutingEx3402(
              id: 3402,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3403)
            AngularRoutingEx3403(
              id: 3403,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3404)
            AngularRoutingEx3404(
              id: 3404,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
