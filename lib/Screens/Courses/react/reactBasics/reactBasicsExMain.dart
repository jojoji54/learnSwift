
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3050.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3051.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3052.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3053.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3054.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3055.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3056.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3057.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3058.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3059.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3060.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3061.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3062.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3063.dart';
import 'package:learnswift/Screens/Courses/react/reactBasics/Ex/reactBasicsEx3064.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactBasicsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactBasicsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactBasicsExMain> createState() => _ReactBasicsExMainState();
    }

    class _ReactBasicsExMainState extends State<ReactBasicsExMain> {
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
              if (widget.id == 3050)
            ReactBasicsEx3050(
              id: 3050,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3051)
            ReactBasicsEx3051(
              id: 3051,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3052)
            ReactBasicsEx3052(
              id: 3052,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3053)
            ReactBasicsEx3053(
              id: 3053,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3054)
            ReactBasicsEx3054(
              id: 3054,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3055)
            ReactBasicsEx3055(
              id: 3055,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3056)
            ReactBasicsEx3056(
              id: 3056,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3057)
            ReactBasicsEx3057(
              id: 3057,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3058)
            ReactBasicsEx3058(
              id: 3058,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3059)
            ReactBasicsEx3059(
              id: 3059,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3060)
            ReactBasicsEx3060(
              id: 3060,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3061)
            ReactBasicsEx3061(
              id: 3061,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3062)
            ReactBasicsEx3062(
              id: 3062,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3063)
            ReactBasicsEx3063(
              id: 3063,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3064)
            ReactBasicsEx3064(
              id: 3064,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
