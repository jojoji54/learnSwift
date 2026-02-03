import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goSlicesEx2190.dart';
import 'Ex/goSlicesEx2191.dart';
import 'Ex/goSlicesEx2192.dart';
import 'Ex/goSlicesEx2193.dart';
import 'Ex/goSlicesEx2194.dart';
import 'Ex/goSlicesEx2195.dart';
import 'Ex/goSlicesEx2196.dart';
import 'Ex/goSlicesEx2197.dart';
import 'Ex/goSlicesEx2198.dart';
import 'Ex/goSlicesEx2199.dart';
import 'Ex/goSlicesEx2200.dart';
import 'Ex/goSlicesEx2201.dart';
import 'Ex/goSlicesEx2202.dart';
import 'Ex/goSlicesEx2203.dart';
import 'Ex/goSlicesEx2204.dart';

class GoSlicesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoSlicesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoSlicesExMain> createState() => _GoSlicesExMainState();
}

class _GoSlicesExMainState extends State<GoSlicesExMain> {
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
          if (widget.id == 2190)
            GoSlicesEx2190(
              id: 2190,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2191)
            GoSlicesEx2191(
              id: 2191,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2192)
            GoSlicesEx2192(
              id: 2192,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2193)
            GoSlicesEx2193(
              id: 2193,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2194)
            GoSlicesEx2194(
              id: 2194,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2195)
            GoSlicesEx2195(
              id: 2195,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2196)
            GoSlicesEx2196(
              id: 2196,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2197)
            GoSlicesEx2197(
              id: 2197,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2198)
            GoSlicesEx2198(
              id: 2198,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2199)
            GoSlicesEx2199(
              id: 2199,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2200)
            GoSlicesEx2200(
              id: 2200,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2201)
            GoSlicesEx2201(
              id: 2201,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2202)
            GoSlicesEx2202(
              id: 2202,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2203)
            GoSlicesEx2203(
              id: 2203,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2204)
            GoSlicesEx2204(
              id: 2204,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
