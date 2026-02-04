import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4585.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4586.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4587.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4588.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4589.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4590.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4591.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4592.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4593.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4594.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4595.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4596.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4597.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4598.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyConfig/Ex/symfonyConfigEx4599.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyConfigExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyConfigExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyConfigExMain> createState() => _SymfonyConfigExMainState();
}

class _SymfonyConfigExMainState extends State<SymfonyConfigExMain> {
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

          if (widget.id == 4585)
            SymfonyConfigEx4585(
              id: 4585,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4586)
            SymfonyConfigEx4586(
              id: 4586,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4587)
            SymfonyConfigEx4587(
              id: 4587,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4588)
            SymfonyConfigEx4588(
              id: 4588,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4589)
            SymfonyConfigEx4589(
              id: 4589,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4590)
            SymfonyConfigEx4590(
              id: 4590,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4591)
            SymfonyConfigEx4591(
              id: 4591,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4592)
            SymfonyConfigEx4592(
              id: 4592,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4593)
            SymfonyConfigEx4593(
              id: 4593,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4594)
            SymfonyConfigEx4594(
              id: 4594,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4595)
            SymfonyConfigEx4595(
              id: 4595,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4596)
            SymfonyConfigEx4596(
              id: 4596,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4597)
            SymfonyConfigEx4597(
              id: 4597,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4598)
            SymfonyConfigEx4598(
              id: 4598,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4599)
            SymfonyConfigEx4599(
              id: 4599,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
