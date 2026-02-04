import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4095.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4096.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4097.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4098.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4099.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4100.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4101.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4102.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4103.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4104.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4105.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4106.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4107.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4108.dart';
import 'package:learnswift/Screens/Courses/django/djangoTesting/Ex/djangoTestingEx4109.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoTestingExMain> createState() => _DjangoTestingExMainState();
}

class _DjangoTestingExMainState extends State<DjangoTestingExMain> {
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

          if (widget.id == 4095)
            DjangoTestingEx4095(
              id: 4095,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4096)
            DjangoTestingEx4096(
              id: 4096,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4097)
            DjangoTestingEx4097(
              id: 4097,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4098)
            DjangoTestingEx4098(
              id: 4098,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4099)
            DjangoTestingEx4099(
              id: 4099,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4100)
            DjangoTestingEx4100(
              id: 4100,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4101)
            DjangoTestingEx4101(
              id: 4101,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4102)
            DjangoTestingEx4102(
              id: 4102,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4103)
            DjangoTestingEx4103(
              id: 4103,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4104)
            DjangoTestingEx4104(
              id: 4104,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4105)
            DjangoTestingEx4105(
              id: 4105,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4106)
            DjangoTestingEx4106(
              id: 4106,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4107)
            DjangoTestingEx4107(
              id: 4107,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4108)
            DjangoTestingEx4108(
              id: 4108,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4109)
            DjangoTestingEx4109(
              id: 4109,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
