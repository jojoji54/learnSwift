import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppClassesEx835.dart';
import 'Ex/cppClassesEx836.dart';
import 'Ex/cppClassesEx837.dart';
import 'Ex/cppClassesEx838.dart';
import 'Ex/cppClassesEx839.dart';
import 'Ex/cppClassesEx840.dart';
import 'Ex/cppClassesEx841.dart';
import 'Ex/cppClassesEx842.dart';
import 'Ex/cppClassesEx843.dart';
import 'Ex/cppClassesEx844.dart';
import 'Ex/cppClassesEx845.dart';
import 'Ex/cppClassesEx846.dart';
import 'Ex/cppClassesEx847.dart';
import 'Ex/cppClassesEx848.dart';
import 'Ex/cppClassesEx849.dart';

class CppClassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppClassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppClassesExMain> createState() => _CppClassesExMainState();
}

class _CppClassesExMainState extends State<CppClassesExMain> {
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
          if (widget.id == 835)
            CppClassesEx835(
              id: 835,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 836)
            CppClassesEx836(
              id: 836,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 837)
            CppClassesEx837(
              id: 837,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 838)
            CppClassesEx838(
              id: 838,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 839)
            CppClassesEx839(
              id: 839,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 840)
            CppClassesEx840(
              id: 840,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 841)
            CppClassesEx841(
              id: 841,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 842)
            CppClassesEx842(
              id: 842,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 843)
            CppClassesEx843(
              id: 843,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 844)
            CppClassesEx844(
              id: 844,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 845)
            CppClassesEx845(
              id: 845,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 846)
            CppClassesEx846(
              id: 846,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 847)
            CppClassesEx847(
              id: 847,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 848)
            CppClassesEx848(
              id: 848,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 849)
            CppClassesEx849(
              id: 849,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
