import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbDataTypesEx2340.dart';
import 'Ex/cbDataTypesEx2341.dart';
import 'Ex/cbDataTypesEx2342.dart';
import 'Ex/cbDataTypesEx2343.dart';
import 'Ex/cbDataTypesEx2344.dart';
import 'Ex/cbDataTypesEx2345.dart';
import 'Ex/cbDataTypesEx2346.dart';
import 'Ex/cbDataTypesEx2347.dart';
import 'Ex/cbDataTypesEx2348.dart';
import 'Ex/cbDataTypesEx2349.dart';
import 'Ex/cbDataTypesEx2350.dart';
import 'Ex/cbDataTypesEx2351.dart';
import 'Ex/cbDataTypesEx2352.dart';
import 'Ex/cbDataTypesEx2353.dart';
import 'Ex/cbDataTypesEx2354.dart';

class CbDataTypesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbDataTypesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbDataTypesExMain> createState() => _CbDataTypesExMainState();
}

class _CbDataTypesExMainState extends State<CbDataTypesExMain> {
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
          if (widget.id == 2340)
            CbDataTypesEx2340(
              id: 2340,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2341)
            CbDataTypesEx2341(
              id: 2341,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2342)
            CbDataTypesEx2342(
              id: 2342,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2343)
            CbDataTypesEx2343(
              id: 2343,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2344)
            CbDataTypesEx2344(
              id: 2344,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2345)
            CbDataTypesEx2345(
              id: 2345,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2346)
            CbDataTypesEx2346(
              id: 2346,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2347)
            CbDataTypesEx2347(
              id: 2347,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2348)
            CbDataTypesEx2348(
              id: 2348,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2349)
            CbDataTypesEx2349(
              id: 2349,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2350)
            CbDataTypesEx2350(
              id: 2350,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2351)
            CbDataTypesEx2351(
              id: 2351,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2352)
            CbDataTypesEx2352(
              id: 2352,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2353)
            CbDataTypesEx2353(
              id: 2353,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2354)
            CbDataTypesEx2354(
              id: 2354,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
