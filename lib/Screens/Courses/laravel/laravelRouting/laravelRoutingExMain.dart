import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4690.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4691.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4692.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4693.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4694.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4695.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4696.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4697.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4698.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4699.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4700.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4701.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4702.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4703.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRouting/Ex/laravelRoutingEx4704.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelRoutingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelRoutingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelRoutingExMain> createState() => _LaravelRoutingExMainState();
}

class _LaravelRoutingExMainState extends State<LaravelRoutingExMain> {
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

          if (widget.id == 4690)
            LaravelRoutingEx4690(
              id: 4690,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4691)
            LaravelRoutingEx4691(
              id: 4691,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4692)
            LaravelRoutingEx4692(
              id: 4692,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4693)
            LaravelRoutingEx4693(
              id: 4693,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4694)
            LaravelRoutingEx4694(
              id: 4694,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4695)
            LaravelRoutingEx4695(
              id: 4695,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4696)
            LaravelRoutingEx4696(
              id: 4696,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4697)
            LaravelRoutingEx4697(
              id: 4697,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4698)
            LaravelRoutingEx4698(
              id: 4698,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4699)
            LaravelRoutingEx4699(
              id: 4699,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4700)
            LaravelRoutingEx4700(
              id: 4700,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4701)
            LaravelRoutingEx4701(
              id: 4701,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4702)
            LaravelRoutingEx4702(
              id: 4702,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4703)
            LaravelRoutingEx4703(
              id: 4703,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4704)
            LaravelRoutingEx4704(
              id: 4704,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
