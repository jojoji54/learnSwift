
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3215.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3216.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3217.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3218.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3219.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3220.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3221.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3222.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3223.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3224.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3225.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3226.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3227.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3228.dart';
import 'package:learnswift/Screens/Courses/react/reactData/Ex/reactDataEx3229.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactDataExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactDataExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactDataExMain> createState() => _ReactDataExMainState();
    }

    class _ReactDataExMainState extends State<ReactDataExMain> {
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
              if (widget.id == 3215)
            ReactDataEx3215(
              id: 3215,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3216)
            ReactDataEx3216(
              id: 3216,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3217)
            ReactDataEx3217(
              id: 3217,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3218)
            ReactDataEx3218(
              id: 3218,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3219)
            ReactDataEx3219(
              id: 3219,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3220)
            ReactDataEx3220(
              id: 3220,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3221)
            ReactDataEx3221(
              id: 3221,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3222)
            ReactDataEx3222(
              id: 3222,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3223)
            ReactDataEx3223(
              id: 3223,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3224)
            ReactDataEx3224(
              id: 3224,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3225)
            ReactDataEx3225(
              id: 3225,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3226)
            ReactDataEx3226(
              id: 3226,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3227)
            ReactDataEx3227(
              id: 3227,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3228)
            ReactDataEx3228(
              id: 3228,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3229)
            ReactDataEx3229(
              id: 3229,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
