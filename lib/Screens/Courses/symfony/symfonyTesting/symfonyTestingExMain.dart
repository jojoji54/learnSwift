import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4660.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4661.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4662.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4663.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4664.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4665.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4666.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4667.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4668.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4669.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4670.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4671.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4672.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4673.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyTesting/Ex/symfonyTestingEx4674.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyTestingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyTestingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyTestingExMain> createState() => _SymfonyTestingExMainState();
}

class _SymfonyTestingExMainState extends State<SymfonyTestingExMain> {
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

          if (widget.id == 4660)
            SymfonyTestingEx4660(
              id: 4660,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4661)
            SymfonyTestingEx4661(
              id: 4661,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4662)
            SymfonyTestingEx4662(
              id: 4662,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4663)
            SymfonyTestingEx4663(
              id: 4663,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4664)
            SymfonyTestingEx4664(
              id: 4664,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4665)
            SymfonyTestingEx4665(
              id: 4665,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4666)
            SymfonyTestingEx4666(
              id: 4666,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4667)
            SymfonyTestingEx4667(
              id: 4667,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4668)
            SymfonyTestingEx4668(
              id: 4668,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4669)
            SymfonyTestingEx4669(
              id: 4669,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4670)
            SymfonyTestingEx4670(
              id: 4670,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4671)
            SymfonyTestingEx4671(
              id: 4671,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4672)
            SymfonyTestingEx4672(
              id: 4672,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4673)
            SymfonyTestingEx4673(
              id: 4673,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4674)
            SymfonyTestingEx4674(
              id: 4674,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
