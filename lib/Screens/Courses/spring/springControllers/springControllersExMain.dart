import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4245.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4246.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4247.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4248.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4249.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4250.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4251.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4252.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4253.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4254.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4255.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4256.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4257.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4258.dart';
import 'package:learnswift/Screens/Courses/spring/springControllers/Ex/springControllersEx4259.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringControllersExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringControllersExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringControllersExMain> createState() => _SpringControllersExMainState();
}

class _SpringControllersExMainState extends State<SpringControllersExMain> {
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

          if (widget.id == 4245)
            SpringControllersEx4245(
              id: 4245,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4246)
            SpringControllersEx4246(
              id: 4246,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4247)
            SpringControllersEx4247(
              id: 4247,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4248)
            SpringControllersEx4248(
              id: 4248,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4249)
            SpringControllersEx4249(
              id: 4249,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4250)
            SpringControllersEx4250(
              id: 4250,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4251)
            SpringControllersEx4251(
              id: 4251,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4252)
            SpringControllersEx4252(
              id: 4252,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4253)
            SpringControllersEx4253(
              id: 4253,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4254)
            SpringControllersEx4254(
              id: 4254,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4255)
            SpringControllersEx4255(
              id: 4255,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4256)
            SpringControllersEx4256(
              id: 4256,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4257)
            SpringControllersEx4257(
              id: 4257,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4258)
            SpringControllersEx4258(
              id: 4258,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4259)
            SpringControllersEx4259(
              id: 4259,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
