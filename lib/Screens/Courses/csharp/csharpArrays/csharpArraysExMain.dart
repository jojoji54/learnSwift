import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csharpArraysEx990.dart';
import 'Ex/csharpArraysEx991.dart';
import 'Ex/csharpArraysEx992.dart';
import 'Ex/csharpArraysEx993.dart';
import 'Ex/csharpArraysEx994.dart';
import 'Ex/csharpArraysEx995.dart';
import 'Ex/csharpArraysEx996.dart';
import 'Ex/csharpArraysEx997.dart';
import 'Ex/csharpArraysEx998.dart';
import 'Ex/csharpArraysEx999.dart';
import 'Ex/csharpArraysEx1000.dart';
import 'Ex/csharpArraysEx1001.dart';
import 'Ex/csharpArraysEx1002.dart';
import 'Ex/csharpArraysEx1003.dart';
import 'Ex/csharpArraysEx1004.dart';

class CsharpArraysExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CsharpArraysExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CsharpArraysExMain> createState() => _CsharpArraysExMainState();
}

class _CsharpArraysExMainState extends State<CsharpArraysExMain> {
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
          CsharpArraysEx990(
            title: widget.title,
            id: 990,
            completed: widget.completed,
          ),
          CsharpArraysEx991(
            title: widget.title,
            id: 991,
            completed: widget.completed,
          ),
          CsharpArraysEx992(
            title: widget.title,
            id: 992,
            completed: widget.completed,
          ),
          CsharpArraysEx993(
            title: widget.title,
            id: 993,
            completed: widget.completed,
          ),
          CsharpArraysEx994(
            title: widget.title,
            id: 994,
            completed: widget.completed,
          ),
          CsharpArraysEx995(
            title: widget.title,
            id: 995,
            completed: widget.completed,
          ),
          CsharpArraysEx996(
            title: widget.title,
            id: 996,
            completed: widget.completed,
          ),
          CsharpArraysEx997(
            title: widget.title,
            id: 997,
            completed: widget.completed,
          ),
          CsharpArraysEx998(
            title: widget.title,
            id: 998,
            completed: widget.completed,
          ),
          CsharpArraysEx999(
            title: widget.title,
            id: 999,
            completed: widget.completed,
          ),
          CsharpArraysEx1000(
            title: widget.title,
            id: 1000,
            completed: widget.completed,
          ),
          CsharpArraysEx1001(
            title: widget.title,
            id: 1001,
            completed: widget.completed,
          ),
          CsharpArraysEx1002(
            title: widget.title,
            id: 1002,
            completed: widget.completed,
          ),
          CsharpArraysEx1003(
            title: widget.title,
            id: 1003,
            completed: widget.completed,
          ),
          CsharpArraysEx1004(
            title: widget.title,
            id: 1004,
            completed: widget.completed,
          ),
        ],
      ),
    );
  }
}
