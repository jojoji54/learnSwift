import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktDataClassesEx1271.dart';
import 'Ex/ktDataClassesEx1272.dart';
import 'Ex/ktDataClassesEx1273.dart';
import 'Ex/ktDataClassesEx1274.dart';
import 'Ex/ktDataClassesEx1275.dart';
import 'Ex/ktDataClassesEx1276.dart';
import 'Ex/ktDataClassesEx1277.dart';
import 'Ex/ktDataClassesEx1278.dart';
import 'Ex/ktDataClassesEx1279.dart';
import 'Ex/ktDataClassesEx1280.dart';
import 'Ex/ktDataClassesEx1281.dart';
import 'Ex/ktDataClassesEx1282.dart';
import 'Ex/ktDataClassesEx1283.dart';
import 'Ex/ktDataClassesEx1284.dart';
import 'Ex/ktDataClassesEx1285.dart';

class KotlinDataclassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinDataclassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinDataclassesExMain> createState() => _KotlinDataclassesExMainState();
}

class _KotlinDataclassesExMainState extends State<KotlinDataclassesExMain> {
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
          if (widget.id == 1271)
            KotlinDataclassesEx1271(
              id: 1271,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1272)
            KotlinDataclassesEx1272(
              id: 1272,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1273)
            KotlinDataclassesEx1273(
              id: 1273,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1274)
            KotlinDataclassesEx1274(
              id: 1274,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1275)
            KotlinDataclassesEx1275(
              id: 1275,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1276)
            KotlinDataclassesEx1276(
              id: 1276,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1277)
            KotlinDataclassesEx1277(
              id: 1277,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1278)
            KotlinDataclassesEx1278(
              id: 1278,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1279)
            KotlinDataclassesEx1279(
              id: 1279,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1280)
            KotlinDataclassesEx1280(
              id: 1280,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1281)
            KotlinDataclassesEx1281(
              id: 1281,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1282)
            KotlinDataclassesEx1282(
              id: 1282,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1283)
            KotlinDataclassesEx1283(
              id: 1283,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1284)
            KotlinDataclassesEx1284(
              id: 1284,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1285)
            KotlinDataclassesEx1285(
              id: 1285,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}