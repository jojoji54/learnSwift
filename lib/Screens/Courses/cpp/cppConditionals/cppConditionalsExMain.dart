import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppConditionalsEx745.dart';
import 'Ex/cppConditionalsEx746.dart';
import 'Ex/cppConditionalsEx747.dart';
import 'Ex/cppConditionalsEx748.dart';
import 'Ex/cppConditionalsEx749.dart';
import 'Ex/cppConditionalsEx750.dart';
import 'Ex/cppConditionalsEx751.dart';
import 'Ex/cppConditionalsEx752.dart';
import 'Ex/cppConditionalsEx753.dart';
import 'Ex/cppConditionalsEx754.dart';
import 'Ex/cppConditionalsEx755.dart';
import 'Ex/cppConditionalsEx756.dart';
import 'Ex/cppConditionalsEx757.dart';
import 'Ex/cppConditionalsEx758.dart';
import 'Ex/cppConditionalsEx759.dart';

class CppConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppConditionalsExMain> createState() => _CppConditionalsExMainState();
}

class _CppConditionalsExMainState extends State<CppConditionalsExMain> {
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
          if (widget.id == 745)
            CppConditionalsEx745(
              id: 745,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 746)
            CppConditionalsEx746(
              id: 746,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 747)
            CppConditionalsEx747(
              id: 747,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 748)
            CppConditionalsEx748(
              id: 748,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 749)
            CppConditionalsEx749(
              id: 749,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 750)
            CppConditionalsEx750(
              id: 750,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 751)
            CppConditionalsEx751(
              id: 751,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 752)
            CppConditionalsEx752(
              id: 752,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 753)
            CppConditionalsEx753(
              id: 753,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 754)
            CppConditionalsEx754(
              id: 754,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 755)
            CppConditionalsEx755(
              id: 755,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 756)
            CppConditionalsEx756(
              id: 756,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 757)
            CppConditionalsEx757(
              id: 757,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 758)
            CppConditionalsEx758(
              id: 758,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 759)
            CppConditionalsEx759(
              id: 759,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
