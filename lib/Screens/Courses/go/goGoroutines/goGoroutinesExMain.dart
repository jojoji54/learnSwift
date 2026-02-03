import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goGoroutinesEx2295.dart';
import 'Ex/goGoroutinesEx2296.dart';
import 'Ex/goGoroutinesEx2297.dart';
import 'Ex/goGoroutinesEx2298.dart';
import 'Ex/goGoroutinesEx2299.dart';
import 'Ex/goGoroutinesEx2300.dart';
import 'Ex/goGoroutinesEx2301.dart';
import 'Ex/goGoroutinesEx2302.dart';
import 'Ex/goGoroutinesEx2303.dart';
import 'Ex/goGoroutinesEx2304.dart';
import 'Ex/goGoroutinesEx2305.dart';
import 'Ex/goGoroutinesEx2306.dart';
import 'Ex/goGoroutinesEx2307.dart';
import 'Ex/goGoroutinesEx2308.dart';
import 'Ex/goGoroutinesEx2309.dart';

class GoGoroutinesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoGoroutinesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoGoroutinesExMain> createState() => _GoGoroutinesExMainState();
}

class _GoGoroutinesExMainState extends State<GoGoroutinesExMain> {
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
          if (widget.id == 2295)
            GoGoroutinesEx2295(
              id: 2295,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2296)
            GoGoroutinesEx2296(
              id: 2296,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2297)
            GoGoroutinesEx2297(
              id: 2297,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2298)
            GoGoroutinesEx2298(
              id: 2298,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2299)
            GoGoroutinesEx2299(
              id: 2299,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2300)
            GoGoroutinesEx2300(
              id: 2300,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2301)
            GoGoroutinesEx2301(
              id: 2301,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2302)
            GoGoroutinesEx2302(
              id: 2302,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2303)
            GoGoroutinesEx2303(
              id: 2303,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2304)
            GoGoroutinesEx2304(
              id: 2304,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2305)
            GoGoroutinesEx2305(
              id: 2305,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2306)
            GoGoroutinesEx2306(
              id: 2306,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2307)
            GoGoroutinesEx2307(
              id: 2307,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2308)
            GoGoroutinesEx2308(
              id: 2308,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2309)
            GoGoroutinesEx2309(
              id: 2309,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
