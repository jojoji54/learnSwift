import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5200.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5201.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5202.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5203.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5204.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5205.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5206.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5207.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5208.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5209.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5210.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5211.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5212.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5213.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfLayersModels/Ex/tfLayersModelsEx5214.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfLayersModelsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfLayersModelsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfLayersModelsExMain> createState() => _TfLayersModelsExMainState();
}

class _TfLayersModelsExMainState extends State<TfLayersModelsExMain> {
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

          if (widget.id == 5200)
            TfLayersModelsEx5200(
              id: 5200,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5201)
            TfLayersModelsEx5201(
              id: 5201,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5202)
            TfLayersModelsEx5202(
              id: 5202,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5203)
            TfLayersModelsEx5203(
              id: 5203,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5204)
            TfLayersModelsEx5204(
              id: 5204,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5205)
            TfLayersModelsEx5205(
              id: 5205,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5206)
            TfLayersModelsEx5206(
              id: 5206,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5207)
            TfLayersModelsEx5207(
              id: 5207,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5208)
            TfLayersModelsEx5208(
              id: 5208,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5209)
            TfLayersModelsEx5209(
              id: 5209,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5210)
            TfLayersModelsEx5210(
              id: 5210,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5211)
            TfLayersModelsEx5211(
              id: 5211,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5212)
            TfLayersModelsEx5212(
              id: 5212,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5213)
            TfLayersModelsEx5213(
              id: 5213,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5214)
            TfLayersModelsEx5214(
              id: 5214,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
