
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3125.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3126.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3127.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3128.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3129.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3130.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3131.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3132.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3133.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3134.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3135.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3136.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3137.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3138.dart';
import 'package:learnswift/Screens/Courses/react/reactConditional/Ex/reactConditionalEx3139.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactConditionalExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactConditionalExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactConditionalExMain> createState() => _ReactConditionalExMainState();
    }

    class _ReactConditionalExMainState extends State<ReactConditionalExMain> {
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
              if (widget.id == 3125)
            ReactConditionalEx3125(
              id: 3125,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3126)
            ReactConditionalEx3126(
              id: 3126,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3127)
            ReactConditionalEx3127(
              id: 3127,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3128)
            ReactConditionalEx3128(
              id: 3128,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3129)
            ReactConditionalEx3129(
              id: 3129,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3130)
            ReactConditionalEx3130(
              id: 3130,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3131)
            ReactConditionalEx3131(
              id: 3131,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3132)
            ReactConditionalEx3132(
              id: 3132,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3133)
            ReactConditionalEx3133(
              id: 3133,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3134)
            ReactConditionalEx3134(
              id: 3134,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3135)
            ReactConditionalEx3135(
              id: 3135,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3136)
            ReactConditionalEx3136(
              id: 3136,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3137)
            ReactConditionalEx3137(
              id: 3137,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3138)
            ReactConditionalEx3138(
              id: 3138,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3139)
            ReactConditionalEx3139(
              id: 3139,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
