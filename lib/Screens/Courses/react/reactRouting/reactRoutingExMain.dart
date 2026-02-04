
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3200.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3201.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3202.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3203.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3204.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3205.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3206.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3207.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3208.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3209.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3210.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3211.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3212.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3213.dart';
import 'package:learnswift/Screens/Courses/react/reactRouting/Ex/reactRoutingEx3214.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactRoutingExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactRoutingExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactRoutingExMain> createState() => _ReactRoutingExMainState();
    }

    class _ReactRoutingExMainState extends State<ReactRoutingExMain> {
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
              if (widget.id == 3200)
            ReactRoutingEx3200(
              id: 3200,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3201)
            ReactRoutingEx3201(
              id: 3201,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3202)
            ReactRoutingEx3202(
              id: 3202,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3203)
            ReactRoutingEx3203(
              id: 3203,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3204)
            ReactRoutingEx3204(
              id: 3204,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3205)
            ReactRoutingEx3205(
              id: 3205,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3206)
            ReactRoutingEx3206(
              id: 3206,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3207)
            ReactRoutingEx3207(
              id: 3207,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3208)
            ReactRoutingEx3208(
              id: 3208,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3209)
            ReactRoutingEx3209(
              id: 3209,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3210)
            ReactRoutingEx3210(
              id: 3210,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3211)
            ReactRoutingEx3211(
              id: 3211,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3212)
            ReactRoutingEx3212(
              id: 3212,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3213)
            ReactRoutingEx3213(
              id: 3213,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3214)
            ReactRoutingEx3214(
              id: 3214,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
