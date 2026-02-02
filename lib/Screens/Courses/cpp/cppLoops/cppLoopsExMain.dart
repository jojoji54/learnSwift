import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppLoopsEx775.dart';
import 'Ex/cppLoopsEx776.dart';
import 'Ex/cppLoopsEx777.dart';
import 'Ex/cppLoopsEx778.dart';
import 'Ex/cppLoopsEx779.dart';
import 'Ex/cppLoopsEx780.dart';
import 'Ex/cppLoopsEx781.dart';
import 'Ex/cppLoopsEx782.dart';
import 'Ex/cppLoopsEx783.dart';
import 'Ex/cppLoopsEx784.dart';
import 'Ex/cppLoopsEx785.dart';
import 'Ex/cppLoopsEx786.dart';
import 'Ex/cppLoopsEx787.dart';
import 'Ex/cppLoopsEx788.dart';
import 'Ex/cppLoopsEx789.dart';

class CppLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppLoopsExMain> createState() => _CppLoopsExMainState();
}

class _CppLoopsExMainState extends State<CppLoopsExMain> {
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
          if (widget.id == 775)
            CppLoopsEx775(
              id: 775,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 776)
            CppLoopsEx776(
              id: 776,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 777)
            CppLoopsEx777(
              id: 777,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 778)
            CppLoopsEx778(
              id: 778,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 779)
            CppLoopsEx779(
              id: 779,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 780)
            CppLoopsEx780(
              id: 780,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 781)
            CppLoopsEx781(
              id: 781,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 782)
            CppLoopsEx782(
              id: 782,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 783)
            CppLoopsEx783(
              id: 783,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 784)
            CppLoopsEx784(
              id: 784,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 785)
            CppLoopsEx785(
              id: 785,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 786)
            CppLoopsEx786(
              id: 786,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 787)
            CppLoopsEx787(
              id: 787,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 788)
            CppLoopsEx788(
              id: 788,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 789)
            CppLoopsEx789(
              id: 789,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
