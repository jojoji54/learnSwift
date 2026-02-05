import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5305.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5306.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5307.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5308.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5309.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5310.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5311.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5312.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5313.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5314.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5315.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5316.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5317.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5318.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfDeployment/Ex/tfDeploymentEx5319.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfDeploymentExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfDeploymentExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfDeploymentExMain> createState() => _TfDeploymentExMainState();
}

class _TfDeploymentExMainState extends State<TfDeploymentExMain> {
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

          if (widget.id == 5305)
            TfDeploymentEx5305(
              id: 5305,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5306)
            TfDeploymentEx5306(
              id: 5306,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5307)
            TfDeploymentEx5307(
              id: 5307,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5308)
            TfDeploymentEx5308(
              id: 5308,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5309)
            TfDeploymentEx5309(
              id: 5309,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5310)
            TfDeploymentEx5310(
              id: 5310,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5311)
            TfDeploymentEx5311(
              id: 5311,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5312)
            TfDeploymentEx5312(
              id: 5312,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5313)
            TfDeploymentEx5313(
              id: 5313,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5314)
            TfDeploymentEx5314(
              id: 5314,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5315)
            TfDeploymentEx5315(
              id: 5315,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5316)
            TfDeploymentEx5316(
              id: 5316,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5317)
            TfDeploymentEx5317(
              id: 5317,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5318)
            TfDeploymentEx5318(
              id: 5318,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5319)
            TfDeploymentEx5319(
              id: 5319,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
