import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4005.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4006.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4007.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4008.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4009.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4010.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4011.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4012.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4013.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4014.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4015.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4016.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4017.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4018.dart';
import 'package:learnswift/Screens/Courses/django/djangoMigrations/Ex/djangoMigrationsEx4019.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoMigrationsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoMigrationsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoMigrationsExMain> createState() => _DjangoMigrationsExMainState();
}

class _DjangoMigrationsExMainState extends State<DjangoMigrationsExMain> {
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

          if (widget.id == 4005)
            DjangoMigrationsEx4005(
              id: 4005,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4006)
            DjangoMigrationsEx4006(
              id: 4006,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4007)
            DjangoMigrationsEx4007(
              id: 4007,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4008)
            DjangoMigrationsEx4008(
              id: 4008,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4009)
            DjangoMigrationsEx4009(
              id: 4009,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4010)
            DjangoMigrationsEx4010(
              id: 4010,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4011)
            DjangoMigrationsEx4011(
              id: 4011,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4012)
            DjangoMigrationsEx4012(
              id: 4012,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4013)
            DjangoMigrationsEx4013(
              id: 4013,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4014)
            DjangoMigrationsEx4014(
              id: 4014,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4015)
            DjangoMigrationsEx4015(
              id: 4015,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4016)
            DjangoMigrationsEx4016(
              id: 4016,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4017)
            DjangoMigrationsEx4017(
              id: 4017,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4018)
            DjangoMigrationsEx4018(
              id: 4018,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4019)
            DjangoMigrationsEx4019(
              id: 4019,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
