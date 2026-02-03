import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/goBasicsEx2100.dart';
import 'Ex/goBasicsEx2101.dart';
import 'Ex/goBasicsEx2102.dart';
import 'Ex/goBasicsEx2103.dart';
import 'Ex/goBasicsEx2104.dart';
import 'Ex/goBasicsEx2105.dart';
import 'Ex/goBasicsEx2106.dart';
import 'Ex/goBasicsEx2107.dart';
import 'Ex/goBasicsEx2108.dart';
import 'Ex/goBasicsEx2109.dart';
import 'Ex/goBasicsEx2110.dart';
import 'Ex/goBasicsEx2111.dart';
import 'Ex/goBasicsEx2112.dart';
import 'Ex/goBasicsEx2113.dart';
import 'Ex/goBasicsEx2114.dart';

class GoBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  GoBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<GoBasicsExMain> createState() => _GoBasicsExMainState();
}

class _GoBasicsExMainState extends State<GoBasicsExMain> {
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
          if (widget.id == 2100)
            GoBasicsEx2100(
              id: 2100,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2101)
            GoBasicsEx2101(
              id: 2101,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2102)
            GoBasicsEx2102(
              id: 2102,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2103)
            GoBasicsEx2103(
              id: 2103,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2104)
            GoBasicsEx2104(
              id: 2104,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2105)
            GoBasicsEx2105(
              id: 2105,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2106)
            GoBasicsEx2106(
              id: 2106,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2107)
            GoBasicsEx2107(
              id: 2107,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2108)
            GoBasicsEx2108(
              id: 2108,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2109)
            GoBasicsEx2109(
              id: 2109,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2110)
            GoBasicsEx2110(
              id: 2110,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2111)
            GoBasicsEx2111(
              id: 2111,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2112)
            GoBasicsEx2112(
              id: 2112,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2113)
            GoBasicsEx2113(
              id: 2113,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2114)
            GoBasicsEx2114(
              id: 2114,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
