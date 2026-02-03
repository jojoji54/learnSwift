import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csExceptionsEx1061.dart';
import 'Ex/csExceptionsEx1062.dart';
import 'Ex/csExceptionsEx1063.dart';
import 'Ex/csExceptionsEx1064.dart';
import 'Ex/csExceptionsEx1065.dart';
import 'Ex/csExceptionsEx1066.dart';
import 'Ex/csExceptionsEx1067.dart';
import 'Ex/csExceptionsEx1068.dart';
import 'Ex/csExceptionsEx1069.dart';
import 'Ex/csExceptionsEx1070.dart';
import 'Ex/csExceptionsEx1071.dart';
import 'Ex/csExceptionsEx1072.dart';
import 'Ex/csExceptionsEx1073.dart';
import 'Ex/csExceptionsEx1074.dart';
import 'Ex/csExceptionsEx1075.dart';

class CSharpExceptionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpExceptionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpExceptionsExMain> createState() => _CSharpExceptionsExMainState();
}

class _CSharpExceptionsExMainState extends State<CSharpExceptionsExMain> {
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
          if (widget.id == 1061)
            CSharpExceptionsEx1061(
              id: 1061,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1062)
            CSharpExceptionsEx1062(
              id: 1062,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1063)
            CSharpExceptionsEx1063(
              id: 1063,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1064)
            CSharpExceptionsEx1064(
              id: 1064,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1065)
            CSharpExceptionsEx1065(
              id: 1065,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1066)
            CSharpExceptionsEx1066(
              id: 1066,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1067)
            CSharpExceptionsEx1067(
              id: 1067,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1068)
            CSharpExceptionsEx1068(
              id: 1068,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1069)
            CSharpExceptionsEx1069(
              id: 1069,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1070)
            CSharpExceptionsEx1070(
              id: 1070,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1071)
            CSharpExceptionsEx1071(
              id: 1071,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1072)
            CSharpExceptionsEx1072(
              id: 1072,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1073)
            CSharpExceptionsEx1073(
              id: 1073,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1074)
            CSharpExceptionsEx1074(
              id: 1074,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1075)
            CSharpExceptionsEx1075(
              id: 1075,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}