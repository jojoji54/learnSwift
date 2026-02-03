import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktArraysEx1181.dart';
import 'Ex/ktArraysEx1182.dart';
import 'Ex/ktArraysEx1183.dart';
import 'Ex/ktArraysEx1184.dart';
import 'Ex/ktArraysEx1185.dart';
import 'Ex/ktArraysEx1186.dart';
import 'Ex/ktArraysEx1187.dart';
import 'Ex/ktArraysEx1188.dart';
import 'Ex/ktArraysEx1189.dart';
import 'Ex/ktArraysEx1190.dart';
import 'Ex/ktArraysEx1191.dart';
import 'Ex/ktArraysEx1192.dart';
import 'Ex/ktArraysEx1193.dart';
import 'Ex/ktArraysEx1194.dart';
import 'Ex/ktArraysEx1195.dart';

class KotlinArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinArraysExMain> createState() => _KotlinArraysExMainState();
}

class _KotlinArraysExMainState extends State<KotlinArraysExMain> {
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
          if (widget.id == 1181)
            KotlinArraysEx1181(
              id: 1181,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1182)
            KotlinArraysEx1182(
              id: 1182,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1183)
            KotlinArraysEx1183(
              id: 1183,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1184)
            KotlinArraysEx1184(
              id: 1184,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1185)
            KotlinArraysEx1185(
              id: 1185,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1186)
            KotlinArraysEx1186(
              id: 1186,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1187)
            KotlinArraysEx1187(
              id: 1187,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1188)
            KotlinArraysEx1188(
              id: 1188,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1189)
            KotlinArraysEx1189(
              id: 1189,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1190)
            KotlinArraysEx1190(
              id: 1190,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1191)
            KotlinArraysEx1191(
              id: 1191,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1192)
            KotlinArraysEx1192(
              id: 1192,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1193)
            KotlinArraysEx1193(
              id: 1193,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1194)
            KotlinArraysEx1194(
              id: 1194,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1195)
            KotlinArraysEx1195(
              id: 1195,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}