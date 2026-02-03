import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goVariablesEx2115.dart';
import 'Ex/goVariablesEx2116.dart';
import 'Ex/goVariablesEx2117.dart';
import 'Ex/goVariablesEx2118.dart';
import 'Ex/goVariablesEx2119.dart';
import 'Ex/goVariablesEx2120.dart';
import 'Ex/goVariablesEx2121.dart';
import 'Ex/goVariablesEx2122.dart';
import 'Ex/goVariablesEx2123.dart';
import 'Ex/goVariablesEx2124.dart';
import 'Ex/goVariablesEx2125.dart';
import 'Ex/goVariablesEx2126.dart';
import 'Ex/goVariablesEx2127.dart';
import 'Ex/goVariablesEx2128.dart';
import 'Ex/goVariablesEx2129.dart';

class GoVariablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoVariablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoVariablesExMain> createState() => _GoVariablesExMainState();
}

class _GoVariablesExMainState extends State<GoVariablesExMain> {
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
          if (widget.id == 2115)
            GoVariablesEx2115(
              id: 2115,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2116)
            GoVariablesEx2116(
              id: 2116,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2117)
            GoVariablesEx2117(
              id: 2117,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2118)
            GoVariablesEx2118(
              id: 2118,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2119)
            GoVariablesEx2119(
              id: 2119,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2120)
            GoVariablesEx2120(
              id: 2120,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2121)
            GoVariablesEx2121(
              id: 2121,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2122)
            GoVariablesEx2122(
              id: 2122,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2123)
            GoVariablesEx2123(
              id: 2123,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2124)
            GoVariablesEx2124(
              id: 2124,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2125)
            GoVariablesEx2125(
              id: 2125,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2126)
            GoVariablesEx2126(
              id: 2126,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2127)
            GoVariablesEx2127(
              id: 2127,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2128)
            GoVariablesEx2128(
              id: 2128,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2129)
            GoVariablesEx2129(
              id: 2129,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
