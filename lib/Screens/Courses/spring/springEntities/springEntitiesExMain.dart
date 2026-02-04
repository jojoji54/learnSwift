import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4290.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4291.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4292.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4293.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4294.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4295.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4296.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4297.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4298.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4299.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4300.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4301.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4302.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4303.dart';
import 'package:learnswift/Screens/Courses/spring/springEntities/Ex/springEntitiesEx4304.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringEntitiesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringEntitiesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringEntitiesExMain> createState() => _SpringEntitiesExMainState();
}

class _SpringEntitiesExMainState extends State<SpringEntitiesExMain> {
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

          if (widget.id == 4290)
            SpringEntitiesEx4290(
              id: 4290,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4291)
            SpringEntitiesEx4291(
              id: 4291,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4292)
            SpringEntitiesEx4292(
              id: 4292,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4293)
            SpringEntitiesEx4293(
              id: 4293,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4294)
            SpringEntitiesEx4294(
              id: 4294,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4295)
            SpringEntitiesEx4295(
              id: 4295,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4296)
            SpringEntitiesEx4296(
              id: 4296,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4297)
            SpringEntitiesEx4297(
              id: 4297,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4298)
            SpringEntitiesEx4298(
              id: 4298,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4299)
            SpringEntitiesEx4299(
              id: 4299,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4300)
            SpringEntitiesEx4300(
              id: 4300,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4301)
            SpringEntitiesEx4301(
              id: 4301,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4302)
            SpringEntitiesEx4302(
              id: 4302,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4303)
            SpringEntitiesEx4303(
              id: 4303,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4304)
            SpringEntitiesEx4304(
              id: 4304,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
