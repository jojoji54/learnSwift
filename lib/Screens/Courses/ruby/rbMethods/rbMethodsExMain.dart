import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbMethodsEx1676.dart';
import 'Ex/rbMethodsEx1677.dart';
import 'Ex/rbMethodsEx1678.dart';
import 'Ex/rbMethodsEx1679.dart';
import 'Ex/rbMethodsEx1680.dart';
import 'Ex/rbMethodsEx1681.dart';
import 'Ex/rbMethodsEx1682.dart';
import 'Ex/rbMethodsEx1683.dart';
import 'Ex/rbMethodsEx1684.dart';
import 'Ex/rbMethodsEx1685.dart';
import 'Ex/rbMethodsEx1686.dart';
import 'Ex/rbMethodsEx1687.dart';
import 'Ex/rbMethodsEx1688.dart';
import 'Ex/rbMethodsEx1689.dart';
import 'Ex/rbMethodsEx1690.dart';

class RubyMethodsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyMethodsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyMethodsExMain> createState() => _RubyMethodsExMainState();
}

class _RubyMethodsExMainState extends State<RubyMethodsExMain> {
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
          if (widget.id == 1676)
            RubyMethodsEx1676(
              id: 1676,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1677)
            RubyMethodsEx1677(
              id: 1677,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1678)
            RubyMethodsEx1678(
              id: 1678,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1679)
            RubyMethodsEx1679(
              id: 1679,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1680)
            RubyMethodsEx1680(
              id: 1680,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1681)
            RubyMethodsEx1681(
              id: 1681,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1682)
            RubyMethodsEx1682(
              id: 1682,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1683)
            RubyMethodsEx1683(
              id: 1683,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1684)
            RubyMethodsEx1684(
              id: 1684,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1685)
            RubyMethodsEx1685(
              id: 1685,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1686)
            RubyMethodsEx1686(
              id: 1686,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1687)
            RubyMethodsEx1687(
              id: 1687,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1688)
            RubyMethodsEx1688(
              id: 1688,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1689)
            RubyMethodsEx1689(
              id: 1689,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1690)
            RubyMethodsEx1690(
              id: 1690,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
