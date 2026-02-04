import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4020.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4021.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4022.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4023.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4024.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4025.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4026.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4027.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4028.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4029.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4030.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4031.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4032.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4033.dart';
import 'package:learnswift/Screens/Courses/django/djangoAdmin/Ex/djangoAdminEx4034.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoAdminExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoAdminExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoAdminExMain> createState() => _DjangoAdminExMainState();
}

class _DjangoAdminExMainState extends State<DjangoAdminExMain> {
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

          if (widget.id == 4020)
            DjangoAdminEx4020(
              id: 4020,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4021)
            DjangoAdminEx4021(
              id: 4021,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4022)
            DjangoAdminEx4022(
              id: 4022,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4023)
            DjangoAdminEx4023(
              id: 4023,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4024)
            DjangoAdminEx4024(
              id: 4024,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4025)
            DjangoAdminEx4025(
              id: 4025,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4026)
            DjangoAdminEx4026(
              id: 4026,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4027)
            DjangoAdminEx4027(
              id: 4027,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4028)
            DjangoAdminEx4028(
              id: 4028,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4029)
            DjangoAdminEx4029(
              id: 4029,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4030)
            DjangoAdminEx4030(
              id: 4030,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4031)
            DjangoAdminEx4031(
              id: 4031,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4032)
            DjangoAdminEx4032(
              id: 4032,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4033)
            DjangoAdminEx4033(
              id: 4033,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4034)
            DjangoAdminEx4034(
              id: 4034,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
