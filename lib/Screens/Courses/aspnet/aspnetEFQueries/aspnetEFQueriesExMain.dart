import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5065.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5066.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5067.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5068.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5069.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5070.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5071.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5072.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5073.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5074.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5075.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5076.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5077.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5078.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetEFQueries/Ex/aspnetEFQueriesEx5079.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetEFQueriesExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetEFQueriesExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetEFQueriesExMain> createState() => _AspnetEFQueriesExMainState();
}

class _AspnetEFQueriesExMainState extends State<AspnetEFQueriesExMain> {
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

          if (widget.id == 5065)
            AspnetEFQueriesEx5065(
              id: 5065,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5066)
            AspnetEFQueriesEx5066(
              id: 5066,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5067)
            AspnetEFQueriesEx5067(
              id: 5067,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5068)
            AspnetEFQueriesEx5068(
              id: 5068,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5069)
            AspnetEFQueriesEx5069(
              id: 5069,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5070)
            AspnetEFQueriesEx5070(
              id: 5070,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5071)
            AspnetEFQueriesEx5071(
              id: 5071,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5072)
            AspnetEFQueriesEx5072(
              id: 5072,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5073)
            AspnetEFQueriesEx5073(
              id: 5073,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5074)
            AspnetEFQueriesEx5074(
              id: 5074,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5075)
            AspnetEFQueriesEx5075(
              id: 5075,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5076)
            AspnetEFQueriesEx5076(
              id: 5076,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5077)
            AspnetEFQueriesEx5077(
              id: 5077,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5078)
            AspnetEFQueriesEx5078(
              id: 5078,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5079)
            AspnetEFQueriesEx5079(
              id: 5079,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
