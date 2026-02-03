import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csConditionalsEx911.dart';
import 'Ex/csConditionalsEx912.dart';
import 'Ex/csConditionalsEx913.dart';
import 'Ex/csConditionalsEx914.dart';
import 'Ex/csConditionalsEx915.dart';
import 'Ex/csConditionalsEx916.dart';
import 'Ex/csConditionalsEx917.dart';
import 'Ex/csConditionalsEx918.dart';
import 'Ex/csConditionalsEx919.dart';
import 'Ex/csConditionalsEx920.dart';
import 'Ex/csConditionalsEx921.dart';
import 'Ex/csConditionalsEx922.dart';
import 'Ex/csConditionalsEx923.dart';
import 'Ex/csConditionalsEx924.dart';
import 'Ex/csConditionalsEx925.dart';

class CSharpConditionalsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpConditionalsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpConditionalsExMain> createState() => _CSharpConditionalsExMainState();
}

class _CSharpConditionalsExMainState extends State<CSharpConditionalsExMain> {
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
          if (widget.id == 911)
            CSharpConditionalsEx911(
              id: 911,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 912)
            CSharpConditionalsEx912(
              id: 912,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 913)
            CSharpConditionalsEx913(
              id: 913,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 914)
            CSharpConditionalsEx914(
              id: 914,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 915)
            CSharpConditionalsEx915(
              id: 915,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 916)
            CSharpConditionalsEx916(
              id: 916,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 917)
            CSharpConditionalsEx917(
              id: 917,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 918)
            CSharpConditionalsEx918(
              id: 918,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 919)
            CSharpConditionalsEx919(
              id: 919,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 920)
            CSharpConditionalsEx920(
              id: 920,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 921)
            CSharpConditionalsEx921(
              id: 921,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 922)
            CSharpConditionalsEx922(
              id: 922,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 923)
            CSharpConditionalsEx923(
              id: 923,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 924)
            CSharpConditionalsEx924(
              id: 924,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 925)
            CSharpConditionalsEx925(
              id: 925,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}