import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cppDataTypesEx715.dart';
import 'Ex/cppDataTypesEx716.dart';
import 'Ex/cppDataTypesEx717.dart';
import 'Ex/cppDataTypesEx718.dart';
import 'Ex/cppDataTypesEx719.dart';
import 'Ex/cppDataTypesEx720.dart';
import 'Ex/cppDataTypesEx721.dart';
import 'Ex/cppDataTypesEx722.dart';
import 'Ex/cppDataTypesEx723.dart';
import 'Ex/cppDataTypesEx724.dart';
import 'Ex/cppDataTypesEx725.dart';
import 'Ex/cppDataTypesEx726.dart';
import 'Ex/cppDataTypesEx727.dart';
import 'Ex/cppDataTypesEx728.dart';
import 'Ex/cppDataTypesEx729.dart';

class CppDataTypesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CppDataTypesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CppDataTypesExMain> createState() => _CppDataTypesExMainState();
}

class _CppDataTypesExMainState extends State<CppDataTypesExMain> {
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
          if (widget.id == 715)
            CppDataTypesEx715(
              id: 715,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 716)
            CppDataTypesEx716(
              id: 716,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 717)
            CppDataTypesEx717(
              id: 717,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 718)
            CppDataTypesEx718(
              id: 718,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 719)
            CppDataTypesEx719(
              id: 719,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 720)
            CppDataTypesEx720(
              id: 720,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 721)
            CppDataTypesEx721(
              id: 721,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 722)
            CppDataTypesEx722(
              id: 722,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 723)
            CppDataTypesEx723(
              id: 723,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 724)
            CppDataTypesEx724(
              id: 724,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 725)
            CppDataTypesEx725(
              id: 725,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 726)
            CppDataTypesEx726(
              id: 726,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 727)
            CppDataTypesEx727(
              id: 727,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 728)
            CppDataTypesEx728(
              id: 728,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 729)
            CppDataTypesEx729(
              id: 729,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
