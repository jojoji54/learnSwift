import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktWhenEx1151.dart';
import 'Ex/ktWhenEx1152.dart';
import 'Ex/ktWhenEx1153.dart';
import 'Ex/ktWhenEx1154.dart';
import 'Ex/ktWhenEx1155.dart';
import 'Ex/ktWhenEx1156.dart';
import 'Ex/ktWhenEx1157.dart';
import 'Ex/ktWhenEx1158.dart';
import 'Ex/ktWhenEx1159.dart';
import 'Ex/ktWhenEx1160.dart';
import 'Ex/ktWhenEx1161.dart';
import 'Ex/ktWhenEx1162.dart';
import 'Ex/ktWhenEx1163.dart';
import 'Ex/ktWhenEx1164.dart';

class KotlinWhenExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinWhenExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinWhenExMain> createState() => _KotlinWhenExMainState();
}

class _KotlinWhenExMainState extends State<KotlinWhenExMain> {
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
          if (widget.id == 1151)
            KotlinWhenEx1151(
              id: 1151,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1152)
            KotlinWhenEx1152(
              id: 1152,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1153)
            KotlinWhenEx1153(
              id: 1153,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1154)
            KotlinWhenEx1154(
              id: 1154,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1155)
            KotlinWhenEx1155(
              id: 1155,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1156)
            KotlinWhenEx1156(
              id: 1156,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1157)
            KotlinWhenEx1157(
              id: 1157,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1158)
            KotlinWhenEx1158(
              id: 1158,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1159)
            KotlinWhenEx1159(
              id: 1159,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1160)
            KotlinWhenEx1160(
              id: 1160,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1161)
            KotlinWhenEx1161(
              id: 1161,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1162)
            KotlinWhenEx1162(
              id: 1162,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1163)
            KotlinWhenEx1163(
              id: 1163,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1164)
            KotlinWhenEx1164(
              id: 1164,
              title: widget.title,
              completed: widget.completed,
            ),
        
        ],
      ),
    );
  }
}