import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpBasicsEx1316.dart';
import 'Ex/phpBasicsEx1317.dart';
import 'Ex/phpBasicsEx1318.dart';
import 'Ex/phpBasicsEx1319.dart';
import 'Ex/phpBasicsEx1320.dart';
import 'Ex/phpBasicsEx1321.dart';
import 'Ex/phpBasicsEx1322.dart';
import 'Ex/phpBasicsEx1323.dart';
import 'Ex/phpBasicsEx1324.dart';
import 'Ex/phpBasicsEx1325.dart';
import 'Ex/phpBasicsEx1326.dart';
import 'Ex/phpBasicsEx1327.dart';
import 'Ex/phpBasicsEx1328.dart';
import 'Ex/phpBasicsEx1329.dart';
import 'Ex/phpBasicsEx1330.dart';

class PhpBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpBasicsExMain> createState() => _PhpBasicsExMainState();
}

class _PhpBasicsExMainState extends State<PhpBasicsExMain> {
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
          if (widget.id == 1316)
            PhpBasicsEx1316(
              id: 1316,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1317)
            PhpBasicsEx1317(
              id: 1317,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1318)
            PhpBasicsEx1318(
              id: 1318,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1319)
            PhpBasicsEx1319(
              id: 1319,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1320)
            PhpBasicsEx1320(
              id: 1320,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1321)
            PhpBasicsEx1321(
              id: 1321,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1322)
            PhpBasicsEx1322(
              id: 1322,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1323)
            PhpBasicsEx1323(
              id: 1323,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1324)
            PhpBasicsEx1324(
              id: 1324,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1325)
            PhpBasicsEx1325(
              id: 1325,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1326)
            PhpBasicsEx1326(
              id: 1326,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1327)
            PhpBasicsEx1327(
              id: 1327,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1328)
            PhpBasicsEx1328(
              id: 1328,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1329)
            PhpBasicsEx1329(
              id: 1329,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1330)
            PhpBasicsEx1330(
              id: 1330,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}