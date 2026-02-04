import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4510.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4511.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4512.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4513.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4514.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4515.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4516.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4517.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4518.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4519.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4520.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4521.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4522.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4523.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyForms/Ex/symfonyFormsEx4524.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyFormsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyFormsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyFormsExMain> createState() => _SymfonyFormsExMainState();
}

class _SymfonyFormsExMainState extends State<SymfonyFormsExMain> {
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

          if (widget.id == 4510)
            SymfonyFormsEx4510(
              id: 4510,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4511)
            SymfonyFormsEx4511(
              id: 4511,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4512)
            SymfonyFormsEx4512(
              id: 4512,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4513)
            SymfonyFormsEx4513(
              id: 4513,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4514)
            SymfonyFormsEx4514(
              id: 4514,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4515)
            SymfonyFormsEx4515(
              id: 4515,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4516)
            SymfonyFormsEx4516(
              id: 4516,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4517)
            SymfonyFormsEx4517(
              id: 4517,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4518)
            SymfonyFormsEx4518(
              id: 4518,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4519)
            SymfonyFormsEx4519(
              id: 4519,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4520)
            SymfonyFormsEx4520(
              id: 4520,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4521)
            SymfonyFormsEx4521(
              id: 4521,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4522)
            SymfonyFormsEx4522(
              id: 4522,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4523)
            SymfonyFormsEx4523(
              id: 4523,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4524)
            SymfonyFormsEx4524(
              id: 4524,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
