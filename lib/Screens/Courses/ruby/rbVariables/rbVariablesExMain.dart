import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbVariablesEx1556.dart';
import 'Ex/rbVariablesEx1557.dart';
import 'Ex/rbVariablesEx1558.dart';
import 'Ex/rbVariablesEx1559.dart';
import 'Ex/rbVariablesEx1560.dart';
import 'Ex/rbVariablesEx1561.dart';
import 'Ex/rbVariablesEx1562.dart';
import 'Ex/rbVariablesEx1563.dart';
import 'Ex/rbVariablesEx1564.dart';
import 'Ex/rbVariablesEx1565.dart';
import 'Ex/rbVariablesEx1566.dart';
import 'Ex/rbVariablesEx1567.dart';
import 'Ex/rbVariablesEx1568.dart';
import 'Ex/rbVariablesEx1569.dart';
import 'Ex/rbVariablesEx1570.dart';

class RubyVariablesTypesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyVariablesTypesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyVariablesTypesExMain> createState() => _RubyVariablesTypesExMainState();
}

class _RubyVariablesTypesExMainState extends State<RubyVariablesTypesExMain> {
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
          if (widget.id == 1556)
            RubyVariablesTypesEx1556(
              id: 1556,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1557)
            RubyVariablesTypesEx1557(
              id: 1557,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1558)
            RubyVariablesTypesEx1558(
              id: 1558,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1559)
            RubyVariablesTypesEx1559(
              id: 1559,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1560)
            RubyVariablesTypesEx1560(
              id: 1560,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1561)
            RubyVariablesTypesEx1561(
              id: 1561,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1562)
            RubyVariablesTypesEx1562(
              id: 1562,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1563)
            RubyVariablesTypesEx1563(
              id: 1563,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1564)
            RubyVariablesTypesEx1564(
              id: 1564,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1565)
            RubyVariablesTypesEx1565(
              id: 1565,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1566)
            RubyVariablesTypesEx1566(
              id: 1566,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1567)
            RubyVariablesTypesEx1567(
              id: 1567,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1568)
            RubyVariablesTypesEx1568(
              id: 1568,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1569)
            RubyVariablesTypesEx1569(
              id: 1569,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1570)
            RubyVariablesTypesEx1570(
              id: 1570,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
