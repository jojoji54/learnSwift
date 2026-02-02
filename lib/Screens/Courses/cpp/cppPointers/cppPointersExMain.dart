import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppPointersEx850.dart';
import 'Ex/cppPointersEx851.dart';
import 'Ex/cppPointersEx852.dart';
import 'Ex/cppPointersEx853.dart';
import 'Ex/cppPointersEx854.dart';
import 'Ex/cppPointersEx855.dart';
import 'Ex/cppPointersEx856.dart';
import 'Ex/cppPointersEx857.dart';
import 'Ex/cppPointersEx858.dart';
import 'Ex/cppPointersEx859.dart';
import 'Ex/cppPointersEx860.dart';
import 'Ex/cppPointersEx861.dart';
import 'Ex/cppPointersEx862.dart';
import 'Ex/cppPointersEx863.dart';
import 'Ex/cppPointersEx864.dart';

class CppPointersExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppPointersExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppPointersExMain> createState() => _CppPointersExMainState();
}

class _CppPointersExMainState extends State<CppPointersExMain> {
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
          if (widget.id == 850)
            CppPointersEx850(
              id: 850,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 851)
            CppPointersEx851(
              id: 851,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 852)
            CppPointersEx852(
              id: 852,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 853)
            CppPointersEx853(
              id: 853,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 854)
            CppPointersEx854(
              id: 854,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 855)
            CppPointersEx855(
              id: 855,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 856)
            CppPointersEx856(
              id: 856,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 857)
            CppPointersEx857(
              id: 857,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 858)
            CppPointersEx858(
              id: 858,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 859)
            CppPointersEx859(
              id: 859,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 860)
            CppPointersEx860(
              id: 860,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 861)
            CppPointersEx861(
              id: 861,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 862)
            CppPointersEx862(
              id: 862,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 863)
            CppPointersEx863(
              id: 863,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 864)
            CppPointersEx864(
              id: 864,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
