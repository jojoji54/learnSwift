import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5320.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5321.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5322.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5323.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5324.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5325.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5326.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5327.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5328.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5329.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5330.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5331.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5332.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5333.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfPerformance/Ex/tfPerformanceEx5334.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfPerformanceExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfPerformanceExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfPerformanceExMain> createState() => _TfPerformanceExMainState();
}

class _TfPerformanceExMainState extends State<TfPerformanceExMain> {
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

          if (widget.id == 5320)
            TfPerformanceEx5320(
              id: 5320,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5321)
            TfPerformanceEx5321(
              id: 5321,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5322)
            TfPerformanceEx5322(
              id: 5322,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5323)
            TfPerformanceEx5323(
              id: 5323,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5324)
            TfPerformanceEx5324(
              id: 5324,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5325)
            TfPerformanceEx5325(
              id: 5325,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5326)
            TfPerformanceEx5326(
              id: 5326,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5327)
            TfPerformanceEx5327(
              id: 5327,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5328)
            TfPerformanceEx5328(
              id: 5328,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5329)
            TfPerformanceEx5329(
              id: 5329,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5330)
            TfPerformanceEx5330(
              id: 5330,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5331)
            TfPerformanceEx5331(
              id: 5331,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5332)
            TfPerformanceEx5332(
              id: 5332,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5333)
            TfPerformanceEx5333(
              id: 5333,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5334)
            TfPerformanceEx5334(
              id: 5334,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
