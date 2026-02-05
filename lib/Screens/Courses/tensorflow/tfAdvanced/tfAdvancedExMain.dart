import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5335.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5336.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5337.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5338.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5339.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5340.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5341.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5342.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5343.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5344.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5345.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5346.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5347.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5348.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfAdvanced/Ex/tfAdvancedEx5349.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfAdvancedExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfAdvancedExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfAdvancedExMain> createState() => _TfAdvancedExMainState();
}

class _TfAdvancedExMainState extends State<TfAdvancedExMain> {
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

          if (widget.id == 5335)
            TfAdvancedEx5335(
              id: 5335,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5336)
            TfAdvancedEx5336(
              id: 5336,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5337)
            TfAdvancedEx5337(
              id: 5337,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5338)
            TfAdvancedEx5338(
              id: 5338,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5339)
            TfAdvancedEx5339(
              id: 5339,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5340)
            TfAdvancedEx5340(
              id: 5340,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5341)
            TfAdvancedEx5341(
              id: 5341,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5342)
            TfAdvancedEx5342(
              id: 5342,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5343)
            TfAdvancedEx5343(
              id: 5343,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5344)
            TfAdvancedEx5344(
              id: 5344,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5345)
            TfAdvancedEx5345(
              id: 5345,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5346)
            TfAdvancedEx5346(
              id: 5346,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5347)
            TfAdvancedEx5347(
              id: 5347,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5348)
            TfAdvancedEx5348(
              id: 5348,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5349)
            TfAdvancedEx5349(
              id: 5349,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
