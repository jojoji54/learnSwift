import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpOperatorsEx930.dart';
import 'Ex/csharpOperatorsEx931.dart';
import 'Ex/csharpOperatorsEx932.dart';
import 'Ex/csharpOperatorsEx933.dart';
import 'Ex/csharpOperatorsEx934.dart';
import 'Ex/csharpOperatorsEx935.dart';
import 'Ex/csharpOperatorsEx936.dart';
import 'Ex/csharpOperatorsEx937.dart';
import 'Ex/csharpOperatorsEx938.dart';
import 'Ex/csharpOperatorsEx939.dart';
import 'Ex/csharpOperatorsEx940.dart';
import 'Ex/csharpOperatorsEx941.dart';
import 'Ex/csharpOperatorsEx942.dart';
import 'Ex/csharpOperatorsEx943.dart';
import 'Ex/csharpOperatorsEx944.dart';

class CsharpOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpOperatorsExMain> createState() => _CsharpOperatorsExMainState();
}

class _CsharpOperatorsExMainState extends State<CsharpOperatorsExMain> {
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
          CsharpOperatorsEx930(
            title: widget.title,
            id: 930,
            completed: widget.completed,
          ),
          CsharpOperatorsEx931(
            title: widget.title,
            id: 931,
            completed: widget.completed,
          ),
          CsharpOperatorsEx932(
            title: widget.title,
            id: 932,
            completed: widget.completed,
          ),
          CsharpOperatorsEx933(
            title: widget.title,
            id: 933,
            completed: widget.completed,
          ),
          CsharpOperatorsEx934(
            title: widget.title,
            id: 934,
            completed: widget.completed,
          ),
          CsharpOperatorsEx935(
            title: widget.title,
            id: 935,
            completed: widget.completed,
          ),
          CsharpOperatorsEx936(
            title: widget.title,
            id: 936,
            completed: widget.completed,
          ),
          CsharpOperatorsEx937(
            title: widget.title,
            id: 937,
            completed: widget.completed,
          ),
          CsharpOperatorsEx938(
            title: widget.title,
            id: 938,
            completed: widget.completed,
          ),
          CsharpOperatorsEx939(
            title: widget.title,
            id: 939,
            completed: widget.completed,
          ),
          CsharpOperatorsEx940(
            title: widget.title,
            id: 940,
            completed: widget.completed,
          ),
          CsharpOperatorsEx941(
            title: widget.title,
            id: 941,
            completed: widget.completed,
          ),
          CsharpOperatorsEx942(
            title: widget.title,
            id: 942,
            completed: widget.completed,
          ),
          CsharpOperatorsEx943(
            title: widget.title,
            id: 943,
            completed: widget.completed,
          ),
          CsharpOperatorsEx944(
            title: widget.title,
            id: 944,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
