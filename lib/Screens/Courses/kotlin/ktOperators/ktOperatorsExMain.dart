import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktOperatorsEx1121.dart';
import 'Ex/ktOperatorsEx1122.dart';
import 'Ex/ktOperatorsEx1123.dart';
import 'Ex/ktOperatorsEx1124.dart';
import 'Ex/ktOperatorsEx1125.dart';
import 'Ex/ktOperatorsEx1126.dart';
import 'Ex/ktOperatorsEx1127.dart';
import 'Ex/ktOperatorsEx1128.dart';
import 'Ex/ktOperatorsEx1129.dart';
import 'Ex/ktOperatorsEx1130.dart';
import 'Ex/ktOperatorsEx1131.dart';
import 'Ex/ktOperatorsEx1132.dart';
import 'Ex/ktOperatorsEx1133.dart';
import 'Ex/ktOperatorsEx1134.dart';
import 'Ex/ktOperatorsEx1135.dart';

class KotlinOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinOperatorsExMain> createState() => _KotlinOperatorsExMainState();
}

class _KotlinOperatorsExMainState extends State<KotlinOperatorsExMain> {
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
          if (widget.id == 1121)
            KotlinOperatorsEx1121(
              id: 1121,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1122)
            KotlinOperatorsEx1122(
              id: 1122,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1123)
            KotlinOperatorsEx1123(
              id: 1123,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1124)
            KotlinOperatorsEx1124(
              id: 1124,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1125)
            KotlinOperatorsEx1125(
              id: 1125,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1126)
            KotlinOperatorsEx1126(
              id: 1126,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1127)
            KotlinOperatorsEx1127(
              id: 1127,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1128)
            KotlinOperatorsEx1128(
              id: 1128,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1129)
            KotlinOperatorsEx1129(
              id: 1129,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1130)
            KotlinOperatorsEx1130(
              id: 1130,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1131)
            KotlinOperatorsEx1131(
              id: 1131,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1132)
            KotlinOperatorsEx1132(
              id: 1132,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1133)
            KotlinOperatorsEx1133(
              id: 1133,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1134)
            KotlinOperatorsEx1134(
              id: 1134,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1135)
            KotlinOperatorsEx1135(
              id: 1135,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}