import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbClassesEx1691.dart';
import 'Ex/rbClassesEx1692.dart';
import 'Ex/rbClassesEx1693.dart';
import 'Ex/rbClassesEx1694.dart';
import 'Ex/rbClassesEx1695.dart';
import 'Ex/rbClassesEx1696.dart';
import 'Ex/rbClassesEx1697.dart';
import 'Ex/rbClassesEx1698.dart';
import 'Ex/rbClassesEx1699.dart';
import 'Ex/rbClassesEx1700.dart';
import 'Ex/rbClassesEx1701.dart';
import 'Ex/rbClassesEx1702.dart';
import 'Ex/rbClassesEx1703.dart';
import 'Ex/rbClassesEx1704.dart';
import 'Ex/rbClassesEx1705.dart';

class RubyClassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyClassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyClassesExMain> createState() => _RubyClassesExMainState();
}

class _RubyClassesExMainState extends State<RubyClassesExMain> {
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
          if (widget.id == 1691)
            RubyClassesEx1691(
              id: 1691,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1692)
            RubyClassesEx1692(
              id: 1692,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1693)
            RubyClassesEx1693(
              id: 1693,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1694)
            RubyClassesEx1694(
              id: 1694,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1695)
            RubyClassesEx1695(
              id: 1695,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1696)
            RubyClassesEx1696(
              id: 1696,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1697)
            RubyClassesEx1697(
              id: 1697,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1698)
            RubyClassesEx1698(
              id: 1698,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1699)
            RubyClassesEx1699(
              id: 1699,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1700)
            RubyClassesEx1700(
              id: 1700,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1701)
            RubyClassesEx1701(
              id: 1701,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1702)
            RubyClassesEx1702(
              id: 1702,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1703)
            RubyClassesEx1703(
              id: 1703,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1704)
            RubyClassesEx1704(
              id: 1704,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1705)
            RubyClassesEx1705(
              id: 1705,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
