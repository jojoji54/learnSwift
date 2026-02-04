import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3975.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3976.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3977.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3978.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3979.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3980.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3981.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3982.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3983.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3984.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3985.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3986.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3987.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3988.dart';
import 'package:learnswift/Screens/Courses/django/djangoModels/Ex/djangoModelsEx3989.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoModelsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoModelsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoModelsExMain> createState() => _DjangoModelsExMainState();
}

class _DjangoModelsExMainState extends State<DjangoModelsExMain> {
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

          if (widget.id == 3975)
            DjangoModelsEx3975(
              id: 3975,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3976)
            DjangoModelsEx3976(
              id: 3976,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3977)
            DjangoModelsEx3977(
              id: 3977,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3978)
            DjangoModelsEx3978(
              id: 3978,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3979)
            DjangoModelsEx3979(
              id: 3979,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3980)
            DjangoModelsEx3980(
              id: 3980,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3981)
            DjangoModelsEx3981(
              id: 3981,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3982)
            DjangoModelsEx3982(
              id: 3982,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3983)
            DjangoModelsEx3983(
              id: 3983,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3984)
            DjangoModelsEx3984(
              id: 3984,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3985)
            DjangoModelsEx3985(
              id: 3985,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3986)
            DjangoModelsEx3986(
              id: 3986,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3987)
            DjangoModelsEx3987(
              id: 3987,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3988)
            DjangoModelsEx3988(
              id: 3988,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3989)
            DjangoModelsEx3989(
              id: 3989,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
