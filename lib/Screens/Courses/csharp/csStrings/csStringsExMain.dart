import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csStringsEx1001.dart';
import 'Ex/csStringsEx1002.dart';
import 'Ex/csStringsEx1003.dart';
import 'Ex/csStringsEx1004.dart';
import 'Ex/csStringsEx1005.dart';
import 'Ex/csStringsEx1006.dart';
import 'Ex/csStringsEx1007.dart';
import 'Ex/csStringsEx1008.dart';
import 'Ex/csStringsEx1009.dart';
import 'Ex/csStringsEx1010.dart';
import 'Ex/csStringsEx1011.dart';
import 'Ex/csStringsEx1012.dart';
import 'Ex/csStringsEx1013.dart';
import 'Ex/csStringsEx1014.dart';
import 'Ex/csStringsEx1015.dart';

class CSharpStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpStringsExMain> createState() => _CSharpStringsExMainState();
}

class _CSharpStringsExMainState extends State<CSharpStringsExMain> {
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
          if (widget.id == 1001)
            CSharpStringsEx1001(
              id: 1001,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1002)
            CSharpStringsEx1002(
              id: 1002,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1003)
            CSharpStringsEx1003(
              id: 1003,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1004)
            CSharpStringsEx1004(
              id: 1004,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1005)
            CSharpStringsEx1005(
              id: 1005,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1006)
            CSharpStringsEx1006(
              id: 1006,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1007)
            CSharpStringsEx1007(
              id: 1007,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1008)
            CSharpStringsEx1008(
              id: 1008,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1009)
            CSharpStringsEx1009(
              id: 1009,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1010)
            CSharpStringsEx1010(
              id: 1010,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1011)
            CSharpStringsEx1011(
              id: 1011,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1012)
            CSharpStringsEx1012(
              id: 1012,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1013)
            CSharpStringsEx1013(
              id: 1013,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1014)
            CSharpStringsEx1014(
              id: 1014,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1015)
            CSharpStringsEx1015(
              id: 1015,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}