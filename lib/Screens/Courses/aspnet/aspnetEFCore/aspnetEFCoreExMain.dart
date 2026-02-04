import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5050.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5051.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5052.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5053.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5054.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5055.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5056.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5057.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5058.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5059.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5060.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5061.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5062.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5063.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFCore/Ex/aspnetEFCoreEx5064.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetEFCoreExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetEFCoreExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetEFCoreExMain> createState() => _AspnetEFCoreExMainState();
}

class _AspnetEFCoreExMainState extends State<AspnetEFCoreExMain> {
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

          if (widget.id == 5050)
            AspnetEFCoreEx5050(
              id: 5050,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5051)
            AspnetEFCoreEx5051(
              id: 5051,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5052)
            AspnetEFCoreEx5052(
              id: 5052,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5053)
            AspnetEFCoreEx5053(
              id: 5053,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5054)
            AspnetEFCoreEx5054(
              id: 5054,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5055)
            AspnetEFCoreEx5055(
              id: 5055,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5056)
            AspnetEFCoreEx5056(
              id: 5056,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5057)
            AspnetEFCoreEx5057(
              id: 5057,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5058)
            AspnetEFCoreEx5058(
              id: 5058,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5059)
            AspnetEFCoreEx5059(
              id: 5059,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5060)
            AspnetEFCoreEx5060(
              id: 5060,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5061)
            AspnetEFCoreEx5061(
              id: 5061,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5062)
            AspnetEFCoreEx5062(
              id: 5062,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5063)
            AspnetEFCoreEx5063(
              id: 5063,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5064)
            AspnetEFCoreEx5064(
              id: 5064,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
