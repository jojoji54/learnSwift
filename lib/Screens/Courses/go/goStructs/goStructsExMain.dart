import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goStructsEx2250.dart';
import 'Ex/goStructsEx2251.dart';
import 'Ex/goStructsEx2252.dart';
import 'Ex/goStructsEx2253.dart';
import 'Ex/goStructsEx2254.dart';
import 'Ex/goStructsEx2255.dart';
import 'Ex/goStructsEx2256.dart';
import 'Ex/goStructsEx2257.dart';
import 'Ex/goStructsEx2258.dart';
import 'Ex/goStructsEx2259.dart';
import 'Ex/goStructsEx2260.dart';
import 'Ex/goStructsEx2261.dart';
import 'Ex/goStructsEx2262.dart';
import 'Ex/goStructsEx2263.dart';
import 'Ex/goStructsEx2264.dart';

class GoStructsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoStructsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoStructsExMain> createState() => _GoStructsExMainState();
}

class _GoStructsExMainState extends State<GoStructsExMain> {
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
          if (widget.id == 2250)
            GoStructsEx2250(
              id: 2250,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2251)
            GoStructsEx2251(
              id: 2251,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2252)
            GoStructsEx2252(
              id: 2252,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2253)
            GoStructsEx2253(
              id: 2253,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2254)
            GoStructsEx2254(
              id: 2254,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2255)
            GoStructsEx2255(
              id: 2255,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2256)
            GoStructsEx2256(
              id: 2256,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2257)
            GoStructsEx2257(
              id: 2257,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2258)
            GoStructsEx2258(
              id: 2258,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2259)
            GoStructsEx2259(
              id: 2259,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2260)
            GoStructsEx2260(
              id: 2260,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2261)
            GoStructsEx2261(
              id: 2261,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2262)
            GoStructsEx2262(
              id: 2262,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2263)
            GoStructsEx2263(
              id: 2263,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2264)
            GoStructsEx2264(
              id: 2264,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
