import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaLoopsEx575.dart';
import 'Ex/javaLoopsEx576.dart';
import 'Ex/javaLoopsEx577.dart';
import 'Ex/javaLoopsEx578.dart';
import 'Ex/javaLoopsEx579.dart';
import 'Ex/javaLoopsEx580.dart';
import 'Ex/javaLoopsEx581.dart';
import 'Ex/javaLoopsEx582.dart';
import 'Ex/javaLoopsEx583.dart';
import 'Ex/javaLoopsEx584.dart';
import 'Ex/javaLoopsEx585.dart';
import 'Ex/javaLoopsEx586.dart';
import 'Ex/javaLoopsEx587.dart';
import 'Ex/javaLoopsEx588.dart';
import 'Ex/javaLoopsEx589.dart';

class JavaLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaLoopsExMain> createState() => _JavaLoopsExMainState();
}

class _JavaLoopsExMainState extends State<JavaLoopsExMain> {
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
          if (widget.id == 575)
            JavaLoopsEx575(
              id: 575,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 576)
            JavaLoopsEx576(
              id: 576,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 577)
            JavaLoopsEx577(
              id: 577,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 578)
            JavaLoopsEx578(
              id: 578,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 579)
            JavaLoopsEx579(
              id: 579,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 580)
            JavaLoopsEx580(
              id: 580,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 581)
            JavaLoopsEx581(
              id: 581,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 582)
            JavaLoopsEx582(
              id: 582,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 583)
            JavaLoopsEx583(
              id: 583,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 584)
            JavaLoopsEx584(
              id: 584,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 585)
            JavaLoopsEx585(
              id: 585,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 586)
            JavaLoopsEx586(
              id: 586,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 587)
            JavaLoopsEx587(
              id: 587,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 588)
            JavaLoopsEx588(
              id: 588,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 589)
            JavaLoopsEx589(
              id: 589,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
