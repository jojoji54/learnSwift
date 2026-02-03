import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csListsEx971.dart';
import 'Ex/csListsEx972.dart';
import 'Ex/csListsEx973.dart';
import 'Ex/csListsEx974.dart';
import 'Ex/csListsEx975.dart';
import 'Ex/csListsEx976.dart';
import 'Ex/csListsEx977.dart';
import 'Ex/csListsEx978.dart';
import 'Ex/csListsEx979.dart';
import 'Ex/csListsEx980.dart';
import 'Ex/csListsEx981.dart';
import 'Ex/csListsEx982.dart';
import 'Ex/csListsEx983.dart';
import 'Ex/csListsEx984.dart';
import 'Ex/csListsEx985.dart';

class CSharpListsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpListsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpListsExMain> createState() => _CSharpListsExMainState();
}

class _CSharpListsExMainState extends State<CSharpListsExMain> {
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
          if (widget.id == 971)
            CSharpListsEx971(
              id: 971,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 972)
            CSharpListsEx972(
              id: 972,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 973)
            CSharpListsEx973(
              id: 973,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 974)
            CSharpListsEx974(
              id: 974,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 975)
            CSharpListsEx975(
              id: 975,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 976)
            CSharpListsEx976(
              id: 976,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 977)
            CSharpListsEx977(
              id: 977,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 978)
            CSharpListsEx978(
              id: 978,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 979)
            CSharpListsEx979(
              id: 979,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 980)
            CSharpListsEx980(
              id: 980,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 981)
            CSharpListsEx981(
              id: 981,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 982)
            CSharpListsEx982(
              id: 982,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 983)
            CSharpListsEx983(
              id: 983,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 984)
            CSharpListsEx984(
              id: 984,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 985)
            CSharpListsEx985(
              id: 985,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}