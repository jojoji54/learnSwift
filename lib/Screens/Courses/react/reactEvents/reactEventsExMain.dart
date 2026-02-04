
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3095.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3096.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3097.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3098.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3099.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3100.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3101.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3102.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3103.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3104.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3105.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3106.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3107.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3108.dart';
import 'package:learnswift/Screens/Courses/react/reactEvents/Ex/reactEventsEx3109.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactEventsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactEventsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactEventsExMain> createState() => _ReactEventsExMainState();
    }

    class _ReactEventsExMainState extends State<ReactEventsExMain> {
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
              if (widget.id == 3095)
            ReactEventsEx3095(
              id: 3095,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3096)
            ReactEventsEx3096(
              id: 3096,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3097)
            ReactEventsEx3097(
              id: 3097,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3098)
            ReactEventsEx3098(
              id: 3098,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3099)
            ReactEventsEx3099(
              id: 3099,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3100)
            ReactEventsEx3100(
              id: 3100,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3101)
            ReactEventsEx3101(
              id: 3101,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3102)
            ReactEventsEx3102(
              id: 3102,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3103)
            ReactEventsEx3103(
              id: 3103,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3104)
            ReactEventsEx3104(
              id: 3104,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3105)
            ReactEventsEx3105(
              id: 3105,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3106)
            ReactEventsEx3106(
              id: 3106,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3107)
            ReactEventsEx3107(
              id: 3107,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3108)
            ReactEventsEx3108(
              id: 3108,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3109)
            ReactEventsEx3109(
              id: 3109,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
