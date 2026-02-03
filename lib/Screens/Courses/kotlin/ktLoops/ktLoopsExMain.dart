import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktLoopsEx1166.dart';
import 'Ex/ktLoopsEx1167.dart';
import 'Ex/ktLoopsEx1168.dart';
import 'Ex/ktLoopsEx1169.dart';
import 'Ex/ktLoopsEx1170.dart';
import 'Ex/ktLoopsEx1171.dart';
import 'Ex/ktLoopsEx1172.dart';
import 'Ex/ktLoopsEx1173.dart';
import 'Ex/ktLoopsEx1174.dart';
import 'Ex/ktLoopsEx1175.dart';
import 'Ex/ktLoopsEx1176.dart';
import 'Ex/ktLoopsEx1177.dart';
import 'Ex/ktLoopsEx1178.dart';
import 'Ex/ktLoopsEx1179.dart';
import 'Ex/ktLoopsEx1180.dart';

class KotlinLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinLoopsExMain> createState() => _KotlinLoopsExMainState();
}

class _KotlinLoopsExMainState extends State<KotlinLoopsExMain> {
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
          if (widget.id == 1166)
            KotlinLoopsEx1166(
              id: 1166,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1167)
            KotlinLoopsEx1167(
              id: 1167,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1168)
            KotlinLoopsEx1168(
              id: 1168,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1169)
            KotlinLoopsEx1169(
              id: 1169,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1170)
            KotlinLoopsEx1170(
              id: 1170,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1171)
            KotlinLoopsEx1171(
              id: 1171,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1172)
            KotlinLoopsEx1172(
              id: 1172,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1173)
            KotlinLoopsEx1173(
              id: 1173,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1174)
            KotlinLoopsEx1174(
              id: 1174,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1175)
            KotlinLoopsEx1175(
              id: 1175,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1176)
            KotlinLoopsEx1176(
              id: 1176,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1177)
            KotlinLoopsEx1177(
              id: 1177,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1178)
            KotlinLoopsEx1178(
              id: 1178,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1179)
            KotlinLoopsEx1179(
              id: 1179,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1180)
            KotlinLoopsEx1180(
              id: 1180,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}