import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4720.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4721.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4722.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4723.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4724.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4725.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4726.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4727.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4728.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4729.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4730.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4731.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4732.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4733.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelBlade/Ex/laravelBladeEx4734.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelBladeExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelBladeExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelBladeExMain> createState() => _LaravelBladeExMainState();
}

class _LaravelBladeExMainState extends State<LaravelBladeExMain> {
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

          if (widget.id == 4720)
            LaravelBladeEx4720(
              id: 4720,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4721)
            LaravelBladeEx4721(
              id: 4721,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4722)
            LaravelBladeEx4722(
              id: 4722,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4723)
            LaravelBladeEx4723(
              id: 4723,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4724)
            LaravelBladeEx4724(
              id: 4724,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4725)
            LaravelBladeEx4725(
              id: 4725,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4726)
            LaravelBladeEx4726(
              id: 4726,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4727)
            LaravelBladeEx4727(
              id: 4727,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4728)
            LaravelBladeEx4728(
              id: 4728,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4729)
            LaravelBladeEx4729(
              id: 4729,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4730)
            LaravelBladeEx4730(
              id: 4730,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4731)
            LaravelBladeEx4731(
              id: 4731,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4732)
            LaravelBladeEx4732(
              id: 4732,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4733)
            LaravelBladeEx4733(
              id: 4733,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4734)
            LaravelBladeEx4734(
              id: 4734,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
