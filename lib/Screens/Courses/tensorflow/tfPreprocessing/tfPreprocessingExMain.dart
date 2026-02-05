import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5260.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5261.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5262.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5263.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5264.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5265.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5266.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5267.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5268.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5269.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5270.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5271.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5272.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5273.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPreprocessing/Ex/tfPreprocessingEx5274.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfPreprocessingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfPreprocessingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfPreprocessingExMain> createState() => _TfPreprocessingExMainState();
}

class _TfPreprocessingExMainState extends State<TfPreprocessingExMain> {
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

          if (widget.id == 5260)
            TfPreprocessingEx5260(
              id: 5260,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5261)
            TfPreprocessingEx5261(
              id: 5261,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5262)
            TfPreprocessingEx5262(
              id: 5262,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5263)
            TfPreprocessingEx5263(
              id: 5263,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5264)
            TfPreprocessingEx5264(
              id: 5264,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5265)
            TfPreprocessingEx5265(
              id: 5265,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5266)
            TfPreprocessingEx5266(
              id: 5266,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5267)
            TfPreprocessingEx5267(
              id: 5267,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5268)
            TfPreprocessingEx5268(
              id: 5268,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5269)
            TfPreprocessingEx5269(
              id: 5269,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5270)
            TfPreprocessingEx5270(
              id: 5270,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5271)
            TfPreprocessingEx5271(
              id: 5271,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5272)
            TfPreprocessingEx5272(
              id: 5272,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5273)
            TfPreprocessingEx5273(
              id: 5273,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5274)
            TfPreprocessingEx5274(
              id: 5274,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
