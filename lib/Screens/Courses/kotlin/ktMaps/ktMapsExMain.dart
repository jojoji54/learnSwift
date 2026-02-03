import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktMapsEx1211.dart';
import 'Ex/ktMapsEx1212.dart';
import 'Ex/ktMapsEx1213.dart';
import 'Ex/ktMapsEx1214.dart';
import 'Ex/ktMapsEx1215.dart';
import 'Ex/ktMapsEx1216.dart';
import 'Ex/ktMapsEx1217.dart';
import 'Ex/ktMapsEx1218.dart';
import 'Ex/ktMapsEx1219.dart';
import 'Ex/ktMapsEx1220.dart';
import 'Ex/ktMapsEx1221.dart';
import 'Ex/ktMapsEx1222.dart';
import 'Ex/ktMapsEx1223.dart';
import 'Ex/ktMapsEx1224.dart';
import 'Ex/ktMapsEx1225.dart';

class KotlinMapsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinMapsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinMapsExMain> createState() => _KotlinMapsExMainState();
}

class _KotlinMapsExMainState extends State<KotlinMapsExMain> {
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
          if (widget.id == 1211)
            KotlinMapsEx1211(
              id: 1211,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1212)
            KotlinMapsEx1212(
              id: 1212,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1213)
            KotlinMapsEx1213(
              id: 1213,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1214)
            KotlinMapsEx1214(
              id: 1214,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1215)
            KotlinMapsEx1215(
              id: 1215,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1216)
            KotlinMapsEx1216(
              id: 1216,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1217)
            KotlinMapsEx1217(
              id: 1217,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1218)
            KotlinMapsEx1218(
              id: 1218,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1219)
            KotlinMapsEx1219(
              id: 1219,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1220)
            KotlinMapsEx1220(
              id: 1220,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1221)
            KotlinMapsEx1221(
              id: 1221,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1222)
            KotlinMapsEx1222(
              id: 1222,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1223)
            KotlinMapsEx1223(
              id: 1223,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1224)
            KotlinMapsEx1224(
              id: 1224,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1225)
            KotlinMapsEx1225(
              id: 1225,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}