import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpDataTypesEx915.dart';
import 'Ex/csharpDataTypesEx916.dart';
import 'Ex/csharpDataTypesEx917.dart';
import 'Ex/csharpDataTypesEx918.dart';
import 'Ex/csharpDataTypesEx919.dart';
import 'Ex/csharpDataTypesEx920.dart';
import 'Ex/csharpDataTypesEx921.dart';
import 'Ex/csharpDataTypesEx922.dart';
import 'Ex/csharpDataTypesEx923.dart';
import 'Ex/csharpDataTypesEx924.dart';
import 'Ex/csharpDataTypesEx925.dart';
import 'Ex/csharpDataTypesEx926.dart';
import 'Ex/csharpDataTypesEx927.dart';
import 'Ex/csharpDataTypesEx928.dart';
import 'Ex/csharpDataTypesEx929.dart';

class CsharpDataTypesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpDataTypesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpDataTypesExMain> createState() => _CsharpDataTypesExMainState();
}

class _CsharpDataTypesExMainState extends State<CsharpDataTypesExMain> {
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
                    fontFamily: "InconsolataBold",
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
      body: ListView(
        children: [
          CsharpDataTypesEx915(
            title: widget.title,
            id: 915,
            completed: widget.completed,
          ),
          CsharpDataTypesEx916(
            title: widget.title,
            id: 916,
            completed: widget.completed,
          ),
          CsharpDataTypesEx917(
            title: widget.title,
            id: 917,
            completed: widget.completed,
          ),
          CsharpDataTypesEx918(
            title: widget.title,
            id: 918,
            completed: widget.completed,
          ),
          CsharpDataTypesEx919(
            title: widget.title,
            id: 919,
            completed: widget.completed,
          ),
          CsharpDataTypesEx920(
            title: widget.title,
            id: 920,
            completed: widget.completed,
          ),
          CsharpDataTypesEx921(
            title: widget.title,
            id: 921,
            completed: widget.completed,
          ),
          CsharpDataTypesEx922(
            title: widget.title,
            id: 922,
            completed: widget.completed,
          ),
          CsharpDataTypesEx923(
            title: widget.title,
            id: 923,
            completed: widget.completed,
          ),
          CsharpDataTypesEx924(
            title: widget.title,
            id: 924,
            completed: widget.completed,
          ),
          CsharpDataTypesEx925(
            title: widget.title,
            id: 925,
            completed: widget.completed,
          ),
          CsharpDataTypesEx926(
            title: widget.title,
            id: 926,
            completed: widget.completed,
          ),
          CsharpDataTypesEx927(
            title: widget.title,
            id: 927,
            completed: widget.completed,
          ),
          CsharpDataTypesEx928(
            title: widget.title,
            id: 928,
            completed: widget.completed,
          ),
          CsharpDataTypesEx929(
            title: widget.title,
            id: 929,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
