import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2885.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2886.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2887.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2888.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2889.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2890.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2891.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2892.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2893.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2894.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2895.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2896.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2897.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2898.dart';
import 'package:learnswift/Screens/Courses/flutter/flLists/Ex/flListsEx2899.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlListsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlListsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlListsExMain> createState() => _FlListsExMainState();
}

class _FlListsExMainState extends State<FlListsExMain> {
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
          if (widget.id == 2885)
            FlListsEx2885(
              id: 2885,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2886)
            FlListsEx2886(
              id: 2886,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2887)
            FlListsEx2887(
              id: 2887,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2888)
            FlListsEx2888(
              id: 2888,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2889)
            FlListsEx2889(
              id: 2889,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2890)
            FlListsEx2890(
              id: 2890,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2891)
            FlListsEx2891(
              id: 2891,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2892)
            FlListsEx2892(
              id: 2892,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2893)
            FlListsEx2893(
              id: 2893,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2894)
            FlListsEx2894(
              id: 2894,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2895)
            FlListsEx2895(
              id: 2895,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2896)
            FlListsEx2896(
              id: 2896,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2897)
            FlListsEx2897(
              id: 2897,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2898)
            FlListsEx2898(
              id: 2898,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2899)
            FlListsEx2899(
              id: 2899,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
