import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4780.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4781.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4782.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4783.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4784.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4785.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4786.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4787.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4788.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4789.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4790.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4791.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4792.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4793.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelValidation/Ex/laravelValidationEx4794.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelValidationExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelValidationExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelValidationExMain> createState() => _LaravelValidationExMainState();
}

class _LaravelValidationExMainState extends State<LaravelValidationExMain> {
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

          if (widget.id == 4780)
            LaravelValidationEx4780(
              id: 4780,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4781)
            LaravelValidationEx4781(
              id: 4781,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4782)
            LaravelValidationEx4782(
              id: 4782,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4783)
            LaravelValidationEx4783(
              id: 4783,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4784)
            LaravelValidationEx4784(
              id: 4784,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4785)
            LaravelValidationEx4785(
              id: 4785,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4786)
            LaravelValidationEx4786(
              id: 4786,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4787)
            LaravelValidationEx4787(
              id: 4787,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4788)
            LaravelValidationEx4788(
              id: 4788,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4789)
            LaravelValidationEx4789(
              id: 4789,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4790)
            LaravelValidationEx4790(
              id: 4790,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4791)
            LaravelValidationEx4791(
              id: 4791,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4792)
            LaravelValidationEx4792(
              id: 4792,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4793)
            LaravelValidationEx4793(
              id: 4793,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4794)
            LaravelValidationEx4794(
              id: 4794,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
