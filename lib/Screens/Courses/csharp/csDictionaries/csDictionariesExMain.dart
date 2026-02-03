import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csDictionariesEx986.dart';
import 'Ex/csDictionariesEx987.dart';
import 'Ex/csDictionariesEx988.dart';
import 'Ex/csDictionariesEx989.dart';
import 'Ex/csDictionariesEx990.dart';
import 'Ex/csDictionariesEx991.dart';
import 'Ex/csDictionariesEx992.dart';
import 'Ex/csDictionariesEx993.dart';
import 'Ex/csDictionariesEx994.dart';
import 'Ex/csDictionariesEx995.dart';
import 'Ex/csDictionariesEx996.dart';
import 'Ex/csDictionariesEx997.dart';
import 'Ex/csDictionariesEx998.dart';
import 'Ex/csDictionariesEx999.dart';
import 'Ex/csDictionariesEx1000.dart';

class CSharpDictionariesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpDictionariesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpDictionariesExMain> createState() => _CSharpDictionariesExMainState();
}

class _CSharpDictionariesExMainState extends State<CSharpDictionariesExMain> {
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
          if (widget.id == 986)
            CSharpDictionariesEx986(
              id: 986,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 987)
            CSharpDictionariesEx987(
              id: 987,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 988)
            CSharpDictionariesEx988(
              id: 988,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 989)
            CSharpDictionariesEx989(
              id: 989,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 990)
            CSharpDictionariesEx990(
              id: 990,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 991)
            CSharpDictionariesEx991(
              id: 991,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 992)
            CSharpDictionariesEx992(
              id: 992,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 993)
            CSharpDictionariesEx993(
              id: 993,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 994)
            CSharpDictionariesEx994(
              id: 994,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 995)
            CSharpDictionariesEx995(
              id: 995,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 996)
            CSharpDictionariesEx996(
              id: 996,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 997)
            CSharpDictionariesEx997(
              id: 997,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 998)
            CSharpDictionariesEx998(
              id: 998,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 999)
            CSharpDictionariesEx999(
              id: 999,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1000)
            CSharpDictionariesEx1000(
              id: 1000,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}