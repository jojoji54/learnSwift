import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4735.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4736.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4737.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4738.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4739.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4740.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4741.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4742.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4743.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4744.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4745.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4746.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4747.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4748.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelMigrations/Ex/laravelMigrationsEx4749.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelMigrationsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelMigrationsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelMigrationsExMain> createState() => _LaravelMigrationsExMainState();
}

class _LaravelMigrationsExMainState extends State<LaravelMigrationsExMain> {
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

          if (widget.id == 4735)
            LaravelMigrationsEx4735(
              id: 4735,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4736)
            LaravelMigrationsEx4736(
              id: 4736,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4737)
            LaravelMigrationsEx4737(
              id: 4737,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4738)
            LaravelMigrationsEx4738(
              id: 4738,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4739)
            LaravelMigrationsEx4739(
              id: 4739,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4740)
            LaravelMigrationsEx4740(
              id: 4740,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4741)
            LaravelMigrationsEx4741(
              id: 4741,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4742)
            LaravelMigrationsEx4742(
              id: 4742,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4743)
            LaravelMigrationsEx4743(
              id: 4743,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4744)
            LaravelMigrationsEx4744(
              id: 4744,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4745)
            LaravelMigrationsEx4745(
              id: 4745,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4746)
            LaravelMigrationsEx4746(
              id: 4746,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4747)
            LaravelMigrationsEx4747(
              id: 4747,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4748)
            LaravelMigrationsEx4748(
              id: 4748,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4749)
            LaravelMigrationsEx4749(
              id: 4749,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
