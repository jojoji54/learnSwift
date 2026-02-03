import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csOperatorsEx896.dart';
import 'Ex/csOperatorsEx897.dart';
import 'Ex/csOperatorsEx898.dart';
import 'Ex/csOperatorsEx899.dart';
import 'Ex/csOperatorsEx900.dart';
import 'Ex/csOperatorsEx901.dart';
import 'Ex/csOperatorsEx902.dart';
import 'Ex/csOperatorsEx903.dart';
import 'Ex/csOperatorsEx904.dart';
import 'Ex/csOperatorsEx905.dart';
import 'Ex/csOperatorsEx906.dart';
import 'Ex/csOperatorsEx907.dart';
import 'Ex/csOperatorsEx908.dart';
import 'Ex/csOperatorsEx909.dart';
import 'Ex/csOperatorsEx910.dart';

class CSharpOperatorsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpOperatorsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpOperatorsExMain> createState() => _CSharpOperatorsExMainState();
}

class _CSharpOperatorsExMainState extends State<CSharpOperatorsExMain> {
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
          if (widget.id == 896)
            CSharpOperatorsEx896(
              id: 896,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 897)
            CSharpOperatorsEx897(
              id: 897,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 898)
            CSharpOperatorsEx898(
              id: 898,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 899)
            CSharpOperatorsEx899(
              id: 899,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 900)
            CSharpOperatorsEx900(
              id: 900,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 901)
            CSharpOperatorsEx901(
              id: 901,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 902)
            CSharpOperatorsEx902(
              id: 902,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 903)
            CSharpOperatorsEx903(
              id: 903,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 904)
            CSharpOperatorsEx904(
              id: 904,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 905)
            CSharpOperatorsEx905(
              id: 905,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 906)
            CSharpOperatorsEx906(
              id: 906,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 907)
            CSharpOperatorsEx907(
              id: 907,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 908)
            CSharpOperatorsEx908(
              id: 908,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 909)
            CSharpOperatorsEx909(
              id: 909,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 910)
            CSharpOperatorsEx910(
              id: 910,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}