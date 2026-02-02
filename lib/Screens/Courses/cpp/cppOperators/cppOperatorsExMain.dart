import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppOperatorsEx730.dart';
import 'Ex/cppOperatorsEx731.dart';
import 'Ex/cppOperatorsEx732.dart';
import 'Ex/cppOperatorsEx733.dart';
import 'Ex/cppOperatorsEx734.dart';
import 'Ex/cppOperatorsEx735.dart';
import 'Ex/cppOperatorsEx736.dart';
import 'Ex/cppOperatorsEx737.dart';
import 'Ex/cppOperatorsEx738.dart';
import 'Ex/cppOperatorsEx739.dart';
import 'Ex/cppOperatorsEx740.dart';
import 'Ex/cppOperatorsEx741.dart';
import 'Ex/cppOperatorsEx742.dart';
import 'Ex/cppOperatorsEx743.dart';
import 'Ex/cppOperatorsEx744.dart';

class CppOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppOperatorsExMain> createState() => _CppOperatorsExMainState();
}

class _CppOperatorsExMainState extends State<CppOperatorsExMain> {
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
          if (widget.id == 730)
            CppOperatorsEx730(
              id: 730,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 731)
            CppOperatorsEx731(
              id: 731,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 732)
            CppOperatorsEx732(
              id: 732,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 733)
            CppOperatorsEx733(
              id: 733,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 734)
            CppOperatorsEx734(
              id: 734,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 735)
            CppOperatorsEx735(
              id: 735,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 736)
            CppOperatorsEx736(
              id: 736,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 737)
            CppOperatorsEx737(
              id: 737,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 738)
            CppOperatorsEx738(
              id: 738,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 739)
            CppOperatorsEx739(
              id: 739,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 740)
            CppOperatorsEx740(
              id: 740,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 741)
            CppOperatorsEx741(
              id: 741,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 742)
            CppOperatorsEx742(
              id: 742,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 743)
            CppOperatorsEx743(
              id: 743,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 744)
            CppOperatorsEx744(
              id: 744,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
