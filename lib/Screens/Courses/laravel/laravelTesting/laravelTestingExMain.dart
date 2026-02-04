import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4870.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4871.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4872.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4873.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4874.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4875.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4876.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4877.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4878.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4879.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4880.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4881.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4882.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4883.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelTesting/Ex/laravelTestingEx4884.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelTestingExMain> createState() => _LaravelTestingExMainState();
}

class _LaravelTestingExMainState extends State<LaravelTestingExMain> {
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

          if (widget.id == 4870)
            LaravelTestingEx4870(
              id: 4870,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4871)
            LaravelTestingEx4871(
              id: 4871,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4872)
            LaravelTestingEx4872(
              id: 4872,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4873)
            LaravelTestingEx4873(
              id: 4873,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4874)
            LaravelTestingEx4874(
              id: 4874,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4875)
            LaravelTestingEx4875(
              id: 4875,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4876)
            LaravelTestingEx4876(
              id: 4876,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4877)
            LaravelTestingEx4877(
              id: 4877,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4878)
            LaravelTestingEx4878(
              id: 4878,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4879)
            LaravelTestingEx4879(
              id: 4879,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4880)
            LaravelTestingEx4880(
              id: 4880,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4881)
            LaravelTestingEx4881(
              id: 4881,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4882)
            LaravelTestingEx4882(
              id: 4882,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4883)
            LaravelTestingEx4883(
              id: 4883,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4884)
            LaravelTestingEx4884(
              id: 4884,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
