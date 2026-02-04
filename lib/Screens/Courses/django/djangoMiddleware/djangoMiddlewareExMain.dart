import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4080.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4081.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4082.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4083.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4084.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4085.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4086.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4087.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4088.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4089.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4090.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4091.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4092.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4093.dart';
import 'package:learnswift/Screens/Courses/django/djangoMiddleware/Ex/djangoMiddlewareEx4094.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoMiddlewareExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoMiddlewareExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoMiddlewareExMain> createState() => _DjangoMiddlewareExMainState();
}

class _DjangoMiddlewareExMainState extends State<DjangoMiddlewareExMain> {
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

          if (widget.id == 4080)
            DjangoMiddlewareEx4080(
              id: 4080,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4081)
            DjangoMiddlewareEx4081(
              id: 4081,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4082)
            DjangoMiddlewareEx4082(
              id: 4082,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4083)
            DjangoMiddlewareEx4083(
              id: 4083,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4084)
            DjangoMiddlewareEx4084(
              id: 4084,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4085)
            DjangoMiddlewareEx4085(
              id: 4085,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4086)
            DjangoMiddlewareEx4086(
              id: 4086,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4087)
            DjangoMiddlewareEx4087(
              id: 4087,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4088)
            DjangoMiddlewareEx4088(
              id: 4088,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4089)
            DjangoMiddlewareEx4089(
              id: 4089,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4090)
            DjangoMiddlewareEx4090(
              id: 4090,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4091)
            DjangoMiddlewareEx4091(
              id: 4091,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4092)
            DjangoMiddlewareEx4092(
              id: 4092,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4093)
            DjangoMiddlewareEx4093(
              id: 4093,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4094)
            DjangoMiddlewareEx4094(
              id: 4094,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
