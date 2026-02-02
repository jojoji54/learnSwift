import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpExceptionsEx1050.dart';
import 'Ex/csharpExceptionsEx1051.dart';
import 'Ex/csharpExceptionsEx1052.dart';
import 'Ex/csharpExceptionsEx1053.dart';
import 'Ex/csharpExceptionsEx1054.dart';
import 'Ex/csharpExceptionsEx1055.dart';
import 'Ex/csharpExceptionsEx1056.dart';
import 'Ex/csharpExceptionsEx1057.dart';
import 'Ex/csharpExceptionsEx1058.dart';
import 'Ex/csharpExceptionsEx1059.dart';
import 'Ex/csharpExceptionsEx1060.dart';
import 'Ex/csharpExceptionsEx1061.dart';
import 'Ex/csharpExceptionsEx1062.dart';
import 'Ex/csharpExceptionsEx1063.dart';
import 'Ex/csharpExceptionsEx1064.dart';

class CsharpExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpExceptionsExMain> createState() => _CsharpExceptionsExMainState();
}

class _CsharpExceptionsExMainState extends State<CsharpExceptionsExMain> {
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
          CsharpExceptionsEx1050(
            title: widget.title,
            id: 1050,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1051(
            title: widget.title,
            id: 1051,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1052(
            title: widget.title,
            id: 1052,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1053(
            title: widget.title,
            id: 1053,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1054(
            title: widget.title,
            id: 1054,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1055(
            title: widget.title,
            id: 1055,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1056(
            title: widget.title,
            id: 1056,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1057(
            title: widget.title,
            id: 1057,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1058(
            title: widget.title,
            id: 1058,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1059(
            title: widget.title,
            id: 1059,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1060(
            title: widget.title,
            id: 1060,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1061(
            title: widget.title,
            id: 1061,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1062(
            title: widget.title,
            id: 1062,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1063(
            title: widget.title,
            id: 1063,
            completed: widget.completed,
          ),
          CsharpExceptionsEx1064(
            title: widget.title,
            id: 1064,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
