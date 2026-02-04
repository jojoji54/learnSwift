import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4885.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4886.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4887.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4888.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4889.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4890.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4891.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4892.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4893.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4894.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4895.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4896.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4897.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4898.dart';
import 'package:learnswift/Screens/Courses/laravel/laravelDeploy/Ex/laravelDeployEx4899.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class LaravelDeployExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  LaravelDeployExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<LaravelDeployExMain> createState() => _LaravelDeployExMainState();
}

class _LaravelDeployExMainState extends State<LaravelDeployExMain> {
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

          if (widget.id == 4885)
            LaravelDeployEx4885(
              id: 4885,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4886)
            LaravelDeployEx4886(
              id: 4886,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4887)
            LaravelDeployEx4887(
              id: 4887,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4888)
            LaravelDeployEx4888(
              id: 4888,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4889)
            LaravelDeployEx4889(
              id: 4889,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4890)
            LaravelDeployEx4890(
              id: 4890,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4891)
            LaravelDeployEx4891(
              id: 4891,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4892)
            LaravelDeployEx4892(
              id: 4892,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4893)
            LaravelDeployEx4893(
              id: 4893,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4894)
            LaravelDeployEx4894(
              id: 4894,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4895)
            LaravelDeployEx4895(
              id: 4895,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4896)
            LaravelDeployEx4896(
              id: 4896,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4897)
            LaravelDeployEx4897(
              id: 4897,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4898)
            LaravelDeployEx4898(
              id: 4898,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4899)
            LaravelDeployEx4899(
              id: 4899,
              title: widget.title,
              completed: widget.completed,
            ),
        ],
      ),
    );
  }
}
