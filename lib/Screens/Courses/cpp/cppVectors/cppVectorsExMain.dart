import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppVectorsEx805.dart';
import 'Ex/cppVectorsEx806.dart';
import 'Ex/cppVectorsEx807.dart';
import 'Ex/cppVectorsEx808.dart';
import 'Ex/cppVectorsEx809.dart';
import 'Ex/cppVectorsEx810.dart';
import 'Ex/cppVectorsEx811.dart';
import 'Ex/cppVectorsEx812.dart';
import 'Ex/cppVectorsEx813.dart';
import 'Ex/cppVectorsEx814.dart';
import 'Ex/cppVectorsEx815.dart';
import 'Ex/cppVectorsEx816.dart';
import 'Ex/cppVectorsEx817.dart';
import 'Ex/cppVectorsEx818.dart';
import 'Ex/cppVectorsEx819.dart';

class CppVectorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppVectorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppVectorsExMain> createState() => _CppVectorsExMainState();
}

class _CppVectorsExMainState extends State<CppVectorsExMain> {
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
          if (widget.id == 805)
            CppVectorsEx805(
              id: 805,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 806)
            CppVectorsEx806(
              id: 806,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 807)
            CppVectorsEx807(
              id: 807,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 808)
            CppVectorsEx808(
              id: 808,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 809)
            CppVectorsEx809(
              id: 809,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 810)
            CppVectorsEx810(
              id: 810,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 811)
            CppVectorsEx811(
              id: 811,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 812)
            CppVectorsEx812(
              id: 812,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 813)
            CppVectorsEx813(
              id: 813,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 814)
            CppVectorsEx814(
              id: 814,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 815)
            CppVectorsEx815(
              id: 815,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 816)
            CppVectorsEx816(
              id: 816,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 817)
            CppVectorsEx817(
              id: 817,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 818)
            CppVectorsEx818(
              id: 818,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 819)
            CppVectorsEx819(
              id: 819,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
