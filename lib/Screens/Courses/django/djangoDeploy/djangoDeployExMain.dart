import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4110.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4111.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4112.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4113.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4114.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4115.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4116.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4117.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4118.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4119.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4120.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4121.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4122.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4123.dart';
import 'package:learnswift/Screens/Courses/django/djangoDeploy/Ex/djangoDeployEx4124.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoDeployExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoDeployExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoDeployExMain> createState() => _DjangoDeployExMainState();
}

class _DjangoDeployExMainState extends State<DjangoDeployExMain> {
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

          if (widget.id == 4110)
            DjangoDeployEx4110(
              id: 4110,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4111)
            DjangoDeployEx4111(
              id: 4111,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4112)
            DjangoDeployEx4112(
              id: 4112,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4113)
            DjangoDeployEx4113(
              id: 4113,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4114)
            DjangoDeployEx4114(
              id: 4114,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4115)
            DjangoDeployEx4115(
              id: 4115,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4116)
            DjangoDeployEx4116(
              id: 4116,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4117)
            DjangoDeployEx4117(
              id: 4117,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4118)
            DjangoDeployEx4118(
              id: 4118,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4119)
            DjangoDeployEx4119(
              id: 4119,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4120)
            DjangoDeployEx4120(
              id: 4120,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4121)
            DjangoDeployEx4121(
              id: 4121,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4122)
            DjangoDeployEx4122(
              id: 4122,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4123)
            DjangoDeployEx4123(
              id: 4123,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4124)
            DjangoDeployEx4124(
              id: 4124,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
