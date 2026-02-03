import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpStringsEx1436.dart';
import 'Ex/phpStringsEx1437.dart';
import 'Ex/phpStringsEx1438.dart';
import 'Ex/phpStringsEx1439.dart';
import 'Ex/phpStringsEx1440.dart';
import 'Ex/phpStringsEx1441.dart';
import 'Ex/phpStringsEx1442.dart';
import 'Ex/phpStringsEx1443.dart';
import 'Ex/phpStringsEx1444.dart';
import 'Ex/phpStringsEx1445.dart';
import 'Ex/phpStringsEx1446.dart';
import 'Ex/phpStringsEx1447.dart';
import 'Ex/phpStringsEx1448.dart';
import 'Ex/phpStringsEx1449.dart';
import 'Ex/phpStringsEx1450.dart';

class PhpStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpStringsExMain> createState() => _PhpStringsExMainState();
}

class _PhpStringsExMainState extends State<PhpStringsExMain> {
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
          if (widget.id == 1436)
            PhpStringsEx1436(
              id: 1436,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1437)
            PhpStringsEx1437(
              id: 1437,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1438)
            PhpStringsEx1438(
              id: 1438,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1439)
            PhpStringsEx1439(
              id: 1439,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1440)
            PhpStringsEx1440(
              id: 1440,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1441)
            PhpStringsEx1441(
              id: 1441,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1442)
            PhpStringsEx1442(
              id: 1442,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1443)
            PhpStringsEx1443(
              id: 1443,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1444)
            PhpStringsEx1444(
              id: 1444,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1445)
            PhpStringsEx1445(
              id: 1445,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1446)
            PhpStringsEx1446(
              id: 1446,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1447)
            PhpStringsEx1447(
              id: 1447,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1448)
            PhpStringsEx1448(
              id: 1448,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1449)
            PhpStringsEx1449(
              id: 1449,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1450)
            PhpStringsEx1450(
              id: 1450,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}