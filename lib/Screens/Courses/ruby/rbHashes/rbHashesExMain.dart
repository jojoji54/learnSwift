import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbHashesEx1646.dart';
import 'Ex/rbHashesEx1647.dart';
import 'Ex/rbHashesEx1648.dart';
import 'Ex/rbHashesEx1649.dart';
import 'Ex/rbHashesEx1650.dart';
import 'Ex/rbHashesEx1651.dart';
import 'Ex/rbHashesEx1652.dart';
import 'Ex/rbHashesEx1653.dart';
import 'Ex/rbHashesEx1654.dart';
import 'Ex/rbHashesEx1655.dart';
import 'Ex/rbHashesEx1656.dart';
import 'Ex/rbHashesEx1657.dart';
import 'Ex/rbHashesEx1658.dart';
import 'Ex/rbHashesEx1659.dart';
import 'Ex/rbHashesEx1660.dart';

class RubyHashesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyHashesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyHashesExMain> createState() => _RubyHashesExMainState();
}

class _RubyHashesExMainState extends State<RubyHashesExMain> {
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
          if (widget.id == 1646)
            RubyHashesEx1646(
              id: 1646,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1647)
            RubyHashesEx1647(
              id: 1647,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1648)
            RubyHashesEx1648(
              id: 1648,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1649)
            RubyHashesEx1649(
              id: 1649,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1650)
            RubyHashesEx1650(
              id: 1650,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1651)
            RubyHashesEx1651(
              id: 1651,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1652)
            RubyHashesEx1652(
              id: 1652,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1653)
            RubyHashesEx1653(
              id: 1653,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1654)
            RubyHashesEx1654(
              id: 1654,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1655)
            RubyHashesEx1655(
              id: 1655,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1656)
            RubyHashesEx1656(
              id: 1656,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1657)
            RubyHashesEx1657(
              id: 1657,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1658)
            RubyHashesEx1658(
              id: 1658,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1659)
            RubyHashesEx1659(
              id: 1659,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1660)
            RubyHashesEx1660(
              id: 1660,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
