import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpArraysEx1406.dart';
import 'Ex/phpArraysEx1407.dart';
import 'Ex/phpArraysEx1408.dart';
import 'Ex/phpArraysEx1409.dart';
import 'Ex/phpArraysEx1410.dart';
import 'Ex/phpArraysEx1411.dart';
import 'Ex/phpArraysEx1412.dart';
import 'Ex/phpArraysEx1413.dart';
import 'Ex/phpArraysEx1414.dart';
import 'Ex/phpArraysEx1415.dart';
import 'Ex/phpArraysEx1416.dart';
import 'Ex/phpArraysEx1417.dart';
import 'Ex/phpArraysEx1418.dart';
import 'Ex/phpArraysEx1419.dart';
import 'Ex/phpArraysEx1420.dart';

class PhpArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpArraysExMain> createState() => _PhpArraysExMainState();
}

class _PhpArraysExMainState extends State<PhpArraysExMain> {
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
          if (widget.id == 1406)
            PhpArraysEx1406(
              id: 1406,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1407)
            PhpArraysEx1407(
              id: 1407,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1408)
            PhpArraysEx1408(
              id: 1408,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1409)
            PhpArraysEx1409(
              id: 1409,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1410)
            PhpArraysEx1410(
              id: 1410,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1411)
            PhpArraysEx1411(
              id: 1411,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1412)
            PhpArraysEx1412(
              id: 1412,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1413)
            PhpArraysEx1413(
              id: 1413,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1414)
            PhpArraysEx1414(
              id: 1414,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1415)
            PhpArraysEx1415(
              id: 1415,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1416)
            PhpArraysEx1416(
              id: 1416,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1417)
            PhpArraysEx1417(
              id: 1417,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1418)
            PhpArraysEx1418(
              id: 1418,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1419)
            PhpArraysEx1419(
              id: 1419,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1420)
            PhpArraysEx1420(
              id: 1420,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}