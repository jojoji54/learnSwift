import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3780.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3781.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3782.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3783.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3784.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3785.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3786.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3787.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3788.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3789.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3790.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3791.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3792.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3793.dart';
import 'package:learnswift/Screens/Courses/vue/vueComposition/Ex/vueCompositionEx3794.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueCompositionExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueCompositionExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueCompositionExMain> createState() => _VueCompositionExMainState();
    }

    class _VueCompositionExMainState extends State<VueCompositionExMain> {
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

if (widget.id == 3780)
  VueCompositionEx3780(
    id: 3780,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3781)
  VueCompositionEx3781(
    id: 3781,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3782)
  VueCompositionEx3782(
    id: 3782,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3783)
  VueCompositionEx3783(
    id: 3783,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3784)
  VueCompositionEx3784(
    id: 3784,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3785)
  VueCompositionEx3785(
    id: 3785,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3786)
  VueCompositionEx3786(
    id: 3786,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3787)
  VueCompositionEx3787(
    id: 3787,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3788)
  VueCompositionEx3788(
    id: 3788,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3789)
  VueCompositionEx3789(
    id: 3789,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3790)
  VueCompositionEx3790(
    id: 3790,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3791)
  VueCompositionEx3791(
    id: 3791,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3792)
  VueCompositionEx3792(
    id: 3792,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3793)
  VueCompositionEx3793(
    id: 3793,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3794)
  VueCompositionEx3794(
    id: 3794,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
