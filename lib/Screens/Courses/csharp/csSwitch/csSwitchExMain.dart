import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/csSwitchEx926.dart';
import 'Ex/csSwitchEx927.dart';
import 'Ex/csSwitchEx928.dart';
import 'Ex/csSwitchEx929.dart';
import 'Ex/csSwitchEx930.dart';
import 'Ex/csSwitchEx931.dart';
import 'Ex/csSwitchEx932.dart';
import 'Ex/csSwitchEx933.dart';
import 'Ex/csSwitchEx934.dart';
import 'Ex/csSwitchEx935.dart';
import 'Ex/csSwitchEx936.dart';
import 'Ex/csSwitchEx937.dart';
import 'Ex/csSwitchEx938.dart';
import 'Ex/csSwitchEx939.dart';
import 'Ex/csSwitchEx940.dart';

class CSharpSwitchExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CSharpSwitchExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CSharpSwitchExMain> createState() => _CSharpSwitchExMainState();
}

class _CSharpSwitchExMainState extends State<CSharpSwitchExMain> {
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
          if (widget.id == 926)
            CSharpSwitchEx926(
              id: 926,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 927)
            CSharpSwitchEx927(
              id: 927,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 928)
            CSharpSwitchEx928(
              id: 928,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 929)
            CSharpSwitchEx929(
              id: 929,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 930)
            CSharpSwitchEx930(
              id: 930,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 931)
            CSharpSwitchEx931(
              id: 931,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 932)
            CSharpSwitchEx932(
              id: 932,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 933)
            CSharpSwitchEx933(
              id: 933,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 934)
            CSharpSwitchEx934(
              id: 934,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 935)
            CSharpSwitchEx935(
              id: 935,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 936)
            CSharpSwitchEx936(
              id: 936,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 937)
            CSharpSwitchEx937(
              id: 937,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 938)
            CSharpSwitchEx938(
              id: 938,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 939)
            CSharpSwitchEx939(
              id: 939,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 940)
            CSharpSwitchEx940(
              id: 940,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}