import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbStringsEx1661.dart';
import 'Ex/rbStringsEx1662.dart';
import 'Ex/rbStringsEx1663.dart';
import 'Ex/rbStringsEx1664.dart';
import 'Ex/rbStringsEx1665.dart';
import 'Ex/rbStringsEx1666.dart';
import 'Ex/rbStringsEx1667.dart';
import 'Ex/rbStringsEx1668.dart';
import 'Ex/rbStringsEx1669.dart';
import 'Ex/rbStringsEx1670.dart';
import 'Ex/rbStringsEx1671.dart';
import 'Ex/rbStringsEx1672.dart';
import 'Ex/rbStringsEx1673.dart';
import 'Ex/rbStringsEx1674.dart';
import 'Ex/rbStringsEx1675.dart';

class RubyStringsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyStringsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyStringsExMain> createState() => _RubyStringsExMainState();
}

class _RubyStringsExMainState extends State<RubyStringsExMain> {
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
          if (widget.id == 1661)
            RubyStringsEx1661(
              id: 1661,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1662)
            RubyStringsEx1662(
              id: 1662,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1663)
            RubyStringsEx1663(
              id: 1663,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1664)
            RubyStringsEx1664(
              id: 1664,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1665)
            RubyStringsEx1665(
              id: 1665,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1666)
            RubyStringsEx1666(
              id: 1666,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1667)
            RubyStringsEx1667(
              id: 1667,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1668)
            RubyStringsEx1668(
              id: 1668,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1669)
            RubyStringsEx1669(
              id: 1669,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1670)
            RubyStringsEx1670(
              id: 1670,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1671)
            RubyStringsEx1671(
              id: 1671,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1672)
            RubyStringsEx1672(
              id: 1672,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1673)
            RubyStringsEx1673(
              id: 1673,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1674)
            RubyStringsEx1674(
              id: 1674,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1675)
            RubyStringsEx1675(
              id: 1675,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
