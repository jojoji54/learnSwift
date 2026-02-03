import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktStringsEx1226.dart';
import 'Ex/ktStringsEx1227.dart';
import 'Ex/ktStringsEx1228.dart';
import 'Ex/ktStringsEx1229.dart';
import 'Ex/ktStringsEx1230.dart';
import 'Ex/ktStringsEx1231.dart';
import 'Ex/ktStringsEx1232.dart';
import 'Ex/ktStringsEx1233.dart';
import 'Ex/ktStringsEx1234.dart';
import 'Ex/ktStringsEx1235.dart';
import 'Ex/ktStringsEx1236.dart';
import 'Ex/ktStringsEx1237.dart';
import 'Ex/ktStringsEx1238.dart';
import 'Ex/ktStringsEx1239.dart';
import 'Ex/ktStringsEx1240.dart';

class KotlinStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinStringsExMain> createState() => _KotlinStringsExMainState();
}

class _KotlinStringsExMainState extends State<KotlinStringsExMain> {
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
          if (widget.id == 1226)
            KotlinStringsEx1226(
              id: 1226,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1227)
            KotlinStringsEx1227(
              id: 1227,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1228)
            KotlinStringsEx1228(
              id: 1228,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1229)
            KotlinStringsEx1229(
              id: 1229,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1230)
            KotlinStringsEx1230(
              id: 1230,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1231)
            KotlinStringsEx1231(
              id: 1231,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1232)
            KotlinStringsEx1232(
              id: 1232,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1233)
            KotlinStringsEx1233(
              id: 1233,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1234)
            KotlinStringsEx1234(
              id: 1234,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1235)
            KotlinStringsEx1235(
              id: 1235,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1236)
            KotlinStringsEx1236(
              id: 1236,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1237)
            KotlinStringsEx1237(
              id: 1237,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1238)
            KotlinStringsEx1238(
              id: 1238,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1239)
            KotlinStringsEx1239(
              id: 1239,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1240)
            KotlinStringsEx1240(
              id: 1240,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}