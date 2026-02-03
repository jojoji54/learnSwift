import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/phpArrayFunctionsEx1526.dart';
import 'Ex/phpArrayFunctionsEx1527.dart';
import 'Ex/phpArrayFunctionsEx1528.dart';
import 'Ex/phpArrayFunctionsEx1529.dart';
import 'Ex/phpArrayFunctionsEx1530.dart';
import 'Ex/phpArrayFunctionsEx1531.dart';
import 'Ex/phpArrayFunctionsEx1532.dart';
import 'Ex/phpArrayFunctionsEx1533.dart';
import 'Ex/phpArrayFunctionsEx1534.dart';
import 'Ex/phpArrayFunctionsEx1535.dart';
import 'Ex/phpArrayFunctionsEx1536.dart';
import 'Ex/phpArrayFunctionsEx1537.dart';
import 'Ex/phpArrayFunctionsEx1538.dart';
import 'Ex/phpArrayFunctionsEx1539.dart';
import 'Ex/phpArrayFunctionsEx1540.dart';

class PhpArrayfunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  PhpArrayfunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<PhpArrayfunctionsExMain> createState() => _PhpArrayfunctionsExMainState();
}

class _PhpArrayfunctionsExMainState extends State<PhpArrayfunctionsExMain> {
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
          if (widget.id == 1526)
            PhpArrayfunctionsEx1526(
              id: 1526,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1527)
            PhpArrayfunctionsEx1527(
              id: 1527,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1528)
            PhpArrayfunctionsEx1528(
              id: 1528,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1529)
            PhpArrayfunctionsEx1529(
              id: 1529,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1530)
            PhpArrayfunctionsEx1530(
              id: 1530,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1531)
            PhpArrayfunctionsEx1531(
              id: 1531,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1532)
            PhpArrayfunctionsEx1532(
              id: 1532,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1533)
            PhpArrayfunctionsEx1533(
              id: 1533,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1534)
            PhpArrayfunctionsEx1534(
              id: 1534,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1535)
            PhpArrayfunctionsEx1535(
              id: 1535,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1536)
            PhpArrayfunctionsEx1536(
              id: 1536,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1537)
            PhpArrayfunctionsEx1537(
              id: 1537,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1538)
            PhpArrayfunctionsEx1538(
              id: 1538,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1539)
            PhpArrayfunctionsEx1539(
              id: 1539,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1540)
            PhpArrayfunctionsEx1540(
              id: 1540,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}