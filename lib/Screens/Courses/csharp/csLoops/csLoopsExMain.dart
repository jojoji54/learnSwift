import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csLoopsEx941.dart';
import 'Ex/csLoopsEx942.dart';
import 'Ex/csLoopsEx943.dart';
import 'Ex/csLoopsEx944.dart';
import 'Ex/csLoopsEx945.dart';
import 'Ex/csLoopsEx946.dart';
import 'Ex/csLoopsEx947.dart';
import 'Ex/csLoopsEx948.dart';
import 'Ex/csLoopsEx949.dart';
import 'Ex/csLoopsEx950.dart';
import 'Ex/csLoopsEx951.dart';
import 'Ex/csLoopsEx952.dart';
import 'Ex/csLoopsEx953.dart';
import 'Ex/csLoopsEx954.dart';
import 'Ex/csLoopsEx955.dart';

class CSharpLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpLoopsExMain> createState() => _CSharpLoopsExMainState();
}

class _CSharpLoopsExMainState extends State<CSharpLoopsExMain> {
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
          if (widget.id == 941)
            CSharpLoopsEx941(
              id: 941,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 942)
            CSharpLoopsEx942(
              id: 942,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 943)
            CSharpLoopsEx943(
              id: 943,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 944)
            CSharpLoopsEx944(
              id: 944,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 945)
            CSharpLoopsEx945(
              id: 945,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 946)
            CSharpLoopsEx946(
              id: 946,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 947)
            CSharpLoopsEx947(
              id: 947,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 948)
            CSharpLoopsEx948(
              id: 948,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 949)
            CSharpLoopsEx949(
              id: 949,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 950)
            CSharpLoopsEx950(
              id: 950,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 951)
            CSharpLoopsEx951(
              id: 951,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 952)
            CSharpLoopsEx952(
              id: 952,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 953)
            CSharpLoopsEx953(
              id: 953,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 954)
            CSharpLoopsEx954(
              id: 954,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 955)
            CSharpLoopsEx955(
              id: 955,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}