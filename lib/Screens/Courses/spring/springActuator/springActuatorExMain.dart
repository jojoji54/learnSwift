import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4380.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4381.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4382.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4383.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4384.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4385.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4386.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4387.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4388.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4389.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4390.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4391.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4392.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4393.dart';
import 'package:learnswift/Screens/Courses/spring/springActuator/Ex/springActuatorEx4394.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringActuatorExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringActuatorExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringActuatorExMain> createState() => _SpringActuatorExMainState();
}

class _SpringActuatorExMainState extends State<SpringActuatorExMain> {
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

          if (widget.id == 4380)
            SpringActuatorEx4380(
              id: 4380,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4381)
            SpringActuatorEx4381(
              id: 4381,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4382)
            SpringActuatorEx4382(
              id: 4382,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4383)
            SpringActuatorEx4383(
              id: 4383,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4384)
            SpringActuatorEx4384(
              id: 4384,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4385)
            SpringActuatorEx4385(
              id: 4385,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4386)
            SpringActuatorEx4386(
              id: 4386,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4387)
            SpringActuatorEx4387(
              id: 4387,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4388)
            SpringActuatorEx4388(
              id: 4388,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4389)
            SpringActuatorEx4389(
              id: 4389,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4390)
            SpringActuatorEx4390(
              id: 4390,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4391)
            SpringActuatorEx4391(
              id: 4391,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4392)
            SpringActuatorEx4392(
              id: 4392,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4393)
            SpringActuatorEx4393(
              id: 4393,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4394)
            SpringActuatorEx4394(
              id: 4394,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
