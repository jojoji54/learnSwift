import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3735.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3736.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3737.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3738.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3739.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3740.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3741.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3742.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3743.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3744.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3745.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3746.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3747.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3748.dart';
import 'package:learnswift/Screens/Courses/vue/vueState/Ex/vueStateEx3749.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueStateExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueStateExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueStateExMain> createState() => _VueStateExMainState();
    }

    class _VueStateExMainState extends State<VueStateExMain> {
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

if (widget.id == 3735)
  VueStateEx3735(
    id: 3735,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3736)
  VueStateEx3736(
    id: 3736,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3737)
  VueStateEx3737(
    id: 3737,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3738)
  VueStateEx3738(
    id: 3738,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3739)
  VueStateEx3739(
    id: 3739,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3740)
  VueStateEx3740(
    id: 3740,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3741)
  VueStateEx3741(
    id: 3741,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3742)
  VueStateEx3742(
    id: 3742,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3743)
  VueStateEx3743(
    id: 3743,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3744)
  VueStateEx3744(
    id: 3744,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3745)
  VueStateEx3745(
    id: 3745,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3746)
  VueStateEx3746(
    id: 3746,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3747)
  VueStateEx3747(
    id: 3747,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3748)
  VueStateEx3748(
    id: 3748,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3749)
  VueStateEx3749(
    id: 3749,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
