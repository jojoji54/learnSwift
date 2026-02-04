import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4795.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4796.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4797.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4798.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4799.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4800.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4801.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4802.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4803.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4804.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4805.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4806.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4807.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4808.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMiddleware/Ex/laravelMiddlewareEx4809.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelMiddlewareExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelMiddlewareExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelMiddlewareExMain> createState() => _LaravelMiddlewareExMainState();
}

class _LaravelMiddlewareExMainState extends State<LaravelMiddlewareExMain> {
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

          if (widget.id == 4795)
            LaravelMiddlewareEx4795(
              id: 4795,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4796)
            LaravelMiddlewareEx4796(
              id: 4796,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4797)
            LaravelMiddlewareEx4797(
              id: 4797,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4798)
            LaravelMiddlewareEx4798(
              id: 4798,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4799)
            LaravelMiddlewareEx4799(
              id: 4799,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4800)
            LaravelMiddlewareEx4800(
              id: 4800,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4801)
            LaravelMiddlewareEx4801(
              id: 4801,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4802)
            LaravelMiddlewareEx4802(
              id: 4802,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4803)
            LaravelMiddlewareEx4803(
              id: 4803,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4804)
            LaravelMiddlewareEx4804(
              id: 4804,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4805)
            LaravelMiddlewareEx4805(
              id: 4805,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4806)
            LaravelMiddlewareEx4806(
              id: 4806,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4807)
            LaravelMiddlewareEx4807(
              id: 4807,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4808)
            LaravelMiddlewareEx4808(
              id: 4808,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4809)
            LaravelMiddlewareEx4809(
              id: 4809,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
