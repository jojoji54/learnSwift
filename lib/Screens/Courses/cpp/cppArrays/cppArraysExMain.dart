import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppArraysEx790.dart';
import 'Ex/cppArraysEx791.dart';
import 'Ex/cppArraysEx792.dart';
import 'Ex/cppArraysEx793.dart';
import 'Ex/cppArraysEx794.dart';
import 'Ex/cppArraysEx795.dart';
import 'Ex/cppArraysEx796.dart';
import 'Ex/cppArraysEx797.dart';
import 'Ex/cppArraysEx798.dart';
import 'Ex/cppArraysEx799.dart';
import 'Ex/cppArraysEx800.dart';
import 'Ex/cppArraysEx801.dart';
import 'Ex/cppArraysEx802.dart';
import 'Ex/cppArraysEx803.dart';
import 'Ex/cppArraysEx804.dart';

class CppArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppArraysExMain> createState() => _CppArraysExMainState();
}

class _CppArraysExMainState extends State<CppArraysExMain> {
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
          if (widget.id == 790)
            CppArraysEx790(
              id: 790,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 791)
            CppArraysEx791(
              id: 791,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 792)
            CppArraysEx792(
              id: 792,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 793)
            CppArraysEx793(
              id: 793,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 794)
            CppArraysEx794(
              id: 794,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 795)
            CppArraysEx795(
              id: 795,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 796)
            CppArraysEx796(
              id: 796,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 797)
            CppArraysEx797(
              id: 797,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 798)
            CppArraysEx798(
              id: 798,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 799)
            CppArraysEx799(
              id: 799,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 800)
            CppArraysEx800(
              id: 800,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 801)
            CppArraysEx801(
              id: 801,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 802)
            CppArraysEx802(
              id: 802,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 803)
            CppArraysEx803(
              id: 803,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 804)
            CppArraysEx804(
              id: 804,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
