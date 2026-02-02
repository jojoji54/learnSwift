import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpLoopsEx975.dart';
import 'Ex/csharpLoopsEx976.dart';
import 'Ex/csharpLoopsEx977.dart';
import 'Ex/csharpLoopsEx978.dart';
import 'Ex/csharpLoopsEx979.dart';
import 'Ex/csharpLoopsEx980.dart';
import 'Ex/csharpLoopsEx981.dart';
import 'Ex/csharpLoopsEx982.dart';
import 'Ex/csharpLoopsEx983.dart';
import 'Ex/csharpLoopsEx984.dart';
import 'Ex/csharpLoopsEx985.dart';
import 'Ex/csharpLoopsEx986.dart';
import 'Ex/csharpLoopsEx987.dart';
import 'Ex/csharpLoopsEx988.dart';
import 'Ex/csharpLoopsEx989.dart';

class CsharpLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpLoopsExMain> createState() => _CsharpLoopsExMainState();
}

class _CsharpLoopsExMainState extends State<CsharpLoopsExMain> {
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
          CsharpLoopsEx975(
            title: widget.title,
            id: 975,
            completed: widget.completed,
          ),
          CsharpLoopsEx976(
            title: widget.title,
            id: 976,
            completed: widget.completed,
          ),
          CsharpLoopsEx977(
            title: widget.title,
            id: 977,
            completed: widget.completed,
          ),
          CsharpLoopsEx978(
            title: widget.title,
            id: 978,
            completed: widget.completed,
          ),
          CsharpLoopsEx979(
            title: widget.title,
            id: 979,
            completed: widget.completed,
          ),
          CsharpLoopsEx980(
            title: widget.title,
            id: 980,
            completed: widget.completed,
          ),
          CsharpLoopsEx981(
            title: widget.title,
            id: 981,
            completed: widget.completed,
          ),
          CsharpLoopsEx982(
            title: widget.title,
            id: 982,
            completed: widget.completed,
          ),
          CsharpLoopsEx983(
            title: widget.title,
            id: 983,
            completed: widget.completed,
          ),
          CsharpLoopsEx984(
            title: widget.title,
            id: 984,
            completed: widget.completed,
          ),
          CsharpLoopsEx985(
            title: widget.title,
            id: 985,
            completed: widget.completed,
          ),
          CsharpLoopsEx986(
            title: widget.title,
            id: 986,
            completed: widget.completed,
          ),
          CsharpLoopsEx987(
            title: widget.title,
            id: 987,
            completed: widget.completed,
          ),
          CsharpLoopsEx988(
            title: widget.title,
            id: 988,
            completed: widget.completed,
          ),
          CsharpLoopsEx989(
            title: widget.title,
            id: 989,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
