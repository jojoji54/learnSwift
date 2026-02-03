import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpConditionalsEx1361.dart';
import 'Ex/phpConditionalsEx1362.dart';
import 'Ex/phpConditionalsEx1363.dart';
import 'Ex/phpConditionalsEx1364.dart';
import 'Ex/phpConditionalsEx1365.dart';
import 'Ex/phpConditionalsEx1366.dart';
import 'Ex/phpConditionalsEx1367.dart';
import 'Ex/phpConditionalsEx1368.dart';
import 'Ex/phpConditionalsEx1369.dart';
import 'Ex/phpConditionalsEx1370.dart';
import 'Ex/phpConditionalsEx1371.dart';
import 'Ex/phpConditionalsEx1372.dart';
import 'Ex/phpConditionalsEx1373.dart';
import 'Ex/phpConditionalsEx1374.dart';
import 'Ex/phpConditionalsEx1375.dart';

class PhpConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpConditionalsExMain> createState() => _PhpConditionalsExMainState();
}

class _PhpConditionalsExMainState extends State<PhpConditionalsExMain> {
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
          if (widget.id == 1361)
            PhpConditionalsEx1361(
              id: 1361,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1362)
            PhpConditionalsEx1362(
              id: 1362,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1363)
            PhpConditionalsEx1363(
              id: 1363,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1364)
            PhpConditionalsEx1364(
              id: 1364,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1365)
            PhpConditionalsEx1365(
              id: 1365,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1366)
            PhpConditionalsEx1366(
              id: 1366,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1367)
            PhpConditionalsEx1367(
              id: 1367,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1368)
            PhpConditionalsEx1368(
              id: 1368,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1369)
            PhpConditionalsEx1369(
              id: 1369,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1370)
            PhpConditionalsEx1370(
              id: 1370,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1371)
            PhpConditionalsEx1371(
              id: 1371,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1372)
            PhpConditionalsEx1372(
              id: 1372,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1373)
            PhpConditionalsEx1373(
              id: 1373,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1374)
            PhpConditionalsEx1374(
              id: 1374,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1375)
            PhpConditionalsEx1375(
              id: 1375,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}