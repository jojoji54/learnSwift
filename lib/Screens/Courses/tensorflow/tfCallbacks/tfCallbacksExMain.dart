import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5230.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5231.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5232.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5233.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5234.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5235.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5236.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5237.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5238.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5239.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5240.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5241.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5242.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5243.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfCallbacks/Ex/tfCallbacksEx5244.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfCallbacksExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfCallbacksExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfCallbacksExMain> createState() => _TfCallbacksExMainState();
}

class _TfCallbacksExMainState extends State<TfCallbacksExMain> {
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

          if (widget.id == 5230)
            TfCallbacksEx5230(
              id: 5230,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5231)
            TfCallbacksEx5231(
              id: 5231,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5232)
            TfCallbacksEx5232(
              id: 5232,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5233)
            TfCallbacksEx5233(
              id: 5233,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5234)
            TfCallbacksEx5234(
              id: 5234,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5235)
            TfCallbacksEx5235(
              id: 5235,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5236)
            TfCallbacksEx5236(
              id: 5236,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5237)
            TfCallbacksEx5237(
              id: 5237,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5238)
            TfCallbacksEx5238(
              id: 5238,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5239)
            TfCallbacksEx5239(
              id: 5239,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5240)
            TfCallbacksEx5240(
              id: 5240,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5241)
            TfCallbacksEx5241(
              id: 5241,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5242)
            TfCallbacksEx5242(
              id: 5242,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5243)
            TfCallbacksEx5243(
              id: 5243,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5244)
            TfCallbacksEx5244(
              id: 5244,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
