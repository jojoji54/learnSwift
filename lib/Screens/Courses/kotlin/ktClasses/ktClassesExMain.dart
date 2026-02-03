import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktClassesEx1256.dart';
import 'Ex/ktClassesEx1257.dart';
import 'Ex/ktClassesEx1258.dart';
import 'Ex/ktClassesEx1259.dart';
import 'Ex/ktClassesEx1260.dart';
import 'Ex/ktClassesEx1261.dart';
import 'Ex/ktClassesEx1262.dart';
import 'Ex/ktClassesEx1263.dart';
import 'Ex/ktClassesEx1264.dart';
import 'Ex/ktClassesEx1265.dart';
import 'Ex/ktClassesEx1266.dart';
import 'Ex/ktClassesEx1267.dart';
import 'Ex/ktClassesEx1268.dart';
import 'Ex/ktClassesEx1269.dart';
import 'Ex/ktClassesEx1270.dart';

class KotlinClassesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinClassesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinClassesExMain> createState() => _KotlinClassesExMainState();
}

class _KotlinClassesExMainState extends State<KotlinClassesExMain> {
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
          if (widget.id == 1256)
            KotlinClassesEx1256(
              id: 1256,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1257)
            KotlinClassesEx1257(
              id: 1257,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1258)
            KotlinClassesEx1258(
              id: 1258,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1259)
            KotlinClassesEx1259(
              id: 1259,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1260)
            KotlinClassesEx1260(
              id: 1260,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1261)
            KotlinClassesEx1261(
              id: 1261,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1262)
            KotlinClassesEx1262(
              id: 1262,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1263)
            KotlinClassesEx1263(
              id: 1263,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1264)
            KotlinClassesEx1264(
              id: 1264,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1265)
            KotlinClassesEx1265(
              id: 1265,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1266)
            KotlinClassesEx1266(
              id: 1266,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1267)
            KotlinClassesEx1267(
              id: 1267,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1268)
            KotlinClassesEx1268(
              id: 1268,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1269)
            KotlinClassesEx1269(
              id: 1269,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1270)
            KotlinClassesEx1270(
              id: 1270,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}