import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5275.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5276.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5277.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5278.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5279.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5280.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5281.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5282.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5283.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5284.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5285.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5286.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5287.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5288.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfSaving/Ex/tfSavingEx5289.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfSavingExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfSavingExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfSavingExMain> createState() => _TfSavingExMainState();
}

class _TfSavingExMainState extends State<TfSavingExMain> {
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

          if (widget.id == 5275)
            TfSavingEx5275(
              id: 5275,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5276)
            TfSavingEx5276(
              id: 5276,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5277)
            TfSavingEx5277(
              id: 5277,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5278)
            TfSavingEx5278(
              id: 5278,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5279)
            TfSavingEx5279(
              id: 5279,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5280)
            TfSavingEx5280(
              id: 5280,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5281)
            TfSavingEx5281(
              id: 5281,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5282)
            TfSavingEx5282(
              id: 5282,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5283)
            TfSavingEx5283(
              id: 5283,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5284)
            TfSavingEx5284(
              id: 5284,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5285)
            TfSavingEx5285(
              id: 5285,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5286)
            TfSavingEx5286(
              id: 5286,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5287)
            TfSavingEx5287(
              id: 5287,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5288)
            TfSavingEx5288(
              id: 5288,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5289)
            TfSavingEx5289(
              id: 5289,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
