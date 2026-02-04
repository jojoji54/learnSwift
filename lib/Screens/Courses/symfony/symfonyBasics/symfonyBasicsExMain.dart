import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4450.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4451.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4452.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4453.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4454.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4455.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4456.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4457.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4458.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4459.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4460.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4461.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4462.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4463.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyBasics/Ex/symfonyBasicsEx4464.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyBasicsExMain> createState() => _SymfonyBasicsExMainState();
}

class _SymfonyBasicsExMainState extends State<SymfonyBasicsExMain> {
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

          if (widget.id == 4450)
            SymfonyBasicsEx4450(
              id: 4450,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4451)
            SymfonyBasicsEx4451(
              id: 4451,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4452)
            SymfonyBasicsEx4452(
              id: 4452,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4453)
            SymfonyBasicsEx4453(
              id: 4453,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4454)
            SymfonyBasicsEx4454(
              id: 4454,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4455)
            SymfonyBasicsEx4455(
              id: 4455,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4456)
            SymfonyBasicsEx4456(
              id: 4456,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4457)
            SymfonyBasicsEx4457(
              id: 4457,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4458)
            SymfonyBasicsEx4458(
              id: 4458,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4459)
            SymfonyBasicsEx4459(
              id: 4459,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4460)
            SymfonyBasicsEx4460(
              id: 4460,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4461)
            SymfonyBasicsEx4461(
              id: 4461,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4462)
            SymfonyBasicsEx4462(
              id: 4462,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4463)
            SymfonyBasicsEx4463(
              id: 4463,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4464)
            SymfonyBasicsEx4464(
              id: 4464,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
