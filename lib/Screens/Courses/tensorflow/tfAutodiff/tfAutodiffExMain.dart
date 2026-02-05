import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5170.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5171.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5172.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5173.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5174.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5175.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5176.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5177.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5178.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5179.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5180.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5181.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5182.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5183.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAutodiff/Ex/tfAutodiffEx5184.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfAutodiffExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfAutodiffExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfAutodiffExMain> createState() => _TfAutodiffExMainState();
}

class _TfAutodiffExMainState extends State<TfAutodiffExMain> {
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

          if (widget.id == 5170)
            TfAutodiffEx5170(
              id: 5170,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5171)
            TfAutodiffEx5171(
              id: 5171,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5172)
            TfAutodiffEx5172(
              id: 5172,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5173)
            TfAutodiffEx5173(
              id: 5173,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5174)
            TfAutodiffEx5174(
              id: 5174,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5175)
            TfAutodiffEx5175(
              id: 5175,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5176)
            TfAutodiffEx5176(
              id: 5176,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5177)
            TfAutodiffEx5177(
              id: 5177,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5178)
            TfAutodiffEx5178(
              id: 5178,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5179)
            TfAutodiffEx5179(
              id: 5179,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5180)
            TfAutodiffEx5180(
              id: 5180,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5181)
            TfAutodiffEx5181(
              id: 5181,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5182)
            TfAutodiffEx5182(
              id: 5182,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5183)
            TfAutodiffEx5183(
              id: 5183,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5184)
            TfAutodiffEx5184(
              id: 5184,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
