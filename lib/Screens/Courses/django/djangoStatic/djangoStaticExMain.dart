import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3960.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3961.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3962.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3963.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3964.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3965.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3966.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3967.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3968.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3969.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3970.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3971.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3972.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3973.dart';
import 'package:learnswift/Screens/Courses/django/djangoStatic/Ex/djangoStaticEx3974.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoStaticExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoStaticExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoStaticExMain> createState() => _DjangoStaticExMainState();
}

class _DjangoStaticExMainState extends State<DjangoStaticExMain> {
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

          if (widget.id == 3960)
            DjangoStaticEx3960(
              id: 3960,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3961)
            DjangoStaticEx3961(
              id: 3961,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3962)
            DjangoStaticEx3962(
              id: 3962,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3963)
            DjangoStaticEx3963(
              id: 3963,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3964)
            DjangoStaticEx3964(
              id: 3964,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3965)
            DjangoStaticEx3965(
              id: 3965,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3966)
            DjangoStaticEx3966(
              id: 3966,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3967)
            DjangoStaticEx3967(
              id: 3967,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3968)
            DjangoStaticEx3968(
              id: 3968,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3969)
            DjangoStaticEx3969(
              id: 3969,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3970)
            DjangoStaticEx3970(
              id: 3970,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3971)
            DjangoStaticEx3971(
              id: 3971,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3972)
            DjangoStaticEx3972(
              id: 3972,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3973)
            DjangoStaticEx3973(
              id: 3973,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3974)
            DjangoStaticEx3974(
              id: 3974,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
