import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/javaOperatorsEx530.dart';
import 'Ex/javaOperatorsEx531.dart';
import 'Ex/javaOperatorsEx532.dart';
import 'Ex/javaOperatorsEx533.dart';
import 'Ex/javaOperatorsEx534.dart';
import 'Ex/javaOperatorsEx535.dart';
import 'Ex/javaOperatorsEx536.dart';
import 'Ex/javaOperatorsEx537.dart';
import 'Ex/javaOperatorsEx538.dart';
import 'Ex/javaOperatorsEx539.dart';
import 'Ex/javaOperatorsEx540.dart';
import 'Ex/javaOperatorsEx541.dart';
import 'Ex/javaOperatorsEx542.dart';
import 'Ex/javaOperatorsEx543.dart';
import 'Ex/javaOperatorsEx544.dart';

class JavaOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  JavaOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<JavaOperatorsExMain> createState() => _JavaOperatorsExMainState();
}

class _JavaOperatorsExMainState extends State<JavaOperatorsExMain> {
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
          if (widget.id == 530)
            JavaOperatorsEx530(
              id: 530,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 531)
            JavaOperatorsEx531(
              id: 531,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 532)
            JavaOperatorsEx532(
              id: 532,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 533)
            JavaOperatorsEx533(
              id: 533,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 534)
            JavaOperatorsEx534(
              id: 534,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 535)
            JavaOperatorsEx535(
              id: 535,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 536)
            JavaOperatorsEx536(
              id: 536,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 537)
            JavaOperatorsEx537(
              id: 537,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 538)
            JavaOperatorsEx538(
              id: 538,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 539)
            JavaOperatorsEx539(
              id: 539,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 540)
            JavaOperatorsEx540(
              id: 540,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 541)
            JavaOperatorsEx541(
              id: 541,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 542)
            JavaOperatorsEx542(
              id: 542,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 543)
            JavaOperatorsEx543(
              id: 543,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 544)
            JavaOperatorsEx544(
              id: 544,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
