import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/LoopsBasics/LoopsEx/loopsEx61.dart';

class LoopsExMain extends StatefulWidget {
  final int id;
  final String title;
  const LoopsExMain({super.key, required this.id, required this.title});

  @override
  State<LoopsExMain> createState() => _LoopsExMainState();
}

class _LoopsExMainState extends State<LoopsExMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          toolbarHeight: 100,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Stack(
          children: [
            /*  SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ZoomIn(
                child: Lottie.asset(
                  'assets/lottie/buNoTrans.json',
                  fit: BoxFit.cover,
                ),
              ),
            ), */
            if (widget.id == 61)
              LoopsEx61(
                id: 61,
                title: widget.title,
              ),
          
          ],
        ));
  }
}
