import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3990.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3991.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3992.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3993.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3994.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3995.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3996.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3997.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3998.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx3999.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx4000.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx4001.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx4002.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx4003.dart';
import 'package:learnswift/Screens/Courses/django/djangoOrm/Ex/djangoOrmEx4004.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class DjangoOrmExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  DjangoOrmExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<DjangoOrmExMain> createState() => _DjangoOrmExMainState();
}

class _DjangoOrmExMainState extends State<DjangoOrmExMain> {
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

          if (widget.id == 3990)
            DjangoOrmEx3990(
              id: 3990,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3991)
            DjangoOrmEx3991(
              id: 3991,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3992)
            DjangoOrmEx3992(
              id: 3992,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3993)
            DjangoOrmEx3993(
              id: 3993,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3994)
            DjangoOrmEx3994(
              id: 3994,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3995)
            DjangoOrmEx3995(
              id: 3995,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3996)
            DjangoOrmEx3996(
              id: 3996,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3997)
            DjangoOrmEx3997(
              id: 3997,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3998)
            DjangoOrmEx3998(
              id: 3998,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 3999)
            DjangoOrmEx3999(
              id: 3999,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4000)
            DjangoOrmEx4000(
              id: 4000,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4001)
            DjangoOrmEx4001(
              id: 4001,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4002)
            DjangoOrmEx4002(
              id: 4002,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4003)
            DjangoOrmEx4003(
              id: 4003,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4004)
            DjangoOrmEx4004(
              id: 4004,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
