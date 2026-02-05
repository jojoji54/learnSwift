import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5140.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5141.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5142.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5143.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5144.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5145.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5146.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5147.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5148.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5149.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5150.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5151.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5152.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5153.dart';
import 'package:learnswift/Screens/Courses/tensorflow/tfTensors/Ex/tfTensorsEx5154.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class TfTensorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  TfTensorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<TfTensorsExMain> createState() => _TfTensorsExMainState();
}

class _TfTensorsExMainState extends State<TfTensorsExMain> {
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

          if (widget.id == 5140)
            TfTensorsEx5140(
              id: 5140,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5141)
            TfTensorsEx5141(
              id: 5141,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5142)
            TfTensorsEx5142(
              id: 5142,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5143)
            TfTensorsEx5143(
              id: 5143,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5144)
            TfTensorsEx5144(
              id: 5144,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5145)
            TfTensorsEx5145(
              id: 5145,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5146)
            TfTensorsEx5146(
              id: 5146,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5147)
            TfTensorsEx5147(
              id: 5147,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5148)
            TfTensorsEx5148(
              id: 5148,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5149)
            TfTensorsEx5149(
              id: 5149,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5150)
            TfTensorsEx5150(
              id: 5150,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5151)
            TfTensorsEx5151(
              id: 5151,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5152)
            TfTensorsEx5152(
              id: 5152,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5153)
            TfTensorsEx5153(
              id: 5153,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5154)
            TfTensorsEx5154(
              id: 5154,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
