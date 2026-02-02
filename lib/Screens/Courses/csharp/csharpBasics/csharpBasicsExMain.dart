import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpBasicsEx900.dart';
import 'Ex/csharpBasicsEx901.dart';
import 'Ex/csharpBasicsEx902.dart';
import 'Ex/csharpBasicsEx903.dart';
import 'Ex/csharpBasicsEx904.dart';
import 'Ex/csharpBasicsEx905.dart';
import 'Ex/csharpBasicsEx906.dart';
import 'Ex/csharpBasicsEx907.dart';
import 'Ex/csharpBasicsEx908.dart';
import 'Ex/csharpBasicsEx909.dart';
import 'Ex/csharpBasicsEx910.dart';
import 'Ex/csharpBasicsEx911.dart';
import 'Ex/csharpBasicsEx912.dart';
import 'Ex/csharpBasicsEx913.dart';
import 'Ex/csharpBasicsEx914.dart';

class CsharpBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpBasicsExMain> createState() => _CsharpBasicsExMainState();
}

class _CsharpBasicsExMainState extends State<CsharpBasicsExMain> {
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
                    fontFamily: "InconsolataBold",
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
      body: ListView(
        children: [
          CsharpBasicsEx900(
            title: widget.title,
            id: 900,
            completed: widget.completed,
          ),
          CsharpBasicsEx901(
            title: widget.title,
            id: 901,
            completed: widget.completed,
          ),
          CsharpBasicsEx902(
            title: widget.title,
            id: 902,
            completed: widget.completed,
          ),
          CsharpBasicsEx903(
            title: widget.title,
            id: 903,
            completed: widget.completed,
          ),
          CsharpBasicsEx904(
            title: widget.title,
            id: 904,
            completed: widget.completed,
          ),
          CsharpBasicsEx905(
            title: widget.title,
            id: 905,
            completed: widget.completed,
          ),
          CsharpBasicsEx906(
            title: widget.title,
            id: 906,
            completed: widget.completed,
          ),
          CsharpBasicsEx907(
            title: widget.title,
            id: 907,
            completed: widget.completed,
          ),
          CsharpBasicsEx908(
            title: widget.title,
            id: 908,
            completed: widget.completed,
          ),
          CsharpBasicsEx909(
            title: widget.title,
            id: 909,
            completed: widget.completed,
          ),
          CsharpBasicsEx910(
            title: widget.title,
            id: 910,
            completed: widget.completed,
          ),
          CsharpBasicsEx911(
            title: widget.title,
            id: 911,
            completed: widget.completed,
          ),
          CsharpBasicsEx912(
            title: widget.title,
            id: 912,
            completed: widget.completed,
          ),
          CsharpBasicsEx913(
            title: widget.title,
            id: 913,
            completed: widget.completed,
          ),
          CsharpBasicsEx914(
            title: widget.title,
            id: 914,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
