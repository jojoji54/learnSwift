import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbSubprogramsEx2505.dart';
import 'Ex/cbSubprogramsEx2506.dart';
import 'Ex/cbSubprogramsEx2507.dart';
import 'Ex/cbSubprogramsEx2508.dart';
import 'Ex/cbSubprogramsEx2509.dart';
import 'Ex/cbSubprogramsEx2510.dart';
import 'Ex/cbSubprogramsEx2511.dart';
import 'Ex/cbSubprogramsEx2512.dart';
import 'Ex/cbSubprogramsEx2513.dart';
import 'Ex/cbSubprogramsEx2514.dart';
import 'Ex/cbSubprogramsEx2515.dart';
import 'Ex/cbSubprogramsEx2516.dart';
import 'Ex/cbSubprogramsEx2517.dart';
import 'Ex/cbSubprogramsEx2518.dart';
import 'Ex/cbSubprogramsEx2519.dart';

class CbSubprogramsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbSubprogramsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbSubprogramsExMain> createState() => _CbSubprogramsExMainState();
}

class _CbSubprogramsExMainState extends State<CbSubprogramsExMain> {
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
          if (widget.id == 2505)
            CbSubprogramsEx2505(
              id: 2505,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2506)
            CbSubprogramsEx2506(
              id: 2506,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2507)
            CbSubprogramsEx2507(
              id: 2507,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2508)
            CbSubprogramsEx2508(
              id: 2508,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2509)
            CbSubprogramsEx2509(
              id: 2509,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2510)
            CbSubprogramsEx2510(
              id: 2510,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2511)
            CbSubprogramsEx2511(
              id: 2511,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2512)
            CbSubprogramsEx2512(
              id: 2512,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2513)
            CbSubprogramsEx2513(
              id: 2513,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2514)
            CbSubprogramsEx2514(
              id: 2514,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2515)
            CbSubprogramsEx2515(
              id: 2515,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2516)
            CbSubprogramsEx2516(
              id: 2516,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2517)
            CbSubprogramsEx2517(
              id: 2517,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2518)
            CbSubprogramsEx2518(
              id: 2518,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2519)
            CbSubprogramsEx2519(
              id: 2519,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
