import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4855.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4856.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4857.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4858.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4859.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4860.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4861.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4862.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4863.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4864.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4865.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4866.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4867.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4868.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEvents/Ex/laravelEventsEx4869.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelEventsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelEventsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelEventsExMain> createState() => _LaravelEventsExMainState();
}

class _LaravelEventsExMainState extends State<LaravelEventsExMain> {
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

          if (widget.id == 4855)
            LaravelEventsEx4855(
              id: 4855,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4856)
            LaravelEventsEx4856(
              id: 4856,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4857)
            LaravelEventsEx4857(
              id: 4857,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4858)
            LaravelEventsEx4858(
              id: 4858,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4859)
            LaravelEventsEx4859(
              id: 4859,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4860)
            LaravelEventsEx4860(
              id: 4860,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4861)
            LaravelEventsEx4861(
              id: 4861,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4862)
            LaravelEventsEx4862(
              id: 4862,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4863)
            LaravelEventsEx4863(
              id: 4863,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4864)
            LaravelEventsEx4864(
              id: 4864,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4865)
            LaravelEventsEx4865(
              id: 4865,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4866)
            LaravelEventsEx4866(
              id: 4866,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4867)
            LaravelEventsEx4867(
              id: 4867,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4868)
            LaravelEventsEx4868(
              id: 4868,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4869)
            LaravelEventsEx4869(
              id: 4869,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
