import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4540.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4541.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4542.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4543.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4544.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4545.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4546.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4547.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4548.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4549.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4550.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4551.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4552.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4553.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrineQueries/Ex/symfonyDoctrineQueriesEx4554.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyDoctrineQueriesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyDoctrineQueriesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyDoctrineQueriesExMain> createState() => _SymfonyDoctrineQueriesExMainState();
}

class _SymfonyDoctrineQueriesExMainState extends State<SymfonyDoctrineQueriesExMain> {
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

          if (widget.id == 4540)
            SymfonyDoctrineQueriesEx4540(
              id: 4540,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4541)
            SymfonyDoctrineQueriesEx4541(
              id: 4541,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4542)
            SymfonyDoctrineQueriesEx4542(
              id: 4542,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4543)
            SymfonyDoctrineQueriesEx4543(
              id: 4543,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4544)
            SymfonyDoctrineQueriesEx4544(
              id: 4544,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4545)
            SymfonyDoctrineQueriesEx4545(
              id: 4545,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4546)
            SymfonyDoctrineQueriesEx4546(
              id: 4546,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4547)
            SymfonyDoctrineQueriesEx4547(
              id: 4547,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4548)
            SymfonyDoctrineQueriesEx4548(
              id: 4548,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4549)
            SymfonyDoctrineQueriesEx4549(
              id: 4549,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4550)
            SymfonyDoctrineQueriesEx4550(
              id: 4550,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4551)
            SymfonyDoctrineQueriesEx4551(
              id: 4551,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4552)
            SymfonyDoctrineQueriesEx4552(
              id: 4552,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4553)
            SymfonyDoctrineQueriesEx4553(
              id: 4553,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4554)
            SymfonyDoctrineQueriesEx4554(
              id: 4554,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
