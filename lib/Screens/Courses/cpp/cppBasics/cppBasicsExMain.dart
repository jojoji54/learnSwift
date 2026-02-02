import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppBasicsEx700.dart';
import 'Ex/cppBasicsEx701.dart';
import 'Ex/cppBasicsEx702.dart';
import 'Ex/cppBasicsEx703.dart';
import 'Ex/cppBasicsEx704.dart';
import 'Ex/cppBasicsEx705.dart';
import 'Ex/cppBasicsEx706.dart';
import 'Ex/cppBasicsEx707.dart';
import 'Ex/cppBasicsEx708.dart';
import 'Ex/cppBasicsEx709.dart';
import 'Ex/cppBasicsEx710.dart';
import 'Ex/cppBasicsEx711.dart';
import 'Ex/cppBasicsEx712.dart';
import 'Ex/cppBasicsEx713.dart';
import 'Ex/cppBasicsEx714.dart';

class CppBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppBasicsExMain> createState() => _CppBasicsExMainState();
}

class _CppBasicsExMainState extends State<CppBasicsExMain> {
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
          if (widget.id == 700)
            CppBasicsEx700(
              id: 700,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 701)
            CppBasicsEx701(
              id: 701,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 702)
            CppBasicsEx702(
              id: 702,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 703)
            CppBasicsEx703(
              id: 703,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 704)
            CppBasicsEx704(
              id: 704,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 705)
            CppBasicsEx705(
              id: 705,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 706)
            CppBasicsEx706(
              id: 706,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 707)
            CppBasicsEx707(
              id: 707,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 708)
            CppBasicsEx708(
              id: 708,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 709)
            CppBasicsEx709(
              id: 709,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 710)
            CppBasicsEx710(
              id: 710,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 711)
            CppBasicsEx711(
              id: 711,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 712)
            CppBasicsEx712(
              id: 712,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 713)
            CppBasicsEx713(
              id: 713,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 714)
            CppBasicsEx714(
              id: 714,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
