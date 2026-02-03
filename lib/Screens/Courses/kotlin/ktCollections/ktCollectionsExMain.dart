import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/ktCollectionsEx1301.dart';
import 'Ex/ktCollectionsEx1302.dart';
import 'Ex/ktCollectionsEx1303.dart';
import 'Ex/ktCollectionsEx1304.dart';
import 'Ex/ktCollectionsEx1305.dart';
import 'Ex/ktCollectionsEx1306.dart';
import 'Ex/ktCollectionsEx1307.dart';
import 'Ex/ktCollectionsEx1308.dart';
import 'Ex/ktCollectionsEx1309.dart';
import 'Ex/ktCollectionsEx1310.dart';
import 'Ex/ktCollectionsEx1311.dart';
import 'Ex/ktCollectionsEx1312.dart';
import 'Ex/ktCollectionsEx1313.dart';
import 'Ex/ktCollectionsEx1314.dart';
import 'Ex/ktCollectionsEx1315.dart';

class KotlinCollectionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  KotlinCollectionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<KotlinCollectionsExMain> createState() => _KotlinCollectionsExMainState();
}

class _KotlinCollectionsExMainState extends State<KotlinCollectionsExMain> {
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
          if (widget.id == 1301)
            KotlinCollectionsEx1301(
              id: 1301,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1302)
            KotlinCollectionsEx1302(
              id: 1302,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1303)
            KotlinCollectionsEx1303(
              id: 1303,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1304)
            KotlinCollectionsEx1304(
              id: 1304,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1305)
            KotlinCollectionsEx1305(
              id: 1305,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1306)
            KotlinCollectionsEx1306(
              id: 1306,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1307)
            KotlinCollectionsEx1307(
              id: 1307,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1308)
            KotlinCollectionsEx1308(
              id: 1308,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1309)
            KotlinCollectionsEx1309(
              id: 1309,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1310)
            KotlinCollectionsEx1310(
              id: 1310,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1311)
            KotlinCollectionsEx1311(
              id: 1311,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1312)
            KotlinCollectionsEx1312(
              id: 1312,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1313)
            KotlinCollectionsEx1313(
              id: 1313,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1314)
            KotlinCollectionsEx1314(
              id: 1314,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1315)
            KotlinCollectionsEx1315(
              id: 1315,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}