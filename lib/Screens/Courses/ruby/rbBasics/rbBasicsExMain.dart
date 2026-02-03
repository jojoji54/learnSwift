import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbBasicsEx1541.dart';
import 'Ex/rbBasicsEx1542.dart';
import 'Ex/rbBasicsEx1543.dart';
import 'Ex/rbBasicsEx1544.dart';
import 'Ex/rbBasicsEx1545.dart';
import 'Ex/rbBasicsEx1546.dart';
import 'Ex/rbBasicsEx1547.dart';
import 'Ex/rbBasicsEx1548.dart';
import 'Ex/rbBasicsEx1549.dart';
import 'Ex/rbBasicsEx1550.dart';
import 'Ex/rbBasicsEx1551.dart';
import 'Ex/rbBasicsEx1552.dart';
import 'Ex/rbBasicsEx1553.dart';
import 'Ex/rbBasicsEx1554.dart';
import 'Ex/rbBasicsEx1555.dart';

class RubyBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyBasicsExMain> createState() => _RubyBasicsExMainState();
}

class _RubyBasicsExMainState extends State<RubyBasicsExMain> {
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
          if (widget.id == 1541)
            RubyBasicsEx1541(
              id: 1541,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1542)
            RubyBasicsEx1542(
              id: 1542,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1543)
            RubyBasicsEx1543(
              id: 1543,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1544)
            RubyBasicsEx1544(
              id: 1544,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1545)
            RubyBasicsEx1545(
              id: 1545,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1546)
            RubyBasicsEx1546(
              id: 1546,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1547)
            RubyBasicsEx1547(
              id: 1547,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1548)
            RubyBasicsEx1548(
              id: 1548,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1549)
            RubyBasicsEx1549(
              id: 1549,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1550)
            RubyBasicsEx1550(
              id: 1550,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1551)
            RubyBasicsEx1551(
              id: 1551,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1552)
            RubyBasicsEx1552(
              id: 1552,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1553)
            RubyBasicsEx1553(
              id: 1553,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1554)
            RubyBasicsEx1554(
              id: 1554,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1555)
            RubyBasicsEx1555(
              id: 1555,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
