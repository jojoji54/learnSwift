import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4615.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4616.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4617.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4618.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4619.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4620.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4621.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4622.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4623.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4624.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4625.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4626.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4627.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4628.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyEvents/Ex/symfonyEventsEx4629.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyEventsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyEventsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyEventsExMain> createState() => _SymfonyEventsExMainState();
}

class _SymfonyEventsExMainState extends State<SymfonyEventsExMain> {
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

          if (widget.id == 4615)
            SymfonyEventsEx4615(
              id: 4615,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4616)
            SymfonyEventsEx4616(
              id: 4616,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4617)
            SymfonyEventsEx4617(
              id: 4617,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4618)
            SymfonyEventsEx4618(
              id: 4618,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4619)
            SymfonyEventsEx4619(
              id: 4619,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4620)
            SymfonyEventsEx4620(
              id: 4620,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4621)
            SymfonyEventsEx4621(
              id: 4621,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4622)
            SymfonyEventsEx4622(
              id: 4622,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4623)
            SymfonyEventsEx4623(
              id: 4623,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4624)
            SymfonyEventsEx4624(
              id: 4624,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4625)
            SymfonyEventsEx4625(
              id: 4625,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4626)
            SymfonyEventsEx4626(
              id: 4626,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4627)
            SymfonyEventsEx4627(
              id: 4627,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4628)
            SymfonyEventsEx4628(
              id: 4628,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4629)
            SymfonyEventsEx4629(
              id: 4629,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
