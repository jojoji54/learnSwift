import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5290.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5291.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5292.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5293.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5294.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5295.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5296.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5297.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5298.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5299.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5300.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5301.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5302.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5303.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensorBoard/Ex/tfTensorBoardEx5304.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfTensorBoardExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfTensorBoardExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfTensorBoardExMain> createState() => _TfTensorBoardExMainState();
}

class _TfTensorBoardExMainState extends State<TfTensorBoardExMain> {
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

          if (widget.id == 5290)
            TfTensorBoardEx5290(
              id: 5290,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5291)
            TfTensorBoardEx5291(
              id: 5291,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5292)
            TfTensorBoardEx5292(
              id: 5292,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5293)
            TfTensorBoardEx5293(
              id: 5293,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5294)
            TfTensorBoardEx5294(
              id: 5294,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5295)
            TfTensorBoardEx5295(
              id: 5295,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5296)
            TfTensorBoardEx5296(
              id: 5296,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5297)
            TfTensorBoardEx5297(
              id: 5297,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5298)
            TfTensorBoardEx5298(
              id: 5298,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5299)
            TfTensorBoardEx5299(
              id: 5299,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5300)
            TfTensorBoardEx5300(
              id: 5300,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5301)
            TfTensorBoardEx5301(
              id: 5301,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5302)
            TfTensorBoardEx5302(
              id: 5302,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5303)
            TfTensorBoardEx5303(
              id: 5303,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5304)
            TfTensorBoardEx5304(
              id: 5304,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
