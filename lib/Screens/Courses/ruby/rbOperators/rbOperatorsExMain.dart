import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbOperatorsEx1571.dart';
import 'Ex/rbOperatorsEx1572.dart';
import 'Ex/rbOperatorsEx1573.dart';
import 'Ex/rbOperatorsEx1574.dart';
import 'Ex/rbOperatorsEx1575.dart';
import 'Ex/rbOperatorsEx1576.dart';
import 'Ex/rbOperatorsEx1577.dart';
import 'Ex/rbOperatorsEx1578.dart';
import 'Ex/rbOperatorsEx1579.dart';
import 'Ex/rbOperatorsEx1580.dart';
import 'Ex/rbOperatorsEx1581.dart';
import 'Ex/rbOperatorsEx1582.dart';
import 'Ex/rbOperatorsEx1583.dart';
import 'Ex/rbOperatorsEx1584.dart';
import 'Ex/rbOperatorsEx1585.dart';

class RubyOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyOperatorsExMain> createState() => _RubyOperatorsExMainState();
}

class _RubyOperatorsExMainState extends State<RubyOperatorsExMain> {
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
          if (widget.id == 1571)
            RubyOperatorsEx1571(
              id: 1571,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1572)
            RubyOperatorsEx1572(
              id: 1572,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1573)
            RubyOperatorsEx1573(
              id: 1573,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1574)
            RubyOperatorsEx1574(
              id: 1574,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1575)
            RubyOperatorsEx1575(
              id: 1575,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1576)
            RubyOperatorsEx1576(
              id: 1576,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1577)
            RubyOperatorsEx1577(
              id: 1577,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1578)
            RubyOperatorsEx1578(
              id: 1578,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1579)
            RubyOperatorsEx1579(
              id: 1579,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1580)
            RubyOperatorsEx1580(
              id: 1580,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1581)
            RubyOperatorsEx1581(
              id: 1581,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1582)
            RubyOperatorsEx1582(
              id: 1582,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1583)
            RubyOperatorsEx1583(
              id: 1583,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1584)
            RubyOperatorsEx1584(
              id: 1584,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1585)
            RubyOperatorsEx1585(
              id: 1585,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
