import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpAssociativeEx1421.dart';
import 'Ex/phpAssociativeEx1422.dart';
import 'Ex/phpAssociativeEx1423.dart';
import 'Ex/phpAssociativeEx1424.dart';
import 'Ex/phpAssociativeEx1425.dart';
import 'Ex/phpAssociativeEx1426.dart';
import 'Ex/phpAssociativeEx1427.dart';
import 'Ex/phpAssociativeEx1428.dart';
import 'Ex/phpAssociativeEx1429.dart';
import 'Ex/phpAssociativeEx1430.dart';
import 'Ex/phpAssociativeEx1431.dart';
import 'Ex/phpAssociativeEx1432.dart';
import 'Ex/phpAssociativeEx1433.dart';
import 'Ex/phpAssociativeEx1434.dart';
import 'Ex/phpAssociativeEx1435.dart';

class PhpAssociativeExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpAssociativeExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpAssociativeExMain> createState() => _PhpAssociativeExMainState();
}

class _PhpAssociativeExMainState extends State<PhpAssociativeExMain> {
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
          if (widget.id == 1421)
            PhpAssociativeEx1421(
              id: 1421,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1422)
            PhpAssociativeEx1422(
              id: 1422,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1423)
            PhpAssociativeEx1423(
              id: 1423,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1424)
            PhpAssociativeEx1424(
              id: 1424,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1425)
            PhpAssociativeEx1425(
              id: 1425,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1426)
            PhpAssociativeEx1426(
              id: 1426,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1427)
            PhpAssociativeEx1427(
              id: 1427,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1428)
            PhpAssociativeEx1428(
              id: 1428,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1429)
            PhpAssociativeEx1429(
              id: 1429,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1430)
            PhpAssociativeEx1430(
              id: 1430,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1431)
            PhpAssociativeEx1431(
              id: 1431,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1432)
            PhpAssociativeEx1432(
              id: 1432,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1433)
            PhpAssociativeEx1433(
              id: 1433,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1434)
            PhpAssociativeEx1434(
              id: 1434,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1435)
            PhpAssociativeEx1435(
              id: 1435,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}