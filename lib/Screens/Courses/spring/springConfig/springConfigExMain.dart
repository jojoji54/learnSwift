import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4215.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4216.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4217.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4218.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4219.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4220.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4221.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4222.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4223.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4224.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4225.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4226.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4227.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4228.dart';
import 'package:learnswift/Screens/Courses/spring/springConfig/Ex/springConfigEx4229.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringConfigExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringConfigExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringConfigExMain> createState() => _SpringConfigExMainState();
}

class _SpringConfigExMainState extends State<SpringConfigExMain> {
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

          if (widget.id == 4215)
            SpringConfigEx4215(
              id: 4215,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4216)
            SpringConfigEx4216(
              id: 4216,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4217)
            SpringConfigEx4217(
              id: 4217,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4218)
            SpringConfigEx4218(
              id: 4218,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4219)
            SpringConfigEx4219(
              id: 4219,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4220)
            SpringConfigEx4220(
              id: 4220,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4221)
            SpringConfigEx4221(
              id: 4221,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4222)
            SpringConfigEx4222(
              id: 4222,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4223)
            SpringConfigEx4223(
              id: 4223,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4224)
            SpringConfigEx4224(
              id: 4224,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4225)
            SpringConfigEx4225(
              id: 4225,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4226)
            SpringConfigEx4226(
              id: 4226,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4227)
            SpringConfigEx4227(
              id: 4227,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4228)
            SpringConfigEx4228(
              id: 4228,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4229)
            SpringConfigEx4229(
              id: 4229,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
