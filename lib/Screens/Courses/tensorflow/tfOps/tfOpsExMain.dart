import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5155.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5156.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5157.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5158.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5159.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5160.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5161.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5162.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5163.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5164.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5165.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5166.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5167.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5168.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfOps/Ex/tfOpsEx5169.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfOpsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfOpsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfOpsExMain> createState() => _TfOpsExMainState();
}

class _TfOpsExMainState extends State<TfOpsExMain> {
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

          if (widget.id == 5155)
            TfOpsEx5155(
              id: 5155,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5156)
            TfOpsEx5156(
              id: 5156,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5157)
            TfOpsEx5157(
              id: 5157,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5158)
            TfOpsEx5158(
              id: 5158,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5159)
            TfOpsEx5159(
              id: 5159,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5160)
            TfOpsEx5160(
              id: 5160,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5161)
            TfOpsEx5161(
              id: 5161,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5162)
            TfOpsEx5162(
              id: 5162,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5163)
            TfOpsEx5163(
              id: 5163,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5164)
            TfOpsEx5164(
              id: 5164,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5165)
            TfOpsEx5165(
              id: 5165,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5166)
            TfOpsEx5166(
              id: 5166,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5167)
            TfOpsEx5167(
              id: 5167,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5168)
            TfOpsEx5168(
              id: 5168,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5169)
            TfOpsEx5169(
              id: 5169,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
