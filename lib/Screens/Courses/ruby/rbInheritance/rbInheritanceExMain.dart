import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbInheritanceEx1721.dart';
import 'Ex/rbInheritanceEx1722.dart';
import 'Ex/rbInheritanceEx1723.dart';
import 'Ex/rbInheritanceEx1724.dart';
import 'Ex/rbInheritanceEx1725.dart';
import 'Ex/rbInheritanceEx1726.dart';
import 'Ex/rbInheritanceEx1727.dart';
import 'Ex/rbInheritanceEx1728.dart';
import 'Ex/rbInheritanceEx1729.dart';
import 'Ex/rbInheritanceEx1730.dart';
import 'Ex/rbInheritanceEx1731.dart';
import 'Ex/rbInheritanceEx1732.dart';
import 'Ex/rbInheritanceEx1733.dart';
import 'Ex/rbInheritanceEx1734.dart';
import 'Ex/rbInheritanceEx1735.dart';

class RubyInheritanceExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyInheritanceExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyInheritanceExMain> createState() => _RubyInheritanceExMainState();
}

class _RubyInheritanceExMainState extends State<RubyInheritanceExMain> {
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
          if (widget.id == 1721)
            RubyInheritanceEx1721(
              id: 1721,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1722)
            RubyInheritanceEx1722(
              id: 1722,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1723)
            RubyInheritanceEx1723(
              id: 1723,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1724)
            RubyInheritanceEx1724(
              id: 1724,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1725)
            RubyInheritanceEx1725(
              id: 1725,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1726)
            RubyInheritanceEx1726(
              id: 1726,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1727)
            RubyInheritanceEx1727(
              id: 1727,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1728)
            RubyInheritanceEx1728(
              id: 1728,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1729)
            RubyInheritanceEx1729(
              id: 1729,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1730)
            RubyInheritanceEx1730(
              id: 1730,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1731)
            RubyInheritanceEx1731(
              id: 1731,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1732)
            RubyInheritanceEx1732(
              id: 1732,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1733)
            RubyInheritanceEx1733(
              id: 1733,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1734)
            RubyInheritanceEx1734(
              id: 1734,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1735)
            RubyInheritanceEx1735(
              id: 1735,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
