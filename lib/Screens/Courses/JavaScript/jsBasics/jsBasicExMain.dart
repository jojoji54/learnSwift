import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/javascript/jsBasics/Ex/jsBasicsEx300.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

import '../../javascript/jsBasics/Ex/jsBasicsEx306.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx307.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx308.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx309.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx310.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx311.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx312.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx313.dart';
import '../../javascript/jsBasics/Ex/jsBasicsEx314.dart';
import 'Ex/jsBasicsEx301.dart';
import 'Ex/jsBasicsEx302.dart';
import 'Ex/jsBasicsEx303.dart';
import 'Ex/jsBasicsEx304.dart';
import 'Ex/jsBasicsEx305.dart';

class JsBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JsBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JsBasicsExMain> createState() => _JsBasicsExMainState();
}

class _JsBasicsExMainState extends State<JsBasicsExMain> {
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
          if (widget.id == 300)
            JsBasicsEx300(
              id: 300,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 301)
            JsBasicsEx301(
              id: 301,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 302)
            JsBasicsEx302(
              id: 302,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 303)
            JsBasicsEx303(
              id: 303,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 304)
            JsBasicsEx304(
              id: 304,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 305)
            JsBasicsEx305(
              id: 305,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 306)
            JsBasicsEx306(
              id: 306,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 307)
            JsBasicsEx307(
              id: 307,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 308)
            JsBasicsEx308(
              id: 308,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 309)
            JsBasicsEx309(
              id: 309,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 310)
            JsBasicsEx310(
              id: 310,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 311)
            JsBasicsEx311(
              id: 311,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 312)
            JsBasicsEx312(
              id: 312,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 313)
            JsBasicsEx313(
              id: 313,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 314)
            JsBasicsEx314(
              id: 314,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
