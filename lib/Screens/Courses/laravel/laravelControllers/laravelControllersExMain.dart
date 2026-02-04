import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4705.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4706.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4707.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4708.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4709.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4710.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4711.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4712.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4713.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4714.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4715.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4716.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4717.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4718.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelControllers/Ex/laravelControllersEx4719.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelControllersExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelControllersExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelControllersExMain> createState() => _LaravelControllersExMainState();
}

class _LaravelControllersExMainState extends State<LaravelControllersExMain> {
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

          if (widget.id == 4705)
            LaravelControllersEx4705(
              id: 4705,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4706)
            LaravelControllersEx4706(
              id: 4706,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4707)
            LaravelControllersEx4707(
              id: 4707,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4708)
            LaravelControllersEx4708(
              id: 4708,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4709)
            LaravelControllersEx4709(
              id: 4709,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4710)
            LaravelControllersEx4710(
              id: 4710,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4711)
            LaravelControllersEx4711(
              id: 4711,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4712)
            LaravelControllersEx4712(
              id: 4712,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4713)
            LaravelControllersEx4713(
              id: 4713,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4714)
            LaravelControllersEx4714(
              id: 4714,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4715)
            LaravelControllersEx4715(
              id: 4715,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4716)
            LaravelControllersEx4716(
              id: 4716,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4717)
            LaravelControllersEx4717(
              id: 4717,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4718)
            LaravelControllersEx4718(
              id: 4718,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4719)
            LaravelControllersEx4719(
              id: 4719,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
