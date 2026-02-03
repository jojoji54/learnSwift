import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbTablesEx2520.dart';
import 'Ex/cbTablesEx2521.dart';
import 'Ex/cbTablesEx2522.dart';
import 'Ex/cbTablesEx2523.dart';
import 'Ex/cbTablesEx2524.dart';
import 'Ex/cbTablesEx2525.dart';
import 'Ex/cbTablesEx2526.dart';
import 'Ex/cbTablesEx2527.dart';
import 'Ex/cbTablesEx2528.dart';
import 'Ex/cbTablesEx2529.dart';
import 'Ex/cbTablesEx2530.dart';
import 'Ex/cbTablesEx2531.dart';
import 'Ex/cbTablesEx2532.dart';
import 'Ex/cbTablesEx2533.dart';
import 'Ex/cbTablesEx2534.dart';

class CbTablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbTablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbTablesExMain> createState() => _CbTablesExMainState();
}

class _CbTablesExMainState extends State<CbTablesExMain> {
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
          if (widget.id == 2520)
            CbTablesEx2520(
              id: 2520,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2521)
            CbTablesEx2521(
              id: 2521,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2522)
            CbTablesEx2522(
              id: 2522,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2523)
            CbTablesEx2523(
              id: 2523,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2524)
            CbTablesEx2524(
              id: 2524,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2525)
            CbTablesEx2525(
              id: 2525,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2526)
            CbTablesEx2526(
              id: 2526,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2527)
            CbTablesEx2527(
              id: 2527,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2528)
            CbTablesEx2528(
              id: 2528,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2529)
            CbTablesEx2529(
              id: 2529,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2530)
            CbTablesEx2530(
              id: 2530,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2531)
            CbTablesEx2531(
              id: 2531,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2532)
            CbTablesEx2532(
              id: 2532,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2533)
            CbTablesEx2533(
              id: 2533,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2534)
            CbTablesEx2534(
              id: 2534,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
