import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4570.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4571.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4572.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4573.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4574.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4575.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4576.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4577.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4578.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4579.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4580.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4581.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4582.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4583.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyServices/Ex/symfonyServicesEx4584.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyServicesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyServicesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyServicesExMain> createState() => _SymfonyServicesExMainState();
}

class _SymfonyServicesExMainState extends State<SymfonyServicesExMain> {
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

          if (widget.id == 4570)
            SymfonyServicesEx4570(
              id: 4570,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4571)
            SymfonyServicesEx4571(
              id: 4571,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4572)
            SymfonyServicesEx4572(
              id: 4572,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4573)
            SymfonyServicesEx4573(
              id: 4573,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4574)
            SymfonyServicesEx4574(
              id: 4574,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4575)
            SymfonyServicesEx4575(
              id: 4575,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4576)
            SymfonyServicesEx4576(
              id: 4576,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4577)
            SymfonyServicesEx4577(
              id: 4577,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4578)
            SymfonyServicesEx4578(
              id: 4578,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4579)
            SymfonyServicesEx4579(
              id: 4579,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4580)
            SymfonyServicesEx4580(
              id: 4580,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4581)
            SymfonyServicesEx4581(
              id: 4581,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4582)
            SymfonyServicesEx4582(
              id: 4582,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4583)
            SymfonyServicesEx4583(
              id: 4583,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4584)
            SymfonyServicesEx4584(
              id: 4584,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
