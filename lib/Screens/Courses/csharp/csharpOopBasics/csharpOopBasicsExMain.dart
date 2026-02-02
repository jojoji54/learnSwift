import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpOopBasicsEx1035.dart';
import 'Ex/csharpOopBasicsEx1036.dart';
import 'Ex/csharpOopBasicsEx1037.dart';
import 'Ex/csharpOopBasicsEx1038.dart';
import 'Ex/csharpOopBasicsEx1039.dart';
import 'Ex/csharpOopBasicsEx1040.dart';
import 'Ex/csharpOopBasicsEx1041.dart';
import 'Ex/csharpOopBasicsEx1042.dart';
import 'Ex/csharpOopBasicsEx1043.dart';
import 'Ex/csharpOopBasicsEx1044.dart';
import 'Ex/csharpOopBasicsEx1045.dart';
import 'Ex/csharpOopBasicsEx1046.dart';
import 'Ex/csharpOopBasicsEx1047.dart';
import 'Ex/csharpOopBasicsEx1048.dart';
import 'Ex/csharpOopBasicsEx1049.dart';

class CsharpOopBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpOopBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpOopBasicsExMain> createState() => _CsharpOopBasicsExMainState();
}

class _CsharpOopBasicsExMainState extends State<CsharpOopBasicsExMain> {
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
          CsharpOopBasicsEx1035(
            title: widget.title,
            id: 1035,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1036(
            title: widget.title,
            id: 1036,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1037(
            title: widget.title,
            id: 1037,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1038(
            title: widget.title,
            id: 1038,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1039(
            title: widget.title,
            id: 1039,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1040(
            title: widget.title,
            id: 1040,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1041(
            title: widget.title,
            id: 1041,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1042(
            title: widget.title,
            id: 1042,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1043(
            title: widget.title,
            id: 1043,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1044(
            title: widget.title,
            id: 1044,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1045(
            title: widget.title,
            id: 1045,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1046(
            title: widget.title,
            id: 1046,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1047(
            title: widget.title,
            id: 1047,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1048(
            title: widget.title,
            id: 1048,
            completed: widget.completed,
          ),
          CsharpOopBasicsEx1049(
            title: widget.title,
            id: 1049,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
