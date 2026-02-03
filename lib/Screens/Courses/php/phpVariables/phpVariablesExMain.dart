import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpVariablesEx1331.dart';
import 'Ex/phpVariablesEx1332.dart';
import 'Ex/phpVariablesEx1333.dart';
import 'Ex/phpVariablesEx1334.dart';
import 'Ex/phpVariablesEx1335.dart';
import 'Ex/phpVariablesEx1336.dart';
import 'Ex/phpVariablesEx1337.dart';
import 'Ex/phpVariablesEx1338.dart';
import 'Ex/phpVariablesEx1339.dart';
import 'Ex/phpVariablesEx1340.dart';
import 'Ex/phpVariablesEx1341.dart';
import 'Ex/phpVariablesEx1342.dart';
import 'Ex/phpVariablesEx1343.dart';
import 'Ex/phpVariablesEx1344.dart';
import 'Ex/phpVariablesEx1345.dart';

class PhpVariablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpVariablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpVariablesExMain> createState() => _PhpVariablesExMainState();
}

class _PhpVariablesExMainState extends State<PhpVariablesExMain> {
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
          if (widget.id == 1331)
            PhpVariablesEx1331(
              id: 1331,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1332)
            PhpVariablesEx1332(
              id: 1332,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1333)
            PhpVariablesEx1333(
              id: 1333,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1334)
            PhpVariablesEx1334(
              id: 1334,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1335)
            PhpVariablesEx1335(
              id: 1335,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1336)
            PhpVariablesEx1336(
              id: 1336,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1337)
            PhpVariablesEx1337(
              id: 1337,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1338)
            PhpVariablesEx1338(
              id: 1338,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1339)
            PhpVariablesEx1339(
              id: 1339,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1340)
            PhpVariablesEx1340(
              id: 1340,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1341)
            PhpVariablesEx1341(
              id: 1341,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1342)
            PhpVariablesEx1342(
              id: 1342,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1343)
            PhpVariablesEx1343(
              id: 1343,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1344)
            PhpVariablesEx1344(
              id: 1344,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1345)
            PhpVariablesEx1345(
              id: 1345,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}