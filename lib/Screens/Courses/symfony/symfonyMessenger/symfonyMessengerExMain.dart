import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4630.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4631.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4632.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4633.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4634.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4635.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4636.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4637.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4638.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4639.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4640.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4641.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4642.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4643.dart';
import 'package:learnswift/Screens/Courses/symfony/symfonyMessenger/Ex/symfonyMessengerEx4644.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SymfonyMessengerExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SymfonyMessengerExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SymfonyMessengerExMain> createState() => _SymfonyMessengerExMainState();
}

class _SymfonyMessengerExMainState extends State<SymfonyMessengerExMain> {
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

          if (widget.id == 4630)
            SymfonyMessengerEx4630(
              id: 4630,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4631)
            SymfonyMessengerEx4631(
              id: 4631,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4632)
            SymfonyMessengerEx4632(
              id: 4632,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4633)
            SymfonyMessengerEx4633(
              id: 4633,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4634)
            SymfonyMessengerEx4634(
              id: 4634,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4635)
            SymfonyMessengerEx4635(
              id: 4635,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4636)
            SymfonyMessengerEx4636(
              id: 4636,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4637)
            SymfonyMessengerEx4637(
              id: 4637,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4638)
            SymfonyMessengerEx4638(
              id: 4638,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4639)
            SymfonyMessengerEx4639(
              id: 4639,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4640)
            SymfonyMessengerEx4640(
              id: 4640,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4641)
            SymfonyMessengerEx4641(
              id: 4641,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4642)
            SymfonyMessengerEx4642(
              id: 4642,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4643)
            SymfonyMessengerEx4643(
              id: 4643,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4644)
            SymfonyMessengerEx4644(
              id: 4644,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
