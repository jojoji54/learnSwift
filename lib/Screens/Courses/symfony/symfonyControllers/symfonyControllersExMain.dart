import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4480.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4481.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4482.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4483.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4484.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4485.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4486.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4487.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4488.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4489.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4490.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4491.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4492.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4493.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyControllers/Ex/symfonyControllersEx4494.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyControllersExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyControllersExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyControllersExMain> createState() => _SymfonyControllersExMainState();
}

class _SymfonyControllersExMainState extends State<SymfonyControllersExMain> {
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

          if (widget.id == 4480)
            SymfonyControllersEx4480(
              id: 4480,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4481)
            SymfonyControllersEx4481(
              id: 4481,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4482)
            SymfonyControllersEx4482(
              id: 4482,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4483)
            SymfonyControllersEx4483(
              id: 4483,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4484)
            SymfonyControllersEx4484(
              id: 4484,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4485)
            SymfonyControllersEx4485(
              id: 4485,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4486)
            SymfonyControllersEx4486(
              id: 4486,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4487)
            SymfonyControllersEx4487(
              id: 4487,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4488)
            SymfonyControllersEx4488(
              id: 4488,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4489)
            SymfonyControllersEx4489(
              id: 4489,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4490)
            SymfonyControllersEx4490(
              id: 4490,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4491)
            SymfonyControllersEx4491(
              id: 4491,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4492)
            SymfonyControllersEx4492(
              id: 4492,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4493)
            SymfonyControllersEx4493(
              id: 4493,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4494)
            SymfonyControllersEx4494(
              id: 4494,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
