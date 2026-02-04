import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4645.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4646.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4647.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4648.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4649.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4650.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4651.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4652.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4653.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4654.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4655.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4656.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4657.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4658.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConsole/Ex/symfonyConsoleEx4659.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyConsoleExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyConsoleExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyConsoleExMain> createState() => _SymfonyConsoleExMainState();
}

class _SymfonyConsoleExMainState extends State<SymfonyConsoleExMain> {
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

          if (widget.id == 4645)
            SymfonyConsoleEx4645(
              id: 4645,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4646)
            SymfonyConsoleEx4646(
              id: 4646,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4647)
            SymfonyConsoleEx4647(
              id: 4647,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4648)
            SymfonyConsoleEx4648(
              id: 4648,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4649)
            SymfonyConsoleEx4649(
              id: 4649,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4650)
            SymfonyConsoleEx4650(
              id: 4650,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4651)
            SymfonyConsoleEx4651(
              id: 4651,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4652)
            SymfonyConsoleEx4652(
              id: 4652,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4653)
            SymfonyConsoleEx4653(
              id: 4653,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4654)
            SymfonyConsoleEx4654(
              id: 4654,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4655)
            SymfonyConsoleEx4655(
              id: 4655,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4656)
            SymfonyConsoleEx4656(
              id: 4656,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4657)
            SymfonyConsoleEx4657(
              id: 4657,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4658)
            SymfonyConsoleEx4658(
              id: 4658,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4659)
            SymfonyConsoleEx4659(
              id: 4659,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
