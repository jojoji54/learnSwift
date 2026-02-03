import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpExceptionsEx1511.dart';
import 'Ex/phpExceptionsEx1512.dart';
import 'Ex/phpExceptionsEx1513.dart';
import 'Ex/phpExceptionsEx1514.dart';
import 'Ex/phpExceptionsEx1515.dart';
import 'Ex/phpExceptionsEx1516.dart';
import 'Ex/phpExceptionsEx1517.dart';
import 'Ex/phpExceptionsEx1518.dart';
import 'Ex/phpExceptionsEx1519.dart';
import 'Ex/phpExceptionsEx1520.dart';
import 'Ex/phpExceptionsEx1521.dart';
import 'Ex/phpExceptionsEx1522.dart';
import 'Ex/phpExceptionsEx1523.dart';
import 'Ex/phpExceptionsEx1524.dart';
import 'Ex/phpExceptionsEx1525.dart';

class PhpExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpExceptionsExMain> createState() => _PhpExceptionsExMainState();
}

class _PhpExceptionsExMainState extends State<PhpExceptionsExMain> {
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
          if (widget.id == 1511)
            PhpExceptionsEx1511(
              id: 1511,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1512)
            PhpExceptionsEx1512(
              id: 1512,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1513)
            PhpExceptionsEx1513(
              id: 1513,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1514)
            PhpExceptionsEx1514(
              id: 1514,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1515)
            PhpExceptionsEx1515(
              id: 1515,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1516)
            PhpExceptionsEx1516(
              id: 1516,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1517)
            PhpExceptionsEx1517(
              id: 1517,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1518)
            PhpExceptionsEx1518(
              id: 1518,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1519)
            PhpExceptionsEx1519(
              id: 1519,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1520)
            PhpExceptionsEx1520(
              id: 1520,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1521)
            PhpExceptionsEx1521(
              id: 1521,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1522)
            PhpExceptionsEx1522(
              id: 1522,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1523)
            PhpExceptionsEx1523(
              id: 1523,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1524)
            PhpExceptionsEx1524(
              id: 1524,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1525)
            PhpExceptionsEx1525(
              id: 1525,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}