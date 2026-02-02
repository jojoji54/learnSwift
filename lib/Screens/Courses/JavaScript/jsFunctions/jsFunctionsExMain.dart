import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions420.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions421.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions422.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions423.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions424.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions425.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions426.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions427.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions428.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions429.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions430.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions431.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions432.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions433.dart';
import 'package:learnswift/Screens/Courses/JavaScript/jsFunctions/Ex/jsFunctions434.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class JsFunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsFunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsFunctionsExMain> createState() => _JsFunctionsExMainState();
}

class _JsFunctionsExMainState extends State<JsFunctionsExMain> {
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
          if (widget.id == 420)
            JsFunctionsEx420(
              id: 420,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 421)
            JsFunctionsEx421(
              id: 421,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 422)
            JsFunctionsEx422(
              id: 422,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 423)
            JsFunctionsEx423(
              id: 423,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 424)
            JsFunctionsEx424(
              id: 424,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 425)
            JsFunctionsEx425(
              id: 425,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 426)
            JsFunctionsEx426(
              id: 426,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 427)
            JsFunctionsEx427(
              id: 427,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 428)
            JsFunctionsEx428(
              id: 428,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 429)
            JsFunctionsEx429(
              id: 429,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 430)
            JsFunctionsEx430(
              id: 430,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 431)
            JsFunctionsEx431(
              id: 431,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 432)
            JsFunctionsEx432(
              id: 432,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 433)
            JsFunctionsEx433(
              id: 433,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 434)
            JsFunctionsEx434(
              id: 434,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
