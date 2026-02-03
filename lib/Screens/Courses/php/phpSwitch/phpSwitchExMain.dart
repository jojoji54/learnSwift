import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpSwitchEx1376.dart';
import 'Ex/phpSwitchEx1377.dart';
import 'Ex/phpSwitchEx1378.dart';
import 'Ex/phpSwitchEx1379.dart';
import 'Ex/phpSwitchEx1380.dart';
import 'Ex/phpSwitchEx1381.dart';
import 'Ex/phpSwitchEx1382.dart';
import 'Ex/phpSwitchEx1383.dart';
import 'Ex/phpSwitchEx1384.dart';
import 'Ex/phpSwitchEx1385.dart';
import 'Ex/phpSwitchEx1386.dart';
import 'Ex/phpSwitchEx1387.dart';
import 'Ex/phpSwitchEx1388.dart';
import 'Ex/phpSwitchEx1389.dart';

class PhpSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpSwitchExMain> createState() => _PhpSwitchExMainState();
}

class _PhpSwitchExMainState extends State<PhpSwitchExMain> {
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
          if (widget.id == 1376)
            PhpSwitchEx1376(
              id: 1376,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1377)
            PhpSwitchEx1377(
              id: 1377,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1378)
            PhpSwitchEx1378(
              id: 1378,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1379)
            PhpSwitchEx1379(
              id: 1379,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1380)
            PhpSwitchEx1380(
              id: 1380,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1381)
            PhpSwitchEx1381(
              id: 1381,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1382)
            PhpSwitchEx1382(
              id: 1382,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1383)
            PhpSwitchEx1383(
              id: 1383,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1384)
            PhpSwitchEx1384(
              id: 1384,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1385)
            PhpSwitchEx1385(
              id: 1385,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1386)
            PhpSwitchEx1386(
              id: 1386,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1387)
            PhpSwitchEx1387(
              id: 1387,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1388)
            PhpSwitchEx1388(
              id: 1388,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1389)
            PhpSwitchEx1389(
              id: 1389,
              title: widget.title,
              completed: widget.completed,
            ),
          
        ],
      ),
    );
  }
}