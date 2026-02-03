import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpLoopsEx1391.dart';
import 'Ex/phpLoopsEx1392.dart';
import 'Ex/phpLoopsEx1393.dart';
import 'Ex/phpLoopsEx1394.dart';
import 'Ex/phpLoopsEx1395.dart';
import 'Ex/phpLoopsEx1396.dart';
import 'Ex/phpLoopsEx1397.dart';
import 'Ex/phpLoopsEx1398.dart';
import 'Ex/phpLoopsEx1399.dart';
import 'Ex/phpLoopsEx1400.dart';
import 'Ex/phpLoopsEx1401.dart';
import 'Ex/phpLoopsEx1402.dart';
import 'Ex/phpLoopsEx1403.dart';
import 'Ex/phpLoopsEx1404.dart';
import 'Ex/phpLoopsEx1405.dart';

class PhpLoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpLoopsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpLoopsExMain> createState() => _PhpLoopsExMainState();
}

class _PhpLoopsExMainState extends State<PhpLoopsExMain> {
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
          if (widget.id == 1391)
            PhpLoopsEx1391(
              id: 1391,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1392)
            PhpLoopsEx1392(
              id: 1392,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1393)
            PhpLoopsEx1393(
              id: 1393,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1394)
            PhpLoopsEx1394(
              id: 1394,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1395)
            PhpLoopsEx1395(
              id: 1395,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1396)
            PhpLoopsEx1396(
              id: 1396,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1397)
            PhpLoopsEx1397(
              id: 1397,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1398)
            PhpLoopsEx1398(
              id: 1398,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1399)
            PhpLoopsEx1399(
              id: 1399,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1400)
            PhpLoopsEx1400(
              id: 1400,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1401)
            PhpLoopsEx1401(
              id: 1401,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1402)
            PhpLoopsEx1402(
              id: 1402,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1403)
            PhpLoopsEx1403(
              id: 1403,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1404)
            PhpLoopsEx1404(
              id: 1404,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1405)
            PhpLoopsEx1405(
              id: 1405,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}