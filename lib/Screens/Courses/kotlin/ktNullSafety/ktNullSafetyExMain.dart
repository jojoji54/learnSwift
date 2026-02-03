import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktNullSafetyEx1286.dart';
import 'Ex/ktNullSafetyEx1287.dart';
import 'Ex/ktNullSafetyEx1288.dart';
import 'Ex/ktNullSafetyEx1289.dart';
import 'Ex/ktNullSafetyEx1290.dart';
import 'Ex/ktNullSafetyEx1291.dart';
import 'Ex/ktNullSafetyEx1292.dart';
import 'Ex/ktNullSafetyEx1293.dart';
import 'Ex/ktNullSafetyEx1294.dart';
import 'Ex/ktNullSafetyEx1295.dart';
import 'Ex/ktNullSafetyEx1296.dart';
import 'Ex/ktNullSafetyEx1297.dart';
import 'Ex/ktNullSafetyEx1298.dart';
import 'Ex/ktNullSafetyEx1299.dart';
import 'Ex/ktNullSafetyEx1300.dart';

class KotlinNullsafetyExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinNullsafetyExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinNullsafetyExMain> createState() => _KotlinNullsafetyExMainState();
}

class _KotlinNullsafetyExMainState extends State<KotlinNullsafetyExMain> {
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
          if (widget.id == 1286)
            KotlinNullsafetyEx1286(
              id: 1286,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1287)
            KotlinNullsafetyEx1287(
              id: 1287,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1288)
            KotlinNullsafetyEx1288(
              id: 1288,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1289)
            KotlinNullsafetyEx1289(
              id: 1289,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1290)
            KotlinNullsafetyEx1290(
              id: 1290,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1291)
            KotlinNullsafetyEx1291(
              id: 1291,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1292)
            KotlinNullsafetyEx1292(
              id: 1292,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1293)
            KotlinNullsafetyEx1293(
              id: 1293,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1294)
            KotlinNullsafetyEx1294(
              id: 1294,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1295)
            KotlinNullsafetyEx1295(
              id: 1295,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1296)
            KotlinNullsafetyEx1296(
              id: 1296,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1297)
            KotlinNullsafetyEx1297(
              id: 1297,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1298)
            KotlinNullsafetyEx1298(
              id: 1298,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1299)
            KotlinNullsafetyEx1299(
              id: 1299,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1300)
            KotlinNullsafetyEx1300(
              id: 1300,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}