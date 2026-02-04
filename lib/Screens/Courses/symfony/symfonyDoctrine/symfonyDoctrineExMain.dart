import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4525.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4526.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4527.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4528.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4529.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4530.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4531.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4532.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4533.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4534.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4535.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4536.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4537.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4538.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyDoctrine/Ex/symfonyDoctrineEx4539.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyDoctrineExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyDoctrineExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyDoctrineExMain> createState() => _SymfonyDoctrineExMainState();
}

class _SymfonyDoctrineExMainState extends State<SymfonyDoctrineExMain> {
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

          if (widget.id == 4525)
            SymfonyDoctrineEx4525(
              id: 4525,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4526)
            SymfonyDoctrineEx4526(
              id: 4526,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4527)
            SymfonyDoctrineEx4527(
              id: 4527,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4528)
            SymfonyDoctrineEx4528(
              id: 4528,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4529)
            SymfonyDoctrineEx4529(
              id: 4529,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4530)
            SymfonyDoctrineEx4530(
              id: 4530,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4531)
            SymfonyDoctrineEx4531(
              id: 4531,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4532)
            SymfonyDoctrineEx4532(
              id: 4532,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4533)
            SymfonyDoctrineEx4533(
              id: 4533,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4534)
            SymfonyDoctrineEx4534(
              id: 4534,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4535)
            SymfonyDoctrineEx4535(
              id: 4535,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4536)
            SymfonyDoctrineEx4536(
              id: 4536,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4537)
            SymfonyDoctrineEx4537(
              id: 4537,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4538)
            SymfonyDoctrineEx4538(
              id: 4538,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4539)
            SymfonyDoctrineEx4539(
              id: 4539,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
