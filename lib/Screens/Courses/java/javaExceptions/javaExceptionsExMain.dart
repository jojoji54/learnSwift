import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaExceptionsEx650.dart';
import 'Ex/javaExceptionsEx651.dart';
import 'Ex/javaExceptionsEx652.dart';
import 'Ex/javaExceptionsEx653.dart';
import 'Ex/javaExceptionsEx654.dart';
import 'Ex/javaExceptionsEx655.dart';
import 'Ex/javaExceptionsEx656.dart';
import 'Ex/javaExceptionsEx657.dart';
import 'Ex/javaExceptionsEx658.dart';
import 'Ex/javaExceptionsEx659.dart';
import 'Ex/javaExceptionsEx660.dart';
import 'Ex/javaExceptionsEx661.dart';
import 'Ex/javaExceptionsEx662.dart';
import 'Ex/javaExceptionsEx663.dart';
import 'Ex/javaExceptionsEx664.dart';

class JavaExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaExceptionsExMain> createState() => _JavaExceptionsExMainState();
}

class _JavaExceptionsExMainState extends State<JavaExceptionsExMain> {
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
          if (widget.id == 650)
            JavaExceptionsEx650(
              id: 650,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 651)
            JavaExceptionsEx651(
              id: 651,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 652)
            JavaExceptionsEx652(
              id: 652,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 653)
            JavaExceptionsEx653(
              id: 653,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 654)
            JavaExceptionsEx654(
              id: 654,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 655)
            JavaExceptionsEx655(
              id: 655,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 656)
            JavaExceptionsEx656(
              id: 656,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 657)
            JavaExceptionsEx657(
              id: 657,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 658)
            JavaExceptionsEx658(
              id: 658,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 659)
            JavaExceptionsEx659(
              id: 659,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 660)
            JavaExceptionsEx660(
              id: 660,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 661)
            JavaExceptionsEx661(
              id: 661,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 662)
            JavaExceptionsEx662(
              id: 662,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 663)
            JavaExceptionsEx663(
              id: 663,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 664)
            JavaExceptionsEx664(
              id: 664,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
