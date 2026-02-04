import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4320.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4321.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4322.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4323.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4324.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4325.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4326.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4327.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4328.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4329.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4330.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4331.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4332.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4333.dart';
import 'package:learnswift/Screens/Courses/spring/springTransactions/Ex/springTransactionsEx4334.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class SpringTransactionsExMain extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final bool completed;
  Color color1;
  Color color2;

  SpringTransactionsExMain({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.color1,
    required this.color2,
  });

  @override
  State<SpringTransactionsExMain> createState() => _SpringTransactionsExMainState();
}

class _SpringTransactionsExMainState extends State<SpringTransactionsExMain> {
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

          if (widget.id == 4320)
            SpringTransactionsEx4320(
              id: 4320,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4321)
            SpringTransactionsEx4321(
              id: 4321,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4322)
            SpringTransactionsEx4322(
              id: 4322,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4323)
            SpringTransactionsEx4323(
              id: 4323,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4324)
            SpringTransactionsEx4324(
              id: 4324,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4325)
            SpringTransactionsEx4325(
              id: 4325,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4326)
            SpringTransactionsEx4326(
              id: 4326,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4327)
            SpringTransactionsEx4327(
              id: 4327,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4328)
            SpringTransactionsEx4328(
              id: 4328,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4329)
            SpringTransactionsEx4329(
              id: 4329,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4330)
            SpringTransactionsEx4330(
              id: 4330,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4331)
            SpringTransactionsEx4331(
              id: 4331,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4332)
            SpringTransactionsEx4332(
              id: 4332,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4333)
            SpringTransactionsEx4333(
              id: 4333,
              title: widget.title,
              completed: widget.completed,
            ),

          if (widget.id == 4334)
            SpringTransactionsEx4334(
              id: 4334,
              title: widget.title,
              completed: widget.completed,
            ),

        ],
      ),
    );
  }
}
