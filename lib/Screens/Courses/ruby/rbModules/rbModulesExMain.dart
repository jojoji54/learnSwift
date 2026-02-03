import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbModulesEx1706.dart';
import 'Ex/rbModulesEx1707.dart';
import 'Ex/rbModulesEx1708.dart';
import 'Ex/rbModulesEx1709.dart';
import 'Ex/rbModulesEx1710.dart';
import 'Ex/rbModulesEx1711.dart';
import 'Ex/rbModulesEx1712.dart';
import 'Ex/rbModulesEx1713.dart';
import 'Ex/rbModulesEx1714.dart';
import 'Ex/rbModulesEx1715.dart';
import 'Ex/rbModulesEx1716.dart';
import 'Ex/rbModulesEx1717.dart';
import 'Ex/rbModulesEx1718.dart';
import 'Ex/rbModulesEx1719.dart';
import 'Ex/rbModulesEx1720.dart';

class RubyModulesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyModulesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyModulesExMain> createState() => _RubyModulesExMainState();
}

class _RubyModulesExMainState extends State<RubyModulesExMain> {
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
          if (widget.id == 1706)
            RubyModulesEx1706(
              id: 1706,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1707)
            RubyModulesEx1707(
              id: 1707,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1708)
            RubyModulesEx1708(
              id: 1708,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1709)
            RubyModulesEx1709(
              id: 1709,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1710)
            RubyModulesEx1710(
              id: 1710,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1711)
            RubyModulesEx1711(
              id: 1711,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1712)
            RubyModulesEx1712(
              id: 1712,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1713)
            RubyModulesEx1713(
              id: 1713,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1714)
            RubyModulesEx1714(
              id: 1714,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1715)
            RubyModulesEx1715(
              id: 1715,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1716)
            RubyModulesEx1716(
              id: 1716,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1717)
            RubyModulesEx1717(
              id: 1717,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1718)
            RubyModulesEx1718(
              id: 1718,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1719)
            RubyModulesEx1719(
              id: 1719,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1720)
            RubyModulesEx1720(
              id: 1720,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
