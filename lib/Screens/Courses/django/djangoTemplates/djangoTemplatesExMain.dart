import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3945.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3946.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3947.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3948.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3949.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3950.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3951.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3952.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3953.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3954.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3955.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3956.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3957.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3958.dart';
import 'package:learnswift/Screens/Courses/django/djangoTemplates/Ex/djangoTemplatesEx3959.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoTemplatesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoTemplatesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoTemplatesExMain> createState() => _DjangoTemplatesExMainState();
}

class _DjangoTemplatesExMainState extends State<DjangoTemplatesExMain> {
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

          if (widget.id == 3945)
            DjangoTemplatesEx3945(
              id: 3945,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3946)
            DjangoTemplatesEx3946(
              id: 3946,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3947)
            DjangoTemplatesEx3947(
              id: 3947,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3948)
            DjangoTemplatesEx3948(
              id: 3948,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3949)
            DjangoTemplatesEx3949(
              id: 3949,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3950)
            DjangoTemplatesEx3950(
              id: 3950,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3951)
            DjangoTemplatesEx3951(
              id: 3951,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3952)
            DjangoTemplatesEx3952(
              id: 3952,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3953)
            DjangoTemplatesEx3953(
              id: 3953,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3954)
            DjangoTemplatesEx3954(
              id: 3954,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3955)
            DjangoTemplatesEx3955(
              id: 3955,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3956)
            DjangoTemplatesEx3956(
              id: 3956,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3957)
            DjangoTemplatesEx3957(
              id: 3957,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3958)
            DjangoTemplatesEx3958(
              id: 3958,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3959)
            DjangoTemplatesEx3959(
              id: 3959,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
