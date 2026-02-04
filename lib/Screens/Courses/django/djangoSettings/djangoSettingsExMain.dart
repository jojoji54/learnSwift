import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3915.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3916.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3917.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3918.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3919.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3920.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3921.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3922.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3923.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3924.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3925.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3926.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3927.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3928.dart';
import 'package:learnswift/Screens/Courses/django/djangoSettings/Ex/djangoSettingsEx3929.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoSettingsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoSettingsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoSettingsExMain> createState() => _DjangoSettingsExMainState();
}

class _DjangoSettingsExMainState extends State<DjangoSettingsExMain> {
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

          if (widget.id == 3915)
            DjangoSettingsEx3915(
              id: 3915,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3916)
            DjangoSettingsEx3916(
              id: 3916,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3917)
            DjangoSettingsEx3917(
              id: 3917,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3918)
            DjangoSettingsEx3918(
              id: 3918,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3919)
            DjangoSettingsEx3919(
              id: 3919,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3920)
            DjangoSettingsEx3920(
              id: 3920,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3921)
            DjangoSettingsEx3921(
              id: 3921,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3922)
            DjangoSettingsEx3922(
              id: 3922,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3923)
            DjangoSettingsEx3923(
              id: 3923,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3924)
            DjangoSettingsEx3924(
              id: 3924,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3925)
            DjangoSettingsEx3925(
              id: 3925,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3926)
            DjangoSettingsEx3926(
              id: 3926,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3927)
            DjangoSettingsEx3927(
              id: 3927,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3928)
            DjangoSettingsEx3928(
              id: 3928,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3929)
            DjangoSettingsEx3929(
              id: 3929,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
