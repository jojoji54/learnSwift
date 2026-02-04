
import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3315.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3316.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3317.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3318.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3319.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3320.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3321.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3322.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3323.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3324.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3325.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3326.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3327.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3328.dart';
import 'package:learnswift/Screens/Courses/angular/angularTemplates/Ex/angularTemplatesEx3329.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AngularTemplatesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AngularTemplatesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AngularTemplatesExMain> createState() => _AngularTemplatesExMainState();
}

class _AngularTemplatesExMainState extends State<AngularTemplatesExMain> {
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
          if (widget.id == 3315)
            AngularTemplatesEx3315(
              id: 3315,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3316)
            AngularTemplatesEx3316(
              id: 3316,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3317)
            AngularTemplatesEx3317(
              id: 3317,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3318)
            AngularTemplatesEx3318(
              id: 3318,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3319)
            AngularTemplatesEx3319(
              id: 3319,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3320)
            AngularTemplatesEx3320(
              id: 3320,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3321)
            AngularTemplatesEx3321(
              id: 3321,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3322)
            AngularTemplatesEx3322(
              id: 3322,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3323)
            AngularTemplatesEx3323(
              id: 3323,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3324)
            AngularTemplatesEx3324(
              id: 3324,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3325)
            AngularTemplatesEx3325(
              id: 3325,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3326)
            AngularTemplatesEx3326(
              id: 3326,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3327)
            AngularTemplatesEx3327(
              id: 3327,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3328)
            AngularTemplatesEx3328(
              id: 3328,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3329)
            AngularTemplatesEx3329(
              id: 3329,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
