import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goStringsEx2220.dart';
import 'Ex/goStringsEx2221.dart';
import 'Ex/goStringsEx2222.dart';
import 'Ex/goStringsEx2223.dart';
import 'Ex/goStringsEx2224.dart';
import 'Ex/goStringsEx2225.dart';
import 'Ex/goStringsEx2226.dart';
import 'Ex/goStringsEx2227.dart';
import 'Ex/goStringsEx2228.dart';
import 'Ex/goStringsEx2229.dart';
import 'Ex/goStringsEx2230.dart';
import 'Ex/goStringsEx2231.dart';
import 'Ex/goStringsEx2232.dart';
import 'Ex/goStringsEx2233.dart';
import 'Ex/goStringsEx2234.dart';

class GoStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoStringsExMain> createState() => _GoStringsExMainState();
}

class _GoStringsExMainState extends State<GoStringsExMain> {
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
          if (widget.id == 2220)
            GoStringsEx2220(
              id: 2220,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2221)
            GoStringsEx2221(
              id: 2221,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2222)
            GoStringsEx2222(
              id: 2222,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2223)
            GoStringsEx2223(
              id: 2223,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2224)
            GoStringsEx2224(
              id: 2224,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2225)
            GoStringsEx2225(
              id: 2225,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2226)
            GoStringsEx2226(
              id: 2226,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2227)
            GoStringsEx2227(
              id: 2227,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2228)
            GoStringsEx2228(
              id: 2228,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2229)
            GoStringsEx2229(
              id: 2229,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2230)
            GoStringsEx2230(
              id: 2230,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2231)
            GoStringsEx2231(
              id: 2231,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2232)
            GoStringsEx2232(
              id: 2232,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2233)
            GoStringsEx2233(
              id: 2233,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2234)
            GoStringsEx2234(
              id: 2234,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
