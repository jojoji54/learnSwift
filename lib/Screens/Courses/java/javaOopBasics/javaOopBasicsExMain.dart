import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaOopBasicsEx635.dart';
import 'Ex/javaOopBasicsEx636.dart';
import 'Ex/javaOopBasicsEx637.dart';
import 'Ex/javaOopBasicsEx638.dart';
import 'Ex/javaOopBasicsEx639.dart';
import 'Ex/javaOopBasicsEx640.dart';
import 'Ex/javaOopBasicsEx641.dart';
import 'Ex/javaOopBasicsEx642.dart';
import 'Ex/javaOopBasicsEx643.dart';
import 'Ex/javaOopBasicsEx644.dart';
import 'Ex/javaOopBasicsEx645.dart';
import 'Ex/javaOopBasicsEx646.dart';
import 'Ex/javaOopBasicsEx647.dart';
import 'Ex/javaOopBasicsEx648.dart';
import 'Ex/javaOopBasicsEx649.dart';

class JavaOopBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaOopBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaOopBasicsExMain> createState() => _JavaOopBasicsExMainState();
}

class _JavaOopBasicsExMainState extends State<JavaOopBasicsExMain> {
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
          if (widget.id == 635)
            JavaOopBasicsEx635(
              id: 635,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 636)
            JavaOopBasicsEx636(
              id: 636,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 637)
            JavaOopBasicsEx637(
              id: 637,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 638)
            JavaOopBasicsEx638(
              id: 638,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 639)
            JavaOopBasicsEx639(
              id: 639,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 640)
            JavaOopBasicsEx640(
              id: 640,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 641)
            JavaOopBasicsEx641(
              id: 641,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 642)
            JavaOopBasicsEx642(
              id: 642,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 643)
            JavaOopBasicsEx643(
              id: 643,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 644)
            JavaOopBasicsEx644(
              id: 644,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 645)
            JavaOopBasicsEx645(
              id: 645,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 646)
            JavaOopBasicsEx646(
              id: 646,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 647)
            JavaOopBasicsEx647(
              id: 647,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 648)
            JavaOopBasicsEx648(
              id: 648,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 649)
            JavaOopBasicsEx649(
              id: 649,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
