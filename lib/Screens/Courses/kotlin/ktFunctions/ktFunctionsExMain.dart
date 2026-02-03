import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktFunctionsEx1241.dart';
import 'Ex/ktFunctionsEx1242.dart';
import 'Ex/ktFunctionsEx1243.dart';
import 'Ex/ktFunctionsEx1244.dart';
import 'Ex/ktFunctionsEx1245.dart';
import 'Ex/ktFunctionsEx1246.dart';
import 'Ex/ktFunctionsEx1247.dart';
import 'Ex/ktFunctionsEx1248.dart';
import 'Ex/ktFunctionsEx1249.dart';
import 'Ex/ktFunctionsEx1250.dart';
import 'Ex/ktFunctionsEx1251.dart';
import 'Ex/ktFunctionsEx1252.dart';
import 'Ex/ktFunctionsEx1253.dart';
import 'Ex/ktFunctionsEx1254.dart';
import 'Ex/ktFunctionsEx1255.dart';

class KotlinFunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinFunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinFunctionsExMain> createState() => _KotlinFunctionsExMainState();
}

class _KotlinFunctionsExMainState extends State<KotlinFunctionsExMain> {
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
          if (widget.id == 1241)
            KotlinFunctionsEx1241(
              id: 1241,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1242)
            KotlinFunctionsEx1242(
              id: 1242,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1243)
            KotlinFunctionsEx1243(
              id: 1243,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1244)
            KotlinFunctionsEx1244(
              id: 1244,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1245)
            KotlinFunctionsEx1245(
              id: 1245,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1246)
            KotlinFunctionsEx1246(
              id: 1246,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1247)
            KotlinFunctionsEx1247(
              id: 1247,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1248)
            KotlinFunctionsEx1248(
              id: 1248,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1249)
            KotlinFunctionsEx1249(
              id: 1249,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1250)
            KotlinFunctionsEx1250(
              id: 1250,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1251)
            KotlinFunctionsEx1251(
              id: 1251,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1252)
            KotlinFunctionsEx1252(
              id: 1252,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1253)
            KotlinFunctionsEx1253(
              id: 1253,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1254)
            KotlinFunctionsEx1254(
              id: 1254,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1255)
            KotlinFunctionsEx1255(
              id: 1255,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}