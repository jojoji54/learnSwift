import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5005.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5006.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5007.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5008.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5009.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5010.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5011.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5012.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5013.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5014.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5015.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5016.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5017.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5018.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetConfig/Ex/aspnetConfigEx5019.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetConfigExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetConfigExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetConfigExMain> createState() => _AspnetConfigExMainState();
}

class _AspnetConfigExMainState extends State<AspnetConfigExMain> {
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

          if (widget.id == 5005)
            AspnetConfigEx5005(
              id: 5005,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5006)
            AspnetConfigEx5006(
              id: 5006,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5007)
            AspnetConfigEx5007(
              id: 5007,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5008)
            AspnetConfigEx5008(
              id: 5008,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5009)
            AspnetConfigEx5009(
              id: 5009,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5010)
            AspnetConfigEx5010(
              id: 5010,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5011)
            AspnetConfigEx5011(
              id: 5011,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5012)
            AspnetConfigEx5012(
              id: 5012,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5013)
            AspnetConfigEx5013(
              id: 5013,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5014)
            AspnetConfigEx5014(
              id: 5014,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5015)
            AspnetConfigEx5015(
              id: 5015,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5016)
            AspnetConfigEx5016(
              id: 5016,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5017)
            AspnetConfigEx5017(
              id: 5017,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5018)
            AspnetConfigEx5018(
              id: 5018,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5019)
            AspnetConfigEx5019(
              id: 5019,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
