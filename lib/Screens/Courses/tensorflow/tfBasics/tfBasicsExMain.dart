import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5125.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5126.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5127.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5128.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5129.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5130.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5131.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5132.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5133.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5134.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5135.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5136.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5137.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5138.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfBasics/Ex/tfBasicsEx5139.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfBasicsExMain> createState() => _TfBasicsExMainState();
}

class _TfBasicsExMainState extends State<TfBasicsExMain> {
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

          if (widget.id == 5125)
            TfBasicsEx5125(
              id: 5125,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5126)
            TfBasicsEx5126(
              id: 5126,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5127)
            TfBasicsEx5127(
              id: 5127,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5128)
            TfBasicsEx5128(
              id: 5128,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5129)
            TfBasicsEx5129(
              id: 5129,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5130)
            TfBasicsEx5130(
              id: 5130,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5131)
            TfBasicsEx5131(
              id: 5131,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5132)
            TfBasicsEx5132(
              id: 5132,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5133)
            TfBasicsEx5133(
              id: 5133,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5134)
            TfBasicsEx5134(
              id: 5134,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5135)
            TfBasicsEx5135(
              id: 5135,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5136)
            TfBasicsEx5136(
              id: 5136,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5137)
            TfBasicsEx5137(
              id: 5137,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5138)
            TfBasicsEx5138(
              id: 5138,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5139)
            TfBasicsEx5139(
              id: 5139,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
