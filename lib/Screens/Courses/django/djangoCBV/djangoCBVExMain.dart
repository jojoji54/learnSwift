import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4065.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4066.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4067.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4068.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4069.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4070.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4071.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4072.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4073.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4074.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4075.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4076.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4077.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4078.dart';
import 'package:learnswift/Screens/Courses/django/djangoCBV/Ex/djangoCBVEx4079.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoCBVExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoCBVExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoCBVExMain> createState() => _DjangoCBVExMainState();
}

class _DjangoCBVExMainState extends State<DjangoCBVExMain> {
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

          if (widget.id == 4065)
            DjangoCBVEx4065(
              id: 4065,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4066)
            DjangoCBVEx4066(
              id: 4066,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4067)
            DjangoCBVEx4067(
              id: 4067,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4068)
            DjangoCBVEx4068(
              id: 4068,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4069)
            DjangoCBVEx4069(
              id: 4069,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4070)
            DjangoCBVEx4070(
              id: 4070,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4071)
            DjangoCBVEx4071(
              id: 4071,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4072)
            DjangoCBVEx4072(
              id: 4072,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4073)
            DjangoCBVEx4073(
              id: 4073,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4074)
            DjangoCBVEx4074(
              id: 4074,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4075)
            DjangoCBVEx4075(
              id: 4075,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4076)
            DjangoCBVEx4076(
              id: 4076,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4077)
            DjangoCBVEx4077(
              id: 4077,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4078)
            DjangoCBVEx4078(
              id: 4078,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4079)
            DjangoCBVEx4079(
              id: 4079,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
