import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4465.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4466.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4467.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4468.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4469.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4470.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4471.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4472.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4473.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4474.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4475.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4476.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4477.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4478.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyRouting/Ex/symfonyRoutingEx4479.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyRoutingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyRoutingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyRoutingExMain> createState() => _SymfonyRoutingExMainState();
}

class _SymfonyRoutingExMainState extends State<SymfonyRoutingExMain> {
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

          if (widget.id == 4465)
            SymfonyRoutingEx4465(
              id: 4465,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4466)
            SymfonyRoutingEx4466(
              id: 4466,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4467)
            SymfonyRoutingEx4467(
              id: 4467,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4468)
            SymfonyRoutingEx4468(
              id: 4468,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4469)
            SymfonyRoutingEx4469(
              id: 4469,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4470)
            SymfonyRoutingEx4470(
              id: 4470,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4471)
            SymfonyRoutingEx4471(
              id: 4471,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4472)
            SymfonyRoutingEx4472(
              id: 4472,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4473)
            SymfonyRoutingEx4473(
              id: 4473,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4474)
            SymfonyRoutingEx4474(
              id: 4474,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4475)
            SymfonyRoutingEx4475(
              id: 4475,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4476)
            SymfonyRoutingEx4476(
              id: 4476,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4477)
            SymfonyRoutingEx4477(
              id: 4477,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4478)
            SymfonyRoutingEx4478(
              id: 4478,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4479)
            SymfonyRoutingEx4479(
              id: 4479,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
