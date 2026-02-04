import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4825.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4826.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4827.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4828.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4829.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4830.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4831.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4832.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4833.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4834.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4835.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4836.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4837.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4838.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelStorage/Ex/laravelStorageEx4839.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelStorageExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelStorageExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelStorageExMain> createState() => _LaravelStorageExMainState();
}

class _LaravelStorageExMainState extends State<LaravelStorageExMain> {
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

          if (widget.id == 4825)
            LaravelStorageEx4825(
              id: 4825,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4826)
            LaravelStorageEx4826(
              id: 4826,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4827)
            LaravelStorageEx4827(
              id: 4827,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4828)
            LaravelStorageEx4828(
              id: 4828,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4829)
            LaravelStorageEx4829(
              id: 4829,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4830)
            LaravelStorageEx4830(
              id: 4830,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4831)
            LaravelStorageEx4831(
              id: 4831,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4832)
            LaravelStorageEx4832(
              id: 4832,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4833)
            LaravelStorageEx4833(
              id: 4833,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4834)
            LaravelStorageEx4834(
              id: 4834,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4835)
            LaravelStorageEx4835(
              id: 4835,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4836)
            LaravelStorageEx4836(
              id: 4836,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4837)
            LaravelStorageEx4837(
              id: 4837,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4838)
            LaravelStorageEx4838(
              id: 4838,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4839)
            LaravelStorageEx4839(
              id: 4839,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
