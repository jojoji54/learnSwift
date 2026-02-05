import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5185.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5186.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5187.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5188.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5189.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5190.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5191.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5192.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5193.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5194.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5195.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5196.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5197.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5198.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfKerasIntro/Ex/tfKerasIntroEx5199.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfKerasIntroExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfKerasIntroExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfKerasIntroExMain> createState() => _TfKerasIntroExMainState();
}

class _TfKerasIntroExMainState extends State<TfKerasIntroExMain> {
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

          if (widget.id == 5185)
            TfKerasIntroEx5185(
              id: 5185,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5186)
            TfKerasIntroEx5186(
              id: 5186,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5187)
            TfKerasIntroEx5187(
              id: 5187,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5188)
            TfKerasIntroEx5188(
              id: 5188,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5189)
            TfKerasIntroEx5189(
              id: 5189,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5190)
            TfKerasIntroEx5190(
              id: 5190,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5191)
            TfKerasIntroEx5191(
              id: 5191,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5192)
            TfKerasIntroEx5192(
              id: 5192,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5193)
            TfKerasIntroEx5193(
              id: 5193,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5194)
            TfKerasIntroEx5194(
              id: 5194,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5195)
            TfKerasIntroEx5195(
              id: 5195,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5196)
            TfKerasIntroEx5196(
              id: 5196,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5197)
            TfKerasIntroEx5197(
              id: 5197,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5198)
            TfKerasIntroEx5198(
              id: 5198,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5199)
            TfKerasIntroEx5199(
              id: 5199,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
