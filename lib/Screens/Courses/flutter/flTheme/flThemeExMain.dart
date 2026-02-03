import 'package:flutter/material.dart';

import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2975.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2976.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2977.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2978.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2979.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2980.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2981.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2982.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2983.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2984.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2985.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2986.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2987.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2988.dart';
import 'package:learnswift/Screens/Courses/flutter/flTheme/Ex/flThemeEx2989.dart';

import 'package:learnswift/Widgets/catInfoIcon.dart';

class FlThemeExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  FlThemeExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<FlThemeExMain> createState() => _FlThemeExMainState();
}

class _FlThemeExMainState extends State<FlThemeExMain> {
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
          if (widget.id == 2975)
            FlThemeEx2975(
              id: 2975,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2976)
            FlThemeEx2976(
              id: 2976,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2977)
            FlThemeEx2977(
              id: 2977,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2978)
            FlThemeEx2978(
              id: 2978,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2979)
            FlThemeEx2979(
              id: 2979,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2980)
            FlThemeEx2980(
              id: 2980,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2981)
            FlThemeEx2981(
              id: 2981,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2982)
            FlThemeEx2982(
              id: 2982,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2983)
            FlThemeEx2983(
              id: 2983,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2984)
            FlThemeEx2984(
              id: 2984,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2985)
            FlThemeEx2985(
              id: 2985,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2986)
            FlThemeEx2986(
              id: 2986,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2987)
            FlThemeEx2987(
              id: 2987,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2988)
            FlThemeEx2988(
              id: 2988,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2989)
            FlThemeEx2989(
              id: 2989,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
