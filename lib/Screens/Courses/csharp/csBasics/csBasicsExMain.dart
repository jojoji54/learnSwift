import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csBasicsEx866.dart';
import 'Ex/csBasicsEx867.dart';
import 'Ex/csBasicsEx868.dart';
import 'Ex/csBasicsEx869.dart';
import 'Ex/csBasicsEx870.dart';
import 'Ex/csBasicsEx871.dart';
import 'Ex/csBasicsEx872.dart';
import 'Ex/csBasicsEx873.dart';
import 'Ex/csBasicsEx874.dart';
import 'Ex/csBasicsEx875.dart';
import 'Ex/csBasicsEx876.dart';
import 'Ex/csBasicsEx877.dart';
import 'Ex/csBasicsEx878.dart';
import 'Ex/csBasicsEx879.dart';
import 'Ex/csBasicsEx880.dart';

class CSharpBasicsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpBasicsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpBasicsExMain> createState() => _CSharpBasicsExMainState();
}

class _CSharpBasicsExMainState extends State<CSharpBasicsExMain> {
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
          if (widget.id == 866)
            CSharpBasicsEx866(
              id: 866,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 867)
            CSharpBasicsEx867(
              id: 867,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 868)
            CSharpBasicsEx868(
              id: 868,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 869)
            CSharpBasicsEx869(
              id: 869,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 870)
            CSharpBasicsEx870(
              id: 870,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 871)
            CSharpBasicsEx871(
              id: 871,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 872)
            CSharpBasicsEx872(
              id: 872,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 873)
            CSharpBasicsEx873(
              id: 873,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 874)
            CSharpBasicsEx874(
              id: 874,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 875)
            CSharpBasicsEx875(
              id: 875,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 876)
            CSharpBasicsEx876(
              id: 876,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 877)
            CSharpBasicsEx877(
              id: 877,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 878)
            CSharpBasicsEx878(
              id: 878,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 879)
            CSharpBasicsEx879(
              id: 879,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 880)
            CSharpBasicsEx880(
              id: 880,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}