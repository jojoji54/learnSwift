import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5110.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5111.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5112.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5113.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5114.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5115.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5116.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5117.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5118.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5119.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5120.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5121.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5122.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5123.dart';
import 'package:learnswift/Screens/Courses/aspnet/aspnetTestingDeploy/Ex/aspnetTestingDeployEx5124.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class AspnetTestingDeployExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  AspnetTestingDeployExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<AspnetTestingDeployExMain> createState() => _AspnetTestingDeployExMainState();
}

class _AspnetTestingDeployExMainState extends State<AspnetTestingDeployExMain> {
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

          if (widget.id == 5110)
            AspnetTestingDeployEx5110(
              id: 5110,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5111)
            AspnetTestingDeployEx5111(
              id: 5111,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5112)
            AspnetTestingDeployEx5112(
              id: 5112,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5113)
            AspnetTestingDeployEx5113(
              id: 5113,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5114)
            AspnetTestingDeployEx5114(
              id: 5114,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5115)
            AspnetTestingDeployEx5115(
              id: 5115,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5116)
            AspnetTestingDeployEx5116(
              id: 5116,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5117)
            AspnetTestingDeployEx5117(
              id: 5117,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5118)
            AspnetTestingDeployEx5118(
              id: 5118,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5119)
            AspnetTestingDeployEx5119(
              id: 5119,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5120)
            AspnetTestingDeployEx5120(
              id: 5120,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5121)
            AspnetTestingDeployEx5121(
              id: 5121,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5122)
            AspnetTestingDeployEx5122(
              id: 5122,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5123)
            AspnetTestingDeployEx5123(
              id: 5123,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 5124)
            AspnetTestingDeployEx5124(
              id: 5124,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
