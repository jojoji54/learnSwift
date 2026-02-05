import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5215.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5216.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5217.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5218.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5219.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5220.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5221.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5222.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5223.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5224.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5225.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5226.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5227.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5228.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTraining/Ex/tfTrainingEx5229.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfTrainingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfTrainingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfTrainingExMain> createState() => _TfTrainingExMainState();
}

class _TfTrainingExMainState extends State<TfTrainingExMain> {
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

          if (widget.id == 5215)
            TfTrainingEx5215(
              id: 5215,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5216)
            TfTrainingEx5216(
              id: 5216,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5217)
            TfTrainingEx5217(
              id: 5217,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5218)
            TfTrainingEx5218(
              id: 5218,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5219)
            TfTrainingEx5219(
              id: 5219,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5220)
            TfTrainingEx5220(
              id: 5220,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5221)
            TfTrainingEx5221(
              id: 5221,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5222)
            TfTrainingEx5222(
              id: 5222,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5223)
            TfTrainingEx5223(
              id: 5223,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5224)
            TfTrainingEx5224(
              id: 5224,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5225)
            TfTrainingEx5225(
              id: 5225,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5226)
            TfTrainingEx5226(
              id: 5226,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5227)
            TfTrainingEx5227(
              id: 5227,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5228)
            TfTrainingEx5228(
              id: 5228,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5229)
            TfTrainingEx5229(
              id: 5229,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
