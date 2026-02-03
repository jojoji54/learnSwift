import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbConditionalsEx1586.dart';
import 'Ex/rbConditionalsEx1587.dart';
import 'Ex/rbConditionalsEx1588.dart';
import 'Ex/rbConditionalsEx1589.dart';
import 'Ex/rbConditionalsEx1590.dart';
import 'Ex/rbConditionalsEx1591.dart';
import 'Ex/rbConditionalsEx1592.dart';
import 'Ex/rbConditionalsEx1593.dart';
import 'Ex/rbConditionalsEx1594.dart';
import 'Ex/rbConditionalsEx1595.dart';
import 'Ex/rbConditionalsEx1596.dart';
import 'Ex/rbConditionalsEx1597.dart';
import 'Ex/rbConditionalsEx1598.dart';
import 'Ex/rbConditionalsEx1599.dart';
import 'Ex/rbConditionalsEx1600.dart';

class RubyConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyConditionalsExMain> createState() => _RubyConditionalsExMainState();
}

class _RubyConditionalsExMainState extends State<RubyConditionalsExMain> {
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
          if (widget.id == 1586)
            RubyConditionalsEx1586(
              id: 1586,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1587)
            RubyConditionalsEx1587(
              id: 1587,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1588)
            RubyConditionalsEx1588(
              id: 1588,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1589)
            RubyConditionalsEx1589(
              id: 1589,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1590)
            RubyConditionalsEx1590(
              id: 1590,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1591)
            RubyConditionalsEx1591(
              id: 1591,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1592)
            RubyConditionalsEx1592(
              id: 1592,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1593)
            RubyConditionalsEx1593(
              id: 1593,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1594)
            RubyConditionalsEx1594(
              id: 1594,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1595)
            RubyConditionalsEx1595(
              id: 1595,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1596)
            RubyConditionalsEx1596(
              id: 1596,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1597)
            RubyConditionalsEx1597(
              id: 1597,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1598)
            RubyConditionalsEx1598(
              id: 1598,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1599)
            RubyConditionalsEx1599(
              id: 1599,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1600)
            RubyConditionalsEx1600(
              id: 1600,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
