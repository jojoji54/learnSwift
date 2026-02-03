import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goLoopsEx2175.dart';
import 'Ex/goLoopsEx2176.dart';
import 'Ex/goLoopsEx2177.dart';
import 'Ex/goLoopsEx2178.dart';
import 'Ex/goLoopsEx2179.dart';
import 'Ex/goLoopsEx2180.dart';
import 'Ex/goLoopsEx2181.dart';
import 'Ex/goLoopsEx2182.dart';
import 'Ex/goLoopsEx2183.dart';
import 'Ex/goLoopsEx2184.dart';
import 'Ex/goLoopsEx2185.dart';
import 'Ex/goLoopsEx2186.dart';
import 'Ex/goLoopsEx2187.dart';
import 'Ex/goLoopsEx2188.dart';
import 'Ex/goLoopsEx2189.dart';

class GoLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoLoopsExMain> createState() => _GoLoopsExMainState();
}

class _GoLoopsExMainState extends State<GoLoopsExMain> {
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
          if (widget.id == 2175)
            GoLoopsEx2175(
              id: 2175,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2176)
            GoLoopsEx2176(
              id: 2176,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2177)
            GoLoopsEx2177(
              id: 2177,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2178)
            GoLoopsEx2178(
              id: 2178,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2179)
            GoLoopsEx2179(
              id: 2179,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2180)
            GoLoopsEx2180(
              id: 2180,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2181)
            GoLoopsEx2181(
              id: 2181,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2182)
            GoLoopsEx2182(
              id: 2182,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2183)
            GoLoopsEx2183(
              id: 2183,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2184)
            GoLoopsEx2184(
              id: 2184,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2185)
            GoLoopsEx2185(
              id: 2185,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2186)
            GoLoopsEx2186(
              id: 2186,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2187)
            GoLoopsEx2187(
              id: 2187,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2188)
            GoLoopsEx2188(
              id: 2188,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2189)
            GoLoopsEx2189(
              id: 2189,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
