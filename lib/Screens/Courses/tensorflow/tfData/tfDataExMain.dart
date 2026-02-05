import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5245.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5246.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5247.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5248.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5249.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5250.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5251.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5252.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5253.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5254.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5255.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5256.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5257.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5258.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfData/Ex/tfDataEx5259.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfDataExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfDataExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfDataExMain> createState() => _TfDataExMainState();
}

class _TfDataExMainState extends State<TfDataExMain> {
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

          if (widget.id == 5245)
            TfDataEx5245(
              id: 5245,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5246)
            TfDataEx5246(
              id: 5246,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5247)
            TfDataEx5247(
              id: 5247,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5248)
            TfDataEx5248(
              id: 5248,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5249)
            TfDataEx5249(
              id: 5249,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5250)
            TfDataEx5250(
              id: 5250,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5251)
            TfDataEx5251(
              id: 5251,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5252)
            TfDataEx5252(
              id: 5252,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5253)
            TfDataEx5253(
              id: 5253,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5254)
            TfDataEx5254(
              id: 5254,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5255)
            TfDataEx5255(
              id: 5255,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5256)
            TfDataEx5256(
              id: 5256,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5257)
            TfDataEx5257(
              id: 5257,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5258)
            TfDataEx5258(
              id: 5258,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5259)
            TfDataEx5259(
              id: 5259,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
