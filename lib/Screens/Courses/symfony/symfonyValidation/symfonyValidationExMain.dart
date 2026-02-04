import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4555.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4556.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4557.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4558.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4559.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4560.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4561.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4562.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4563.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4564.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4565.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4566.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4567.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4568.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyValidation/Ex/symfonyValidationEx4569.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyValidationExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyValidationExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyValidationExMain> createState() => _SymfonyValidationExMainState();
}

class _SymfonyValidationExMainState extends State<SymfonyValidationExMain> {
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

          if (widget.id == 4555)
            SymfonyValidationEx4555(
              id: 4555,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4556)
            SymfonyValidationEx4556(
              id: 4556,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4557)
            SymfonyValidationEx4557(
              id: 4557,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4558)
            SymfonyValidationEx4558(
              id: 4558,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4559)
            SymfonyValidationEx4559(
              id: 4559,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4560)
            SymfonyValidationEx4560(
              id: 4560,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4561)
            SymfonyValidationEx4561(
              id: 4561,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4562)
            SymfonyValidationEx4562(
              id: 4562,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4563)
            SymfonyValidationEx4563(
              id: 4563,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4564)
            SymfonyValidationEx4564(
              id: 4564,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4565)
            SymfonyValidationEx4565(
              id: 4565,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4566)
            SymfonyValidationEx4566(
              id: 4566,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4567)
            SymfonyValidationEx4567(
              id: 4567,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4568)
            SymfonyValidationEx4568(
              id: 4568,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4569)
            SymfonyValidationEx4569(
              id: 4569,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
