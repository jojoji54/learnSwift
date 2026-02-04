
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3080.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3081.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3082.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3083.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3084.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3085.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3086.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3087.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3088.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3089.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3090.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3091.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3092.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3093.dart';
import 'package:learnswift/Screens/Courses/react/reactState/Ex/reactStateEx3094.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactStateExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactStateExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactStateExMain> createState() => _ReactStateExMainState();
    }

    class _ReactStateExMainState extends State<ReactStateExMain> {
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
              if (widget.id == 3080)
            ReactStateEx3080(
              id: 3080,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3081)
            ReactStateEx3081(
              id: 3081,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3082)
            ReactStateEx3082(
              id: 3082,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3083)
            ReactStateEx3083(
              id: 3083,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3084)
            ReactStateEx3084(
              id: 3084,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3085)
            ReactStateEx3085(
              id: 3085,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3086)
            ReactStateEx3086(
              id: 3086,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3087)
            ReactStateEx3087(
              id: 3087,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3088)
            ReactStateEx3088(
              id: 3088,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3089)
            ReactStateEx3089(
              id: 3089,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3090)
            ReactStateEx3090(
              id: 3090,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3091)
            ReactStateEx3091(
              id: 3091,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3092)
            ReactStateEx3092(
              id: 3092,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3093)
            ReactStateEx3093(
              id: 3093,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3094)
            ReactStateEx3094(
              id: 3094,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
