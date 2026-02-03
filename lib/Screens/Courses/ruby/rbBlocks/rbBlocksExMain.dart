import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/rbBlocksEx1751.dart';
import 'Ex/rbBlocksEx1752.dart';
import 'Ex/rbBlocksEx1753.dart';
import 'Ex/rbBlocksEx1754.dart';
import 'Ex/rbBlocksEx1755.dart';
import 'Ex/rbBlocksEx1756.dart';
import 'Ex/rbBlocksEx1757.dart';
import 'Ex/rbBlocksEx1758.dart';
import 'Ex/rbBlocksEx1759.dart';
import 'Ex/rbBlocksEx1760.dart';
import 'Ex/rbBlocksEx1761.dart';
import 'Ex/rbBlocksEx1762.dart';
import 'Ex/rbBlocksEx1763.dart';
import 'Ex/rbBlocksEx1764.dart';
import 'Ex/rbBlocksEx1765.dart';

class RubyBlocksEnumerablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  RubyBlocksEnumerablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<RubyBlocksEnumerablesExMain> createState() => _RubyBlocksEnumerablesExMainState();
}

class _RubyBlocksEnumerablesExMainState extends State<RubyBlocksEnumerablesExMain> {
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
          if (widget.id == 1751)
            RubyBlocksEnumerablesEx1751(
              id: 1751,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1752)
            RubyBlocksEnumerablesEx1752(
              id: 1752,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1753)
            RubyBlocksEnumerablesEx1753(
              id: 1753,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1754)
            RubyBlocksEnumerablesEx1754(
              id: 1754,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1755)
            RubyBlocksEnumerablesEx1755(
              id: 1755,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1756)
            RubyBlocksEnumerablesEx1756(
              id: 1756,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1757)
            RubyBlocksEnumerablesEx1757(
              id: 1757,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1758)
            RubyBlocksEnumerablesEx1758(
              id: 1758,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1759)
            RubyBlocksEnumerablesEx1759(
              id: 1759,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1760)
            RubyBlocksEnumerablesEx1760(
              id: 1760,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1761)
            RubyBlocksEnumerablesEx1761(
              id: 1761,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1762)
            RubyBlocksEnumerablesEx1762(
              id: 1762,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1763)
            RubyBlocksEnumerablesEx1763(
              id: 1763,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1764)
            RubyBlocksEnumerablesEx1764(
              id: 1764,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 1765)
            RubyBlocksEnumerablesEx1765(
              id: 1765,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
