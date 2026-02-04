import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4365.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4366.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4367.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4368.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4369.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4370.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4371.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4372.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4373.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4374.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4375.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4376.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4377.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4378.dart';
import 'package:learnswift/Screens/Courses/spring/springTesting/Ex/springTestingEx4379.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringTestingExMain> createState() => _SpringTestingExMainState();
}

class _SpringTestingExMainState extends State<SpringTestingExMain> {
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

          if (widget.id == 4365)
            SpringTestingEx4365(
              id: 4365,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4366)
            SpringTestingEx4366(
              id: 4366,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4367)
            SpringTestingEx4367(
              id: 4367,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4368)
            SpringTestingEx4368(
              id: 4368,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4369)
            SpringTestingEx4369(
              id: 4369,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4370)
            SpringTestingEx4370(
              id: 4370,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4371)
            SpringTestingEx4371(
              id: 4371,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4372)
            SpringTestingEx4372(
              id: 4372,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4373)
            SpringTestingEx4373(
              id: 4373,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4374)
            SpringTestingEx4374(
              id: 4374,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4375)
            SpringTestingEx4375(
              id: 4375,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4376)
            SpringTestingEx4376(
              id: 4376,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4377)
            SpringTestingEx4377(
              id: 4377,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4378)
            SpringTestingEx4378(
              id: 4378,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4379)
            SpringTestingEx4379(
              id: 4379,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
