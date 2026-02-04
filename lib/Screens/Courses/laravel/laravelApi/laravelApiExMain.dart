import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4810.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4811.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4812.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4813.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4814.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4815.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4816.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4817.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4818.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4819.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4820.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4821.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4822.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4823.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelApi/Ex/laravelApiEx4824.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelApiExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelApiExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelApiExMain> createState() => _LaravelApiExMainState();
}

class _LaravelApiExMainState extends State<LaravelApiExMain> {
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

          if (widget.id == 4810)
            LaravelApiEx4810(
              id: 4810,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4811)
            LaravelApiEx4811(
              id: 4811,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4812)
            LaravelApiEx4812(
              id: 4812,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4813)
            LaravelApiEx4813(
              id: 4813,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4814)
            LaravelApiEx4814(
              id: 4814,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4815)
            LaravelApiEx4815(
              id: 4815,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4816)
            LaravelApiEx4816(
              id: 4816,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4817)
            LaravelApiEx4817(
              id: 4817,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4818)
            LaravelApiEx4818(
              id: 4818,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4819)
            LaravelApiEx4819(
              id: 4819,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4820)
            LaravelApiEx4820(
              id: 4820,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4821)
            LaravelApiEx4821(
              id: 4821,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4822)
            LaravelApiEx4822(
              id: 4822,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4823)
            LaravelApiEx4823(
              id: 4823,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4824)
            LaravelApiEx4824(
              id: 4824,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
