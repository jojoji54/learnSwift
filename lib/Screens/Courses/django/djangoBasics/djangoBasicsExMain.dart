import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3900.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3901.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3902.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3903.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3904.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3905.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3906.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3907.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3908.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3909.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3910.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3911.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3912.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3913.dart';
import 'package:learnswift/Screens/Courses/django/djangoBasics/Ex/djangoBasicsEx3914.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoBasicsExMain> createState() => _DjangoBasicsExMainState();
}

class _DjangoBasicsExMainState extends State<DjangoBasicsExMain> {
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

          if (widget.id == 3900)
            DjangoBasicsEx3900(
              id: 3900,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3901)
            DjangoBasicsEx3901(
              id: 3901,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3902)
            DjangoBasicsEx3902(
              id: 3902,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3903)
            DjangoBasicsEx3903(
              id: 3903,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3904)
            DjangoBasicsEx3904(
              id: 3904,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3905)
            DjangoBasicsEx3905(
              id: 3905,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3906)
            DjangoBasicsEx3906(
              id: 3906,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3907)
            DjangoBasicsEx3907(
              id: 3907,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3908)
            DjangoBasicsEx3908(
              id: 3908,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3909)
            DjangoBasicsEx3909(
              id: 3909,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3910)
            DjangoBasicsEx3910(
              id: 3910,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3911)
            DjangoBasicsEx3911(
              id: 3911,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3912)
            DjangoBasicsEx3912(
              id: 3912,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3913)
            DjangoBasicsEx3913(
              id: 3913,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3914)
            DjangoBasicsEx3914(
              id: 3914,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
