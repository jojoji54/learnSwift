import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4750.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4751.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4752.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4753.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4754.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4755.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4756.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4757.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4758.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4759.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4760.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4761.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4762.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4763.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelEloquent/Ex/laravelEloquentEx4764.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelEloquentExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelEloquentExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelEloquentExMain> createState() => _LaravelEloquentExMainState();
}

class _LaravelEloquentExMainState extends State<LaravelEloquentExMain> {
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

          if (widget.id == 4750)
            LaravelEloquentEx4750(
              id: 4750,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4751)
            LaravelEloquentEx4751(
              id: 4751,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4752)
            LaravelEloquentEx4752(
              id: 4752,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4753)
            LaravelEloquentEx4753(
              id: 4753,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4754)
            LaravelEloquentEx4754(
              id: 4754,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4755)
            LaravelEloquentEx4755(
              id: 4755,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4756)
            LaravelEloquentEx4756(
              id: 4756,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4757)
            LaravelEloquentEx4757(
              id: 4757,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4758)
            LaravelEloquentEx4758(
              id: 4758,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4759)
            LaravelEloquentEx4759(
              id: 4759,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4760)
            LaravelEloquentEx4760(
              id: 4760,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4761)
            LaravelEloquentEx4761(
              id: 4761,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4762)
            LaravelEloquentEx4762(
              id: 4762,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4763)
            LaravelEloquentEx4763(
              id: 4763,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4764)
            LaravelEloquentEx4764(
              id: 4764,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
