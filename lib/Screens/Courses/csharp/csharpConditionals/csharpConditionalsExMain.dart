import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpConditionalsEx945.dart';
import 'Ex/csharpConditionalsEx946.dart';
import 'Ex/csharpConditionalsEx947.dart';
import 'Ex/csharpConditionalsEx948.dart';
import 'Ex/csharpConditionalsEx949.dart';
import 'Ex/csharpConditionalsEx950.dart';
import 'Ex/csharpConditionalsEx951.dart';
import 'Ex/csharpConditionalsEx952.dart';
import 'Ex/csharpConditionalsEx953.dart';
import 'Ex/csharpConditionalsEx954.dart';
import 'Ex/csharpConditionalsEx955.dart';
import 'Ex/csharpConditionalsEx956.dart';
import 'Ex/csharpConditionalsEx957.dart';
import 'Ex/csharpConditionalsEx958.dart';
import 'Ex/csharpConditionalsEx959.dart';

class CsharpConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpConditionalsExMain> createState() => _CsharpConditionalsExMainState();
}

class _CsharpConditionalsExMainState extends State<CsharpConditionalsExMain> {
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
          CsharpConditionalsEx945(
            title: widget.title,
            id: 945,
            completed: widget.completed,
          ),
          CsharpConditionalsEx946(
            title: widget.title,
            id: 946,
            completed: widget.completed,
          ),
          CsharpConditionalsEx947(
            title: widget.title,
            id: 947,
            completed: widget.completed,
          ),
          CsharpConditionalsEx948(
            title: widget.title,
            id: 948,
            completed: widget.completed,
          ),
          CsharpConditionalsEx949(
            title: widget.title,
            id: 949,
            completed: widget.completed,
          ),
          CsharpConditionalsEx950(
            title: widget.title,
            id: 950,
            completed: widget.completed,
          ),
          CsharpConditionalsEx951(
            title: widget.title,
            id: 951,
            completed: widget.completed,
          ),
          CsharpConditionalsEx952(
            title: widget.title,
            id: 952,
            completed: widget.completed,
          ),
          CsharpConditionalsEx953(
            title: widget.title,
            id: 953,
            completed: widget.completed,
          ),
          CsharpConditionalsEx954(
            title: widget.title,
            id: 954,
            completed: widget.completed,
          ),
          CsharpConditionalsEx955(
            title: widget.title,
            id: 955,
            completed: widget.completed,
          ),
          CsharpConditionalsEx956(
            title: widget.title,
            id: 956,
            completed: widget.completed,
          ),
          CsharpConditionalsEx957(
            title: widget.title,
            id: 957,
            completed: widget.completed,
          ),
          CsharpConditionalsEx958(
            title: widget.title,
            id: 958,
            completed: widget.completed,
          ),
          CsharpConditionalsEx959(
            title: widget.title,
            id: 959,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
