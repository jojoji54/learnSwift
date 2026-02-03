import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';
import 'Ex/cbSectionsEx2460.dart';
import 'Ex/cbSectionsEx2461.dart';
import 'Ex/cbSectionsEx2462.dart';
import 'Ex/cbSectionsEx2463.dart';
import 'Ex/cbSectionsEx2464.dart';
import 'Ex/cbSectionsEx2465.dart';
import 'Ex/cbSectionsEx2466.dart';
import 'Ex/cbSectionsEx2467.dart';
import 'Ex/cbSectionsEx2468.dart';
import 'Ex/cbSectionsEx2469.dart';
import 'Ex/cbSectionsEx2470.dart';
import 'Ex/cbSectionsEx2471.dart';
import 'Ex/cbSectionsEx2472.dart';
import 'Ex/cbSectionsEx2473.dart';
import 'Ex/cbSectionsEx2474.dart';

class CbSectionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  CbSectionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<CbSectionsExMain> createState() => _CbSectionsExMainState();
}

class _CbSectionsExMainState extends State<CbSectionsExMain> {
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
          if (widget.id == 2460)
            CbSectionsEx2460(
              id: 2460,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2461)
            CbSectionsEx2461(
              id: 2461,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2462)
            CbSectionsEx2462(
              id: 2462,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2463)
            CbSectionsEx2463(
              id: 2463,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2464)
            CbSectionsEx2464(
              id: 2464,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2465)
            CbSectionsEx2465(
              id: 2465,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2466)
            CbSectionsEx2466(
              id: 2466,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2467)
            CbSectionsEx2467(
              id: 2467,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2468)
            CbSectionsEx2468(
              id: 2468,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2469)
            CbSectionsEx2469(
              id: 2469,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2470)
            CbSectionsEx2470(
              id: 2470,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2471)
            CbSectionsEx2471(
              id: 2471,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2472)
            CbSectionsEx2472(
              id: 2472,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2473)
            CbSectionsEx2473(
              id: 2473,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 2474)
            CbSectionsEx2474(
              id: 2474,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
