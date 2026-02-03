import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpOperatorsEx1346.dart';
import 'Ex/phpOperatorsEx1347.dart';
import 'Ex/phpOperatorsEx1348.dart';
import 'Ex/phpOperatorsEx1349.dart';
import 'Ex/phpOperatorsEx1350.dart';
import 'Ex/phpOperatorsEx1351.dart';
import 'Ex/phpOperatorsEx1352.dart';
import 'Ex/phpOperatorsEx1353.dart';
import 'Ex/phpOperatorsEx1354.dart';
import 'Ex/phpOperatorsEx1355.dart';
import 'Ex/phpOperatorsEx1356.dart';
import 'Ex/phpOperatorsEx1357.dart';
import 'Ex/phpOperatorsEx1358.dart';
import 'Ex/phpOperatorsEx1359.dart';
import 'Ex/phpOperatorsEx1360.dart';

class PhpOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpOperatorsExMain> createState() => _PhpOperatorsExMainState();
}

class _PhpOperatorsExMainState extends State<PhpOperatorsExMain> {
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
          if (widget.id == 1346)
            PhpOperatorsEx1346(
              id: 1346,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1347)
            PhpOperatorsEx1347(
              id: 1347,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1348)
            PhpOperatorsEx1348(
              id: 1348,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1349)
            PhpOperatorsEx1349(
              id: 1349,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1350)
            PhpOperatorsEx1350(
              id: 1350,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1351)
            PhpOperatorsEx1351(
              id: 1351,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1352)
            PhpOperatorsEx1352(
              id: 1352,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1353)
            PhpOperatorsEx1353(
              id: 1353,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1354)
            PhpOperatorsEx1354(
              id: 1354,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1355)
            PhpOperatorsEx1355(
              id: 1355,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1356)
            PhpOperatorsEx1356(
              id: 1356,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1357)
            PhpOperatorsEx1357(
              id: 1357,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1358)
            PhpOperatorsEx1358(
              id: 1358,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1359)
            PhpOperatorsEx1359(
              id: 1359,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1360)
            PhpOperatorsEx1360(
              id: 1360,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}