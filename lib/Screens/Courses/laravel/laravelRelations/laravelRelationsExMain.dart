import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4765.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4766.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4767.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4768.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4769.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4770.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4771.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4772.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4773.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4774.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4775.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4776.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4777.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4778.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelRelations/Ex/laravelRelationsEx4779.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelRelationsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelRelationsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelRelationsExMain> createState() => _LaravelRelationsExMainState();
}

class _LaravelRelationsExMainState extends State<LaravelRelationsExMain> {
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

          if (widget.id == 4765)
            LaravelRelationsEx4765(
              id: 4765,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4766)
            LaravelRelationsEx4766(
              id: 4766,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4767)
            LaravelRelationsEx4767(
              id: 4767,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4768)
            LaravelRelationsEx4768(
              id: 4768,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4769)
            LaravelRelationsEx4769(
              id: 4769,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4770)
            LaravelRelationsEx4770(
              id: 4770,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4771)
            LaravelRelationsEx4771(
              id: 4771,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4772)
            LaravelRelationsEx4772(
              id: 4772,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4773)
            LaravelRelationsEx4773(
              id: 4773,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4774)
            LaravelRelationsEx4774(
              id: 4774,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4775)
            LaravelRelationsEx4775(
              id: 4775,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4776)
            LaravelRelationsEx4776(
              id: 4776,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4777)
            LaravelRelationsEx4777(
              id: 4777,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4778)
            LaravelRelationsEx4778(
              id: 4778,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4779)
            LaravelRelationsEx4779(
              id: 4779,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
