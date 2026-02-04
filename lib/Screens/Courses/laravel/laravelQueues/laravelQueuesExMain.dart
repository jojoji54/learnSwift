import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4840.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4841.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4842.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4843.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4844.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4845.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4846.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4847.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4848.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4849.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4850.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4851.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4852.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4853.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelQueues/Ex/laravelQueuesEx4854.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelQueuesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelQueuesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelQueuesExMain> createState() => _LaravelQueuesExMainState();
}

class _LaravelQueuesExMainState extends State<LaravelQueuesExMain> {
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

          if (widget.id == 4840)
            LaravelQueuesEx4840(
              id: 4840,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4841)
            LaravelQueuesEx4841(
              id: 4841,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4842)
            LaravelQueuesEx4842(
              id: 4842,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4843)
            LaravelQueuesEx4843(
              id: 4843,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4844)
            LaravelQueuesEx4844(
              id: 4844,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4845)
            LaravelQueuesEx4845(
              id: 4845,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4846)
            LaravelQueuesEx4846(
              id: 4846,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4847)
            LaravelQueuesEx4847(
              id: 4847,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4848)
            LaravelQueuesEx4848(
              id: 4848,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4849)
            LaravelQueuesEx4849(
              id: 4849,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4850)
            LaravelQueuesEx4850(
              id: 4850,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4851)
            LaravelQueuesEx4851(
              id: 4851,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4852)
            LaravelQueuesEx4852(
              id: 4852,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4853)
            LaravelQueuesEx4853(
              id: 4853,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4854)
            LaravelQueuesEx4854(
              id: 4854,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
