import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goOperatorsEx2130.dart';
import 'Ex/goOperatorsEx2131.dart';
import 'Ex/goOperatorsEx2132.dart';
import 'Ex/goOperatorsEx2133.dart';
import 'Ex/goOperatorsEx2134.dart';
import 'Ex/goOperatorsEx2135.dart';
import 'Ex/goOperatorsEx2136.dart';
import 'Ex/goOperatorsEx2137.dart';
import 'Ex/goOperatorsEx2138.dart';
import 'Ex/goOperatorsEx2139.dart';
import 'Ex/goOperatorsEx2140.dart';
import 'Ex/goOperatorsEx2141.dart';
import 'Ex/goOperatorsEx2142.dart';
import 'Ex/goOperatorsEx2143.dart';
import 'Ex/goOperatorsEx2144.dart';

class GoOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoOperatorsExMain> createState() => _GoOperatorsExMainState();
}

class _GoOperatorsExMainState extends State<GoOperatorsExMain> {
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
          if (widget.id == 2130)
            GoOperatorsEx2130(
              id: 2130,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2131)
            GoOperatorsEx2131(
              id: 2131,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2132)
            GoOperatorsEx2132(
              id: 2132,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2133)
            GoOperatorsEx2133(
              id: 2133,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2134)
            GoOperatorsEx2134(
              id: 2134,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2135)
            GoOperatorsEx2135(
              id: 2135,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2136)
            GoOperatorsEx2136(
              id: 2136,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2137)
            GoOperatorsEx2137(
              id: 2137,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2138)
            GoOperatorsEx2138(
              id: 2138,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2139)
            GoOperatorsEx2139(
              id: 2139,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2140)
            GoOperatorsEx2140(
              id: 2140,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2141)
            GoOperatorsEx2141(
              id: 2141,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2142)
            GoOperatorsEx2142(
              id: 2142,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2143)
            GoOperatorsEx2143(
              id: 2143,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2144)
            GoOperatorsEx2144(
              id: 2144,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
