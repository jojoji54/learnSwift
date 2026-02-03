import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbLoopsEx1616.dart';
import 'Ex/rbLoopsEx1617.dart';
import 'Ex/rbLoopsEx1618.dart';
import 'Ex/rbLoopsEx1619.dart';
import 'Ex/rbLoopsEx1620.dart';
import 'Ex/rbLoopsEx1621.dart';
import 'Ex/rbLoopsEx1622.dart';
import 'Ex/rbLoopsEx1623.dart';
import 'Ex/rbLoopsEx1624.dart';
import 'Ex/rbLoopsEx1625.dart';
import 'Ex/rbLoopsEx1626.dart';
import 'Ex/rbLoopsEx1627.dart';
import 'Ex/rbLoopsEx1628.dart';
import 'Ex/rbLoopsEx1629.dart';
import 'Ex/rbLoopsEx1630.dart';

class RubyLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyLoopsExMain> createState() => _RubyLoopsExMainState();
}

class _RubyLoopsExMainState extends State<RubyLoopsExMain> {
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
          if (widget.id == 1616)
            RubyLoopsEx1616(
              id: 1616,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1617)
            RubyLoopsEx1617(
              id: 1617,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1618)
            RubyLoopsEx1618(
              id: 1618,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1619)
            RubyLoopsEx1619(
              id: 1619,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1620)
            RubyLoopsEx1620(
              id: 1620,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1621)
            RubyLoopsEx1621(
              id: 1621,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1622)
            RubyLoopsEx1622(
              id: 1622,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1623)
            RubyLoopsEx1623(
              id: 1623,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1624)
            RubyLoopsEx1624(
              id: 1624,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1625)
            RubyLoopsEx1625(
              id: 1625,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1626)
            RubyLoopsEx1626(
              id: 1626,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1627)
            RubyLoopsEx1627(
              id: 1627,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1628)
            RubyLoopsEx1628(
              id: 1628,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1629)
            RubyLoopsEx1629(
              id: 1629,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1630)
            RubyLoopsEx1630(
              id: 1630,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
