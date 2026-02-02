import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaArrayListEx605.dart';
import 'Ex/javaArrayListEx606.dart';
import 'Ex/javaArrayListEx607.dart';
import 'Ex/javaArrayListEx608.dart';
import 'Ex/javaArrayListEx609.dart';
import 'Ex/javaArrayListEx610.dart';
import 'Ex/javaArrayListEx611.dart';
import 'Ex/javaArrayListEx612.dart';
import 'Ex/javaArrayListEx613.dart';
import 'Ex/javaArrayListEx614.dart';
import 'Ex/javaArrayListEx615.dart';
import 'Ex/javaArrayListEx616.dart';
import 'Ex/javaArrayListEx617.dart';
import 'Ex/javaArrayListEx618.dart';
import 'Ex/javaArrayListEx619.dart';

class JavaArrayListExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaArrayListExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaArrayListExMain> createState() => _JavaArrayListExMainState();
}

class _JavaArrayListExMainState extends State<JavaArrayListExMain> {
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
          if (widget.id == 605)
            JavaArrayListEx605(
              id: 605,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 606)
            JavaArrayListEx606(
              id: 606,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 607)
            JavaArrayListEx607(
              id: 607,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 608)
            JavaArrayListEx608(
              id: 608,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 609)
            JavaArrayListEx609(
              id: 609,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 610)
            JavaArrayListEx610(
              id: 610,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 611)
            JavaArrayListEx611(
              id: 611,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 612)
            JavaArrayListEx612(
              id: 612,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 613)
            JavaArrayListEx613(
              id: 613,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 614)
            JavaArrayListEx614(
              id: 614,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 615)
            JavaArrayListEx615(
              id: 615,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 616)
            JavaArrayListEx616(
              id: 616,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 617)
            JavaArrayListEx617(
              id: 617,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 618)
            JavaArrayListEx618(
              id: 618,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 619)
            JavaArrayListEx619(
              id: 619,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
