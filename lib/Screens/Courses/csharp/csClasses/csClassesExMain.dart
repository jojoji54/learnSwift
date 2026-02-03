import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csClassesEx1031.dart';
import 'Ex/csClassesEx1032.dart';
import 'Ex/csClassesEx1033.dart';
import 'Ex/csClassesEx1034.dart';
import 'Ex/csClassesEx1035.dart';
import 'Ex/csClassesEx1036.dart';
import 'Ex/csClassesEx1037.dart';
import 'Ex/csClassesEx1038.dart';
import 'Ex/csClassesEx1039.dart';
import 'Ex/csClassesEx1040.dart';
import 'Ex/csClassesEx1041.dart';
import 'Ex/csClassesEx1042.dart';
import 'Ex/csClassesEx1043.dart';
import 'Ex/csClassesEx1044.dart';
import 'Ex/csClassesEx1045.dart';

class CSharpClassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpClassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpClassesExMain> createState() => _CSharpClassesExMainState();
}

class _CSharpClassesExMainState extends State<CSharpClassesExMain> {
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
          if (widget.id == 1031)
            CSharpClassesEx1031(
              id: 1031,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1032)
            CSharpClassesEx1032(
              id: 1032,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1033)
            CSharpClassesEx1033(
              id: 1033,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1034)
            CSharpClassesEx1034(
              id: 1034,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1035)
            CSharpClassesEx1035(
              id: 1035,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1036)
            CSharpClassesEx1036(
              id: 1036,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1037)
            CSharpClassesEx1037(
              id: 1037,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1038)
            CSharpClassesEx1038(
              id: 1038,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1039)
            CSharpClassesEx1039(
              id: 1039,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1040)
            CSharpClassesEx1040(
              id: 1040,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1041)
            CSharpClassesEx1041(
              id: 1041,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1042)
            CSharpClassesEx1042(
              id: 1042,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1043)
            CSharpClassesEx1043(
              id: 1043,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1044)
            CSharpClassesEx1044(
              id: 1044,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1045)
            CSharpClassesEx1045(
              id: 1045,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}