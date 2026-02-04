import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3930.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3931.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3932.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3933.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3934.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3935.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3936.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3937.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3938.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3939.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3940.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3941.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3942.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3943.dart';
import 'package:learnswift/Screens/Courses/django/djangoUrls/Ex/djangoUrlsEx3944.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoUrlsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoUrlsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoUrlsExMain> createState() => _DjangoUrlsExMainState();
}

class _DjangoUrlsExMainState extends State<DjangoUrlsExMain> {
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

          if (widget.id == 3930)
            DjangoUrlsEx3930(
              id: 3930,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3931)
            DjangoUrlsEx3931(
              id: 3931,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3932)
            DjangoUrlsEx3932(
              id: 3932,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3933)
            DjangoUrlsEx3933(
              id: 3933,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3934)
            DjangoUrlsEx3934(
              id: 3934,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3935)
            DjangoUrlsEx3935(
              id: 3935,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3936)
            DjangoUrlsEx3936(
              id: 3936,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3937)
            DjangoUrlsEx3937(
              id: 3937,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3938)
            DjangoUrlsEx3938(
              id: 3938,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3939)
            DjangoUrlsEx3939(
              id: 3939,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3940)
            DjangoUrlsEx3940(
              id: 3940,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3941)
            DjangoUrlsEx3941(
              id: 3941,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3942)
            DjangoUrlsEx3942(
              id: 3942,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3943)
            DjangoUrlsEx3943(
              id: 3943,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3944)
            DjangoUrlsEx3944(
              id: 3944,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
