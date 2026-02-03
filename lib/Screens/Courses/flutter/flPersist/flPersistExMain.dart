import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3020.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3021.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3022.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3023.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3024.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3025.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3026.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3027.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3028.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3029.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3030.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3031.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3032.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3033.dart';
import 'package:learnswift/Screens/Courses/flutter/flPersist/Ex/flPersistEx3034.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlPersistExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlPersistExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlPersistExMain> createState() => _FlPersistExMainState();
}

class _FlPersistExMainState extends State<FlPersistExMain> {
  @override
  void initState() {
    super.initState();
  }

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
          if (widget.id == 3020)
            FlPersistEx3020(
              id: 3020,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3021)
            FlPersistEx3021(
              id: 3021,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3022)
            FlPersistEx3022(
              id: 3022,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3023)
            FlPersistEx3023(
              id: 3023,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3024)
            FlPersistEx3024(
              id: 3024,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3025)
            FlPersistEx3025(
              id: 3025,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3026)
            FlPersistEx3026(
              id: 3026,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3027)
            FlPersistEx3027(
              id: 3027,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3028)
            FlPersistEx3028(
              id: 3028,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3029)
            FlPersistEx3029(
              id: 3029,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3030)
            FlPersistEx3030(
              id: 3030,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3031)
            FlPersistEx3031(
              id: 3031,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3032)
            FlPersistEx3032(
              id: 3032,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3033)
            FlPersistEx3033(
              id: 3033,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3034)
            FlPersistEx3034(
              id: 3034,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
