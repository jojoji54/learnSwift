import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4035.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4036.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4037.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4038.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4039.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4040.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4041.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4042.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4043.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4044.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4045.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4046.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4047.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4048.dart';
import 'package:learnswift/Screens/Courses/django/djangoForms/Ex/djangoFormsEx4049.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoFormsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoFormsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoFormsExMain> createState() => _DjangoFormsExMainState();
}

class _DjangoFormsExMainState extends State<DjangoFormsExMain> {
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

          if (widget.id == 4035)
            DjangoFormsEx4035(
              id: 4035,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4036)
            DjangoFormsEx4036(
              id: 4036,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4037)
            DjangoFormsEx4037(
              id: 4037,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4038)
            DjangoFormsEx4038(
              id: 4038,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4039)
            DjangoFormsEx4039(
              id: 4039,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4040)
            DjangoFormsEx4040(
              id: 4040,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4041)
            DjangoFormsEx4041(
              id: 4041,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4042)
            DjangoFormsEx4042(
              id: 4042,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4043)
            DjangoFormsEx4043(
              id: 4043,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4044)
            DjangoFormsEx4044(
              id: 4044,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4045)
            DjangoFormsEx4045(
              id: 4045,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4046)
            DjangoFormsEx4046(
              id: 4046,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4047)
            DjangoFormsEx4047(
              id: 4047,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4048)
            DjangoFormsEx4048(
              id: 4048,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4049)
            DjangoFormsEx4049(
              id: 4049,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
