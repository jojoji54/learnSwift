import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktVariablesEx1106.dart';
import 'Ex/ktVariablesEx1107.dart';
import 'Ex/ktVariablesEx1108.dart';
import 'Ex/ktVariablesEx1109.dart';
import 'Ex/ktVariablesEx1110.dart';
import 'Ex/ktVariablesEx1111.dart';
import 'Ex/ktVariablesEx1112.dart';
import 'Ex/ktVariablesEx1113.dart';
import 'Ex/ktVariablesEx1114.dart';
import 'Ex/ktVariablesEx1115.dart';
import 'Ex/ktVariablesEx1116.dart';
import 'Ex/ktVariablesEx1117.dart';
import 'Ex/ktVariablesEx1118.dart';
import 'Ex/ktVariablesEx1119.dart';
import 'Ex/ktVariablesEx1120.dart';

class KotlinVariablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinVariablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinVariablesExMain> createState() => _KotlinVariablesExMainState();
}

class _KotlinVariablesExMainState extends State<KotlinVariablesExMain> {
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
          if (widget.id == 1106)
            KotlinVariablesEx1106(
              id: 1106,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1107)
            KotlinVariablesEx1107(
              id: 1107,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1108)
            KotlinVariablesEx1108(
              id: 1108,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1109)
            KotlinVariablesEx1109(
              id: 1109,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1110)
            KotlinVariablesEx1110(
              id: 1110,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1111)
            KotlinVariablesEx1111(
              id: 1111,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1112)
            KotlinVariablesEx1112(
              id: 1112,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1113)
            KotlinVariablesEx1113(
              id: 1113,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1114)
            KotlinVariablesEx1114(
              id: 1114,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1115)
            KotlinVariablesEx1115(
              id: 1115,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1116)
            KotlinVariablesEx1116(
              id: 1116,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1117)
            KotlinVariablesEx1117(
              id: 1117,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1118)
            KotlinVariablesEx1118(
              id: 1118,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1119)
            KotlinVariablesEx1119(
              id: 1119,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1120)
            KotlinVariablesEx1120(
              id: 1120,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}