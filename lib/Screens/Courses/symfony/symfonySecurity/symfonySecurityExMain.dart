import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4600.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4601.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4602.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4603.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4604.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4605.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4606.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4607.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4608.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4609.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4610.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4611.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4612.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4613.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonySecurity/Ex/symfonySecurityEx4614.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonySecurityExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonySecurityExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonySecurityExMain> createState() => _SymfonySecurityExMainState();
}

class _SymfonySecurityExMainState extends State<SymfonySecurityExMain> {
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

          if (widget.id == 4600)
            SymfonySecurityEx4600(
              id: 4600,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4601)
            SymfonySecurityEx4601(
              id: 4601,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4602)
            SymfonySecurityEx4602(
              id: 4602,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4603)
            SymfonySecurityEx4603(
              id: 4603,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4604)
            SymfonySecurityEx4604(
              id: 4604,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4605)
            SymfonySecurityEx4605(
              id: 4605,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4606)
            SymfonySecurityEx4606(
              id: 4606,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4607)
            SymfonySecurityEx4607(
              id: 4607,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4608)
            SymfonySecurityEx4608(
              id: 4608,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4609)
            SymfonySecurityEx4609(
              id: 4609,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4610)
            SymfonySecurityEx4610(
              id: 4610,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4611)
            SymfonySecurityEx4611(
              id: 4611,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4612)
            SymfonySecurityEx4612(
              id: 4612,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4613)
            SymfonySecurityEx4613(
              id: 4613,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4614)
            SymfonySecurityEx4614(
              id: 4614,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
