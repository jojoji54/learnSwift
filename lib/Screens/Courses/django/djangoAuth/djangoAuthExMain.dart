import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4050.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4051.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4052.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4053.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4054.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4055.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4056.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4057.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4058.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4059.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4060.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4061.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4062.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4063.dart';
import 'package:learnswift/Screens/Courses/django/djangoAuth/Ex/djangoAuthEx4064.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoAuthExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoAuthExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoAuthExMain> createState() => _DjangoAuthExMainState();
}

class _DjangoAuthExMainState extends State<DjangoAuthExMain> {
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

          if (widget.id == 4050)
            DjangoAuthEx4050(
              id: 4050,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4051)
            DjangoAuthEx4051(
              id: 4051,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4052)
            DjangoAuthEx4052(
              id: 4052,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4053)
            DjangoAuthEx4053(
              id: 4053,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4054)
            DjangoAuthEx4054(
              id: 4054,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4055)
            DjangoAuthEx4055(
              id: 4055,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4056)
            DjangoAuthEx4056(
              id: 4056,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4057)
            DjangoAuthEx4057(
              id: 4057,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4058)
            DjangoAuthEx4058(
              id: 4058,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4059)
            DjangoAuthEx4059(
              id: 4059,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4060)
            DjangoAuthEx4060(
              id: 4060,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4061)
            DjangoAuthEx4061(
              id: 4061,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4062)
            DjangoAuthEx4062(
              id: 4062,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4063)
            DjangoAuthEx4063(
              id: 4063,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4064)
            DjangoAuthEx4064(
              id: 4064,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
