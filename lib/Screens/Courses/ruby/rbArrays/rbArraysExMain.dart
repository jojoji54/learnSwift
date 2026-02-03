import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbArraysEx1631.dart';
import 'Ex/rbArraysEx1632.dart';
import 'Ex/rbArraysEx1633.dart';
import 'Ex/rbArraysEx1634.dart';
import 'Ex/rbArraysEx1635.dart';
import 'Ex/rbArraysEx1636.dart';
import 'Ex/rbArraysEx1637.dart';
import 'Ex/rbArraysEx1638.dart';
import 'Ex/rbArraysEx1639.dart';
import 'Ex/rbArraysEx1640.dart';
import 'Ex/rbArraysEx1641.dart';
import 'Ex/rbArraysEx1642.dart';
import 'Ex/rbArraysEx1643.dart';
import 'Ex/rbArraysEx1644.dart';
import 'Ex/rbArraysEx1645.dart';

class RubyArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyArraysExMain> createState() => _RubyArraysExMainState();
}

class _RubyArraysExMainState extends State<RubyArraysExMain> {
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
          if (widget.id == 1631)
            RubyArraysEx1631(
              id: 1631,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1632)
            RubyArraysEx1632(
              id: 1632,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1633)
            RubyArraysEx1633(
              id: 1633,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1634)
            RubyArraysEx1634(
              id: 1634,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1635)
            RubyArraysEx1635(
              id: 1635,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1636)
            RubyArraysEx1636(
              id: 1636,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1637)
            RubyArraysEx1637(
              id: 1637,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1638)
            RubyArraysEx1638(
              id: 1638,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1639)
            RubyArraysEx1639(
              id: 1639,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1640)
            RubyArraysEx1640(
              id: 1640,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1641)
            RubyArraysEx1641(
              id: 1641,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1642)
            RubyArraysEx1642(
              id: 1642,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1643)
            RubyArraysEx1643(
              id: 1643,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1644)
            RubyArraysEx1644(
              id: 1644,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1645)
            RubyArraysEx1645(
              id: 1645,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
