import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4495.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4496.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4497.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4498.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4499.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4500.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4501.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4502.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4503.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4504.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4505.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4506.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4507.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4508.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTwig/Ex/symfonyTwigEx4509.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyTwigExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyTwigExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyTwigExMain> createState() => _SymfonyTwigExMainState();
}

class _SymfonyTwigExMainState extends State<SymfonyTwigExMain> {
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

          if (widget.id == 4495)
            SymfonyTwigEx4495(
              id: 4495,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4496)
            SymfonyTwigEx4496(
              id: 4496,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4497)
            SymfonyTwigEx4497(
              id: 4497,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4498)
            SymfonyTwigEx4498(
              id: 4498,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4499)
            SymfonyTwigEx4499(
              id: 4499,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4500)
            SymfonyTwigEx4500(
              id: 4500,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4501)
            SymfonyTwigEx4501(
              id: 4501,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4502)
            SymfonyTwigEx4502(
              id: 4502,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4503)
            SymfonyTwigEx4503(
              id: 4503,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4504)
            SymfonyTwigEx4504(
              id: 4504,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4505)
            SymfonyTwigEx4505(
              id: 4505,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4506)
            SymfonyTwigEx4506(
              id: 4506,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4507)
            SymfonyTwigEx4507(
              id: 4507,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4508)
            SymfonyTwigEx4508(
              id: 4508,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4509)
            SymfonyTwigEx4509(
              id: 4509,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
