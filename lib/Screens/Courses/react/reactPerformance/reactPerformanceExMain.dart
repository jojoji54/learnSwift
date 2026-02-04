
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3230.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3231.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3232.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3233.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3234.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3235.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3236.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3237.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3238.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3239.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3240.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3241.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3242.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3243.dart';
import 'package:learnswift/Screens/Courses/react/reactPerformance/Ex/reactPerformanceEx3244.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactPerformanceExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactPerformanceExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactPerformanceExMain> createState() => _ReactPerformanceExMainState();
    }

    class _ReactPerformanceExMainState extends State<ReactPerformanceExMain> {
      @override
      void initState() {
        super.initState();
      }

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
              if (widget.id == 3230)
            ReactPerformanceEx3230(
              id: 3230,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3231)
            ReactPerformanceEx3231(
              id: 3231,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3232)
            ReactPerformanceEx3232(
              id: 3232,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3233)
            ReactPerformanceEx3233(
              id: 3233,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3234)
            ReactPerformanceEx3234(
              id: 3234,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3235)
            ReactPerformanceEx3235(
              id: 3235,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3236)
            ReactPerformanceEx3236(
              id: 3236,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3237)
            ReactPerformanceEx3237(
              id: 3237,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3238)
            ReactPerformanceEx3238(
              id: 3238,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3239)
            ReactPerformanceEx3239(
              id: 3239,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3240)
            ReactPerformanceEx3240(
              id: 3240,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3241)
            ReactPerformanceEx3241(
              id: 3241,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3242)
            ReactPerformanceEx3242(
              id: 3242,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3243)
            ReactPerformanceEx3243(
              id: 3243,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3244)
            ReactPerformanceEx3244(
              id: 3244,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
