import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4305.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4306.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4307.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4308.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4309.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4310.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4311.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4312.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4313.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4314.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4315.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4316.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4317.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4318.dart';
import 'package:learnswift/Screens/Courses/spring/springRepositories/Ex/springRepositoriesEx4319.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringRepositoriesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringRepositoriesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringRepositoriesExMain> createState() => _SpringRepositoriesExMainState();
}

class _SpringRepositoriesExMainState extends State<SpringRepositoriesExMain> {
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

          if (widget.id == 4305)
            SpringRepositoriesEx4305(
              id: 4305,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4306)
            SpringRepositoriesEx4306(
              id: 4306,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4307)
            SpringRepositoriesEx4307(
              id: 4307,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4308)
            SpringRepositoriesEx4308(
              id: 4308,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4309)
            SpringRepositoriesEx4309(
              id: 4309,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4310)
            SpringRepositoriesEx4310(
              id: 4310,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4311)
            SpringRepositoriesEx4311(
              id: 4311,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4312)
            SpringRepositoriesEx4312(
              id: 4312,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4313)
            SpringRepositoriesEx4313(
              id: 4313,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4314)
            SpringRepositoriesEx4314(
              id: 4314,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4315)
            SpringRepositoriesEx4315(
              id: 4315,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4316)
            SpringRepositoriesEx4316(
              id: 4316,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4317)
            SpringRepositoriesEx4317(
              id: 4317,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4318)
            SpringRepositoriesEx4318(
              id: 4318,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4319)
            SpringRepositoriesEx4319(
              id: 4319,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
