import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csStructsEnumsEx1046.dart';
import 'Ex/csStructsEnumsEx1047.dart';
import 'Ex/csStructsEnumsEx1048.dart';
import 'Ex/csStructsEnumsEx1049.dart';
import 'Ex/csStructsEnumsEx1050.dart';
import 'Ex/csStructsEnumsEx1051.dart';
import 'Ex/csStructsEnumsEx1052.dart';
import 'Ex/csStructsEnumsEx1053.dart';
import 'Ex/csStructsEnumsEx1054.dart';
import 'Ex/csStructsEnumsEx1055.dart';
import 'Ex/csStructsEnumsEx1056.dart';
import 'Ex/csStructsEnumsEx1057.dart';
import 'Ex/csStructsEnumsEx1058.dart';
import 'Ex/csStructsEnumsEx1059.dart';
import 'Ex/csStructsEnumsEx1060.dart';

class CSharpStructsenumsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpStructsenumsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpStructsenumsExMain> createState() => _CSharpStructsenumsExMainState();
}

class _CSharpStructsenumsExMainState extends State<CSharpStructsenumsExMain> {
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
          if (widget.id == 1046)
            CSharpStructsenumsEx1046(
              id: 1046,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1047)
            CSharpStructsenumsEx1047(
              id: 1047,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1048)
            CSharpStructsenumsEx1048(
              id: 1048,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1049)
            CSharpStructsenumsEx1049(
              id: 1049,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1050)
            CSharpStructsenumsEx1050(
              id: 1050,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1051)
            CSharpStructsenumsEx1051(
              id: 1051,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1052)
            CSharpStructsenumsEx1052(
              id: 1052,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1053)
            CSharpStructsenumsEx1053(
              id: 1053,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1054)
            CSharpStructsenumsEx1054(
              id: 1054,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1055)
            CSharpStructsenumsEx1055(
              id: 1055,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1056)
            CSharpStructsenumsEx1056(
              id: 1056,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1057)
            CSharpStructsenumsEx1057(
              id: 1057,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1058)
            CSharpStructsenumsEx1058(
              id: 1058,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1059)
            CSharpStructsenumsEx1059(
              id: 1059,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1060)
            CSharpStructsenumsEx1060(
              id: 1060,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}