import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktBasicsEx1091.dart';
import 'Ex/ktBasicsEx1092.dart';
import 'Ex/ktBasicsEx1093.dart';
import 'Ex/ktBasicsEx1094.dart';
import 'Ex/ktBasicsEx1095.dart';
import 'Ex/ktBasicsEx1096.dart';
import 'Ex/ktBasicsEx1097.dart';
import 'Ex/ktBasicsEx1098.dart';
import 'Ex/ktBasicsEx1099.dart';
import 'Ex/ktBasicsEx1100.dart';
import 'Ex/ktBasicsEx1101.dart';
import 'Ex/ktBasicsEx1102.dart';
import 'Ex/ktBasicsEx1103.dart';
import 'Ex/ktBasicsEx1104.dart';
import 'Ex/ktBasicsEx1105.dart';

class KotlinBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinBasicsExMain> createState() => _KotlinBasicsExMainState();
}

class _KotlinBasicsExMainState extends State<KotlinBasicsExMain> {
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
          if (widget.id == 1091)
            KotlinBasicsEx1091(
              id: 1091,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1092)
            KotlinBasicsEx1092(
              id: 1092,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1093)
            KotlinBasicsEx1093(
              id: 1093,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1094)
            KotlinBasicsEx1094(
              id: 1094,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1095)
            KotlinBasicsEx1095(
              id: 1095,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1096)
            KotlinBasicsEx1096(
              id: 1096,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1097)
            KotlinBasicsEx1097(
              id: 1097,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1098)
            KotlinBasicsEx1098(
              id: 1098,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1099)
            KotlinBasicsEx1099(
              id: 1099,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1100)
            KotlinBasicsEx1100(
              id: 1100,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1101)
            KotlinBasicsEx1101(
              id: 1101,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1102)
            KotlinBasicsEx1102(
              id: 1102,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1103)
            KotlinBasicsEx1103(
              id: 1103,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1104)
            KotlinBasicsEx1104(
              id: 1104,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1105)
            KotlinBasicsEx1105(
              id: 1105,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}