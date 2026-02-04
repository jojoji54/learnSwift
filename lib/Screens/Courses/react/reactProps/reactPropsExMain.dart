
    import 'package:flutter/material.dart';
    import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3065.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3066.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3067.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3068.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3069.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3070.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3071.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3072.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3073.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3074.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3075.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3076.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3077.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3078.dart';
import 'package:learnswift/Screens/Courses/react/reactProps/Ex/reactPropsEx3079.dart';

    import 'package:learnswift/Widgets/catInfoIcon.dart';

    class ReactPropsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      ReactPropsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<ReactPropsExMain> createState() => _ReactPropsExMainState();
    }

    class _ReactPropsExMainState extends State<ReactPropsExMain> {
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
              if (widget.id == 3065)
            ReactPropsEx3065(
              id: 3065,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3066)
            ReactPropsEx3066(
              id: 3066,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3067)
            ReactPropsEx3067(
              id: 3067,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3068)
            ReactPropsEx3068(
              id: 3068,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3069)
            ReactPropsEx3069(
              id: 3069,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3070)
            ReactPropsEx3070(
              id: 3070,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3071)
            ReactPropsEx3071(
              id: 3071,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3072)
            ReactPropsEx3072(
              id: 3072,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3073)
            ReactPropsEx3073(
              id: 3073,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3074)
            ReactPropsEx3074(
              id: 3074,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3075)
            ReactPropsEx3075(
              id: 3075,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3076)
            ReactPropsEx3076(
              id: 3076,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3077)
            ReactPropsEx3077(
              id: 3077,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3078)
            ReactPropsEx3078(
              id: 3078,
              title: widget.title,
              completed: widget.completed,
            ),
          if (widget.id == 3079)
            ReactPropsEx3079(
              id: 3079,
              title: widget.title,
              completed: widget.completed,
            ),
            ],
          ),
        );
      }
    }
