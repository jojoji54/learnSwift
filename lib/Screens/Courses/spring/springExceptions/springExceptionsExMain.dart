import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4350.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4351.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4352.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4353.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4354.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4355.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4356.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4357.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4358.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4359.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4360.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4361.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4362.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4363.dart';
import 'package:learnswift/Screens/Courses/spring/springExceptions/Ex/springExceptionsEx4364.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringExceptionsExMain> createState() => _SpringExceptionsExMainState();
}

class _SpringExceptionsExMainState extends State<SpringExceptionsExMain> {
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

          if (widget.id == 4350)
            SpringExceptionsEx4350(
              id: 4350,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4351)
            SpringExceptionsEx4351(
              id: 4351,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4352)
            SpringExceptionsEx4352(
              id: 4352,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4353)
            SpringExceptionsEx4353(
              id: 4353,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4354)
            SpringExceptionsEx4354(
              id: 4354,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4355)
            SpringExceptionsEx4355(
              id: 4355,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4356)
            SpringExceptionsEx4356(
              id: 4356,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4357)
            SpringExceptionsEx4357(
              id: 4357,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4358)
            SpringExceptionsEx4358(
              id: 4358,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4359)
            SpringExceptionsEx4359(
              id: 4359,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4360)
            SpringExceptionsEx4360(
              id: 4360,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4361)
            SpringExceptionsEx4361(
              id: 4361,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4362)
            SpringExceptionsEx4362(
              id: 4362,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4363)
            SpringExceptionsEx4363(
              id: 4363,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4364)
            SpringExceptionsEx4364(
              id: 4364,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
