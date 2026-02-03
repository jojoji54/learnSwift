import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpFunctionsEx1451.dart';
import 'Ex/phpFunctionsEx1452.dart';
import 'Ex/phpFunctionsEx1453.dart';
import 'Ex/phpFunctionsEx1454.dart';
import 'Ex/phpFunctionsEx1455.dart';
import 'Ex/phpFunctionsEx1456.dart';
import 'Ex/phpFunctionsEx1457.dart';
import 'Ex/phpFunctionsEx1458.dart';
import 'Ex/phpFunctionsEx1459.dart';
import 'Ex/phpFunctionsEx1460.dart';
import 'Ex/phpFunctionsEx1461.dart';
import 'Ex/phpFunctionsEx1462.dart';
import 'Ex/phpFunctionsEx1463.dart';
import 'Ex/phpFunctionsEx1464.dart';
import 'Ex/phpFunctionsEx1465.dart';

class PhpFunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpFunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpFunctionsExMain> createState() => _PhpFunctionsExMainState();
}

class _PhpFunctionsExMainState extends State<PhpFunctionsExMain> {
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
          if (widget.id == 1451)
            PhpFunctionsEx1451(
              id: 1451,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1452)
            PhpFunctionsEx1452(
              id: 1452,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1453)
            PhpFunctionsEx1453(
              id: 1453,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1454)
            PhpFunctionsEx1454(
              id: 1454,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1455)
            PhpFunctionsEx1455(
              id: 1455,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1456)
            PhpFunctionsEx1456(
              id: 1456,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1457)
            PhpFunctionsEx1457(
              id: 1457,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1458)
            PhpFunctionsEx1458(
              id: 1458,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1459)
            PhpFunctionsEx1459(
              id: 1459,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1460)
            PhpFunctionsEx1460(
              id: 1460,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1461)
            PhpFunctionsEx1461(
              id: 1461,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1462)
            PhpFunctionsEx1462(
              id: 1462,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1463)
            PhpFunctionsEx1463(
              id: 1463,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1464)
            PhpFunctionsEx1464(
              id: 1464,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1465)
            PhpFunctionsEx1465(
              id: 1465,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}