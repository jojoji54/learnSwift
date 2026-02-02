import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpMethodsEx1020.dart';
import 'Ex/csharpMethodsEx1021.dart';
import 'Ex/csharpMethodsEx1022.dart';
import 'Ex/csharpMethodsEx1023.dart';
import 'Ex/csharpMethodsEx1024.dart';
import 'Ex/csharpMethodsEx1025.dart';
import 'Ex/csharpMethodsEx1026.dart';
import 'Ex/csharpMethodsEx1027.dart';
import 'Ex/csharpMethodsEx1028.dart';
import 'Ex/csharpMethodsEx1029.dart';
import 'Ex/csharpMethodsEx1030.dart';
import 'Ex/csharpMethodsEx1031.dart';
import 'Ex/csharpMethodsEx1032.dart';
import 'Ex/csharpMethodsEx1033.dart';
import 'Ex/csharpMethodsEx1034.dart';

class CsharpMethodsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpMethodsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpMethodsExMain> createState() => _CsharpMethodsExMainState();
}

class _CsharpMethodsExMainState extends State<CsharpMethodsExMain> {
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
          CsharpMethodsEx1020(
            title: widget.title,
            id: 1020,
            completed: widget.completed,
          ),
          CsharpMethodsEx1021(
            title: widget.title,
            id: 1021,
            completed: widget.completed,
          ),
          CsharpMethodsEx1022(
            title: widget.title,
            id: 1022,
            completed: widget.completed,
          ),
          CsharpMethodsEx1023(
            title: widget.title,
            id: 1023,
            completed: widget.completed,
          ),
          CsharpMethodsEx1024(
            title: widget.title,
            id: 1024,
            completed: widget.completed,
          ),
          CsharpMethodsEx1025(
            title: widget.title,
            id: 1025,
            completed: widget.completed,
          ),
          CsharpMethodsEx1026(
            title: widget.title,
            id: 1026,
            completed: widget.completed,
          ),
          CsharpMethodsEx1027(
            title: widget.title,
            id: 1027,
            completed: widget.completed,
          ),
          CsharpMethodsEx1028(
            title: widget.title,
            id: 1028,
            completed: widget.completed,
          ),
          CsharpMethodsEx1029(
            title: widget.title,
            id: 1029,
            completed: widget.completed,
          ),
          CsharpMethodsEx1030(
            title: widget.title,
            id: 1030,
            completed: widget.completed,
          ),
          CsharpMethodsEx1031(
            title: widget.title,
            id: 1031,
            completed: widget.completed,
          ),
          CsharpMethodsEx1032(
            title: widget.title,
            id: 1032,
            completed: widget.completed,
          ),
          CsharpMethodsEx1033(
            title: widget.title,
            id: 1033,
            completed: widget.completed,
          ),
          CsharpMethodsEx1034(
            title: widget.title,
            id: 1034,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
