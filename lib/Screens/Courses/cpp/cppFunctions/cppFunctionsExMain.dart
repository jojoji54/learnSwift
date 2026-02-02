import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppFunctionsEx820.dart';
import 'Ex/cppFunctionsEx821.dart';
import 'Ex/cppFunctionsEx822.dart';
import 'Ex/cppFunctionsEx823.dart';
import 'Ex/cppFunctionsEx824.dart';
import 'Ex/cppFunctionsEx825.dart';
import 'Ex/cppFunctionsEx826.dart';
import 'Ex/cppFunctionsEx827.dart';
import 'Ex/cppFunctionsEx828.dart';
import 'Ex/cppFunctionsEx829.dart';
import 'Ex/cppFunctionsEx830.dart';
import 'Ex/cppFunctionsEx831.dart';
import 'Ex/cppFunctionsEx832.dart';
import 'Ex/cppFunctionsEx833.dart';
import 'Ex/cppFunctionsEx834.dart';

class CppFunctionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppFunctionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppFunctionsExMain> createState() => _CppFunctionsExMainState();
}

class _CppFunctionsExMainState extends State<CppFunctionsExMain> {
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
          if (widget.id == 820)
            CppFunctionsEx820(
              id: 820,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 821)
            CppFunctionsEx821(
              id: 821,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 822)
            CppFunctionsEx822(
              id: 822,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 823)
            CppFunctionsEx823(
              id: 823,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 824)
            CppFunctionsEx824(
              id: 824,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 825)
            CppFunctionsEx825(
              id: 825,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 826)
            CppFunctionsEx826(
              id: 826,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 827)
            CppFunctionsEx827(
              id: 827,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 828)
            CppFunctionsEx828(
              id: 828,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 829)
            CppFunctionsEx829(
              id: 829,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 830)
            CppFunctionsEx830(
              id: 830,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 831)
            CppFunctionsEx831(
              id: 831,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 832)
            CppFunctionsEx832(
              id: 832,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 833)
            CppFunctionsEx833(
              id: 833,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 834)
            CppFunctionsEx834(
              id: 834,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
