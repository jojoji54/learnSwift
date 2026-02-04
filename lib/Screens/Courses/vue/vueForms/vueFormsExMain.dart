import 'package:flutter/material.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3750.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3751.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3752.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3753.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3754.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3755.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3756.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3757.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3758.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3759.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3760.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3761.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3762.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3763.dart';
import 'package:learnswift/Screens/Courses/vue/vueForms/Ex/vueFormsEx3764.dart';
import 'package:learnswift/Widgets/catInfoIcon.dart';

class VueFormsExMain extends StatefulWidget {
      final int id;
      final String title;
      final String description;
      final bool completed;
      Color color1;
      Color color2;

      VueFormsExMain({
        super.key,
        required this.id,
        required this.title,
        required this.description,
        required this.completed,
        required this.color1,
        required this.color2,
      });

      @override
      State<VueFormsExMain> createState() => _VueFormsExMainState();
    }

    class _VueFormsExMainState extends State<VueFormsExMain> {
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

if (widget.id == 3750)
  VueFormsEx3750(
    id: 3750,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3751)
  VueFormsEx3751(
    id: 3751,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3752)
  VueFormsEx3752(
    id: 3752,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3753)
  VueFormsEx3753(
    id: 3753,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3754)
  VueFormsEx3754(
    id: 3754,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3755)
  VueFormsEx3755(
    id: 3755,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3756)
  VueFormsEx3756(
    id: 3756,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3757)
  VueFormsEx3757(
    id: 3757,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3758)
  VueFormsEx3758(
    id: 3758,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3759)
  VueFormsEx3759(
    id: 3759,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3760)
  VueFormsEx3760(
    id: 3760,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3761)
  VueFormsEx3761(
    id: 3761,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3762)
  VueFormsEx3762(
    id: 3762,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3763)
  VueFormsEx3763(
    id: 3763,
    title: widget.title,
    completed: widget.completed,
  ),

if (widget.id == 3764)
  VueFormsEx3764(
    id: 3764,
    title: widget.title,
    completed: widget.completed,
  ),
            ],
          ),
        );
      }
    }
