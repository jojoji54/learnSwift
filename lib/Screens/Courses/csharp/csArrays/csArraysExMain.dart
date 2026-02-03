import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csArraysEx956.dart';
import 'Ex/csArraysEx957.dart';
import 'Ex/csArraysEx958.dart';
import 'Ex/csArraysEx959.dart';
import 'Ex/csArraysEx960.dart';
import 'Ex/csArraysEx961.dart';
import 'Ex/csArraysEx962.dart';
import 'Ex/csArraysEx963.dart';
import 'Ex/csArraysEx964.dart';
import 'Ex/csArraysEx965.dart';
import 'Ex/csArraysEx966.dart';
import 'Ex/csArraysEx967.dart';
import 'Ex/csArraysEx968.dart';
import 'Ex/csArraysEx969.dart';
import 'Ex/csArraysEx970.dart';

class CSharpArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpArraysExMain> createState() => _CSharpArraysExMainState();
}

class _CSharpArraysExMainState extends State<CSharpArraysExMain> {
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
          if (widget.id == 956)
            CSharpArraysEx956(
              id: 956,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 957)
            CSharpArraysEx957(
              id: 957,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 958)
            CSharpArraysEx958(
              id: 958,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 959)
            CSharpArraysEx959(
              id: 959,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 960)
            CSharpArraysEx960(
              id: 960,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 961)
            CSharpArraysEx961(
              id: 961,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 962)
            CSharpArraysEx962(
              id: 962,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 963)
            CSharpArraysEx963(
              id: 963,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 964)
            CSharpArraysEx964(
              id: 964,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 965)
            CSharpArraysEx965(
              id: 965,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 966)
            CSharpArraysEx966(
              id: 966,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 967)
            CSharpArraysEx967(
              id: 967,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 968)
            CSharpArraysEx968(
              id: 968,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 969)
            CSharpArraysEx969(
              id: 969,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 970)
            CSharpArraysEx970(
              id: 970,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}