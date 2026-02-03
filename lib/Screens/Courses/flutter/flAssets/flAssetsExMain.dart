import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2990.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2991.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2992.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2993.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2994.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2995.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2996.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2997.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2998.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx2999.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx3000.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx3001.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx3002.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx3003.dart';
import 'package:learnswift/Screens/Courses/flutter/flAssets/Ex/flAssetsEx3004.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlAssetsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlAssetsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlAssetsExMain> createState() => _FlAssetsExMainState();
}

class _FlAssetsExMainState extends State<FlAssetsExMain> {
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
          if (widget.id == 2990)
            FlAssetsEx2990(
              id: 2990,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2991)
            FlAssetsEx2991(
              id: 2991,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2992)
            FlAssetsEx2992(
              id: 2992,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2993)
            FlAssetsEx2993(
              id: 2993,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2994)
            FlAssetsEx2994(
              id: 2994,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2995)
            FlAssetsEx2995(
              id: 2995,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2996)
            FlAssetsEx2996(
              id: 2996,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2997)
            FlAssetsEx2997(
              id: 2997,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2998)
            FlAssetsEx2998(
              id: 2998,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2999)
            FlAssetsEx2999(
              id: 2999,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3000)
            FlAssetsEx3000(
              id: 3000,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3001)
            FlAssetsEx3001(
              id: 3001,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3002)
            FlAssetsEx3002(
              id: 3002,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3003)
            FlAssetsEx3003(
              id: 3003,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3004)
            FlAssetsEx3004(
              id: 3004,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
