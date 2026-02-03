import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goFunctionsEx2235.dart';
import 'Ex/goFunctionsEx2236.dart';
import 'Ex/goFunctionsEx2237.dart';
import 'Ex/goFunctionsEx2238.dart';
import 'Ex/goFunctionsEx2239.dart';
import 'Ex/goFunctionsEx2240.dart';
import 'Ex/goFunctionsEx2241.dart';
import 'Ex/goFunctionsEx2242.dart';
import 'Ex/goFunctionsEx2243.dart';
import 'Ex/goFunctionsEx2244.dart';
import 'Ex/goFunctionsEx2245.dart';
import 'Ex/goFunctionsEx2246.dart';
import 'Ex/goFunctionsEx2247.dart';
import 'Ex/goFunctionsEx2248.dart';
import 'Ex/goFunctionsEx2249.dart';

class GoFunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoFunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoFunctionsExMain> createState() => _GoFunctionsExMainState();
}

class _GoFunctionsExMainState extends State<GoFunctionsExMain> {
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
          if (widget.id == 2235)
            GoFunctionsEx2235(
              id: 2235,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2236)
            GoFunctionsEx2236(
              id: 2236,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2237)
            GoFunctionsEx2237(
              id: 2237,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2238)
            GoFunctionsEx2238(
              id: 2238,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2239)
            GoFunctionsEx2239(
              id: 2239,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2240)
            GoFunctionsEx2240(
              id: 2240,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2241)
            GoFunctionsEx2241(
              id: 2241,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2242)
            GoFunctionsEx2242(
              id: 2242,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2243)
            GoFunctionsEx2243(
              id: 2243,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2244)
            GoFunctionsEx2244(
              id: 2244,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2245)
            GoFunctionsEx2245(
              id: 2245,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2246)
            GoFunctionsEx2246(
              id: 2246,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2247)
            GoFunctionsEx2247(
              id: 2247,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2248)
            GoFunctionsEx2248(
              id: 2248,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2249)
            GoFunctionsEx2249(
              id: 2249,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
