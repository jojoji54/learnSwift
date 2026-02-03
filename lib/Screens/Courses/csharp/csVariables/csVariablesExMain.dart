import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csVariablesEx881.dart';
import 'Ex/csVariablesEx882.dart';
import 'Ex/csVariablesEx883.dart';
import 'Ex/csVariablesEx884.dart';
import 'Ex/csVariablesEx885.dart';
import 'Ex/csVariablesEx886.dart';
import 'Ex/csVariablesEx887.dart';
import 'Ex/csVariablesEx888.dart';
import 'Ex/csVariablesEx889.dart';
import 'Ex/csVariablesEx890.dart';
import 'Ex/csVariablesEx891.dart';
import 'Ex/csVariablesEx892.dart';
import 'Ex/csVariablesEx893.dart';
import 'Ex/csVariablesEx894.dart';
import 'Ex/csVariablesEx895.dart';

class CSharpVariablesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpVariablesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpVariablesExMain> createState() => _CSharpVariablesExMainState();
}

class _CSharpVariablesExMainState extends State<CSharpVariablesExMain> {
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
          if (widget.id == 881)
            CSharpVariablesEx881(
              id: 881,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 882)
            CSharpVariablesEx882(
              id: 882,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 883)
            CSharpVariablesEx883(
              id: 883,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 884)
            CSharpVariablesEx884(
              id: 884,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 885)
            CSharpVariablesEx885(
              id: 885,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 886)
            CSharpVariablesEx886(
              id: 886,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 887)
            CSharpVariablesEx887(
              id: 887,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 888)
            CSharpVariablesEx888(
              id: 888,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 889)
            CSharpVariablesEx889(
              id: 889,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 890)
            CSharpVariablesEx890(
              id: 890,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 891)
            CSharpVariablesEx891(
              id: 891,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 892)
            CSharpVariablesEx892(
              id: 892,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 893)
            CSharpVariablesEx893(
              id: 893,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 894)
            CSharpVariablesEx894(
              id: 894,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 895)
            CSharpVariablesEx895(
              id: 895,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}