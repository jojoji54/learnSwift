import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpInheritanceEx1496.dart';
import 'Ex/phpInheritanceEx1497.dart';
import 'Ex/phpInheritanceEx1498.dart';
import 'Ex/phpInheritanceEx1499.dart';
import 'Ex/phpInheritanceEx1500.dart';
import 'Ex/phpInheritanceEx1501.dart';
import 'Ex/phpInheritanceEx1502.dart';
import 'Ex/phpInheritanceEx1503.dart';
import 'Ex/phpInheritanceEx1504.dart';
import 'Ex/phpInheritanceEx1505.dart';
import 'Ex/phpInheritanceEx1506.dart';
import 'Ex/phpInheritanceEx1507.dart';
import 'Ex/phpInheritanceEx1508.dart';
import 'Ex/phpInheritanceEx1509.dart';
import 'Ex/phpInheritanceEx1510.dart';

class PhpInheritanceExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpInheritanceExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpInheritanceExMain> createState() => _PhpInheritanceExMainState();
}

class _PhpInheritanceExMainState extends State<PhpInheritanceExMain> {
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
          if (widget.id == 1496)
            PhpInheritanceEx1496(
              id: 1496,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1497)
            PhpInheritanceEx1497(
              id: 1497,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1498)
            PhpInheritanceEx1498(
              id: 1498,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1499)
            PhpInheritanceEx1499(
              id: 1499,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1500)
            PhpInheritanceEx1500(
              id: 1500,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1501)
            PhpInheritanceEx1501(
              id: 1501,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1502)
            PhpInheritanceEx1502(
              id: 1502,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1503)
            PhpInheritanceEx1503(
              id: 1503,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1504)
            PhpInheritanceEx1504(
              id: 1504,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1505)
            PhpInheritanceEx1505(
              id: 1505,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1506)
            PhpInheritanceEx1506(
              id: 1506,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1507)
            PhpInheritanceEx1507(
              id: 1507,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1508)
            PhpInheritanceEx1508(
              id: 1508,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1509)
            PhpInheritanceEx1509(
              id: 1509,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1510)
            PhpInheritanceEx1510(
              id: 1510,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}