import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<List<Color>> gradients = [
    // Lenguajes
    [Color(0xFFFF5E57), Color(0xFFFFC371)], // Swift
    [Color(0xFF306998), Color(0xFFFFD43B)], // Python
    [Color(0xFFF7DF1E), Color(0xFF000000)], // JavaScript
    [Color(0xFF5382A1), Color(0xFFFFFFFF)], // Java
    [Color(0xFF00599C), Color(0xFF4D4D4D)], // C++
    [Color(0xFF9B4F96), Color(0xFFFFFFFF)], // C#
    [Color(0xFF3D77BC), Color(0xFFF88909)], // Kotlin
    [Color(0xFF8892BF), Color(0xFFFFFFFF)], // PHP
    [Color(0xFFCC342D), Color(0xFFFFFFFF)], // Ruby
    [Color(0xFF00ADD8), Color(0xFFFFFFFF)], // Go
    [Color(0xFF005CA5), Color(0xFFFCE94F)], // COBOL

    // Frameworks
    [Color(0xFF02569B), Color(0xFFFFFFFF)], // Flutter
    [Color(0xFF61DAFB), Color(0xFF20232A)], // React
    [Color(0xFFDD0031), Color(0xFFFFFFFF)], // Angular
    [Color(0xFF41B883), Color(0xFFFFFFFF)], // Vue.js
    [Color(0xFF092E20), Color(0xFFFFFFFF)], // Django
    [Color(0xFF6DB33F), Color(0xFFFFFFFF)], // Spring
    [Color(0xFF000000), Color(0xFF7289DA)], // Symfony
    [Color(0xFFFF2D20), Color(0xFFFFFFFF)], // Laravel
    [Color(0xFF512BD4), Color(0xFFFFFFFF)], // ASP.NET
    [Color(0xFFFF6F00), Color(0xFFFFFFFF)], // TensorFlow
  ];

  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % gradients.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 90, // Ajusta la altura deseada aquí
      duration: const Duration(seconds: 2), // Duración de la transición
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradients[currentIndex],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          gap: 8,
          color: Colors.grey[800], // Icon color for inactive items
          activeColor: Colors.white, // Icon color for active items
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          tabBackgroundColor:
              Colors.white.withOpacity(0.2), // Background for active tab
          tabs: [
            GButton(
              icon: Icons.code,
              text: 'Languages',
            ),
            GButton(
              icon: Icons.layers,
              text: 'Frameworks',
            ),
          ],
          selectedIndex: widget.selectedIndex,
          onTabChange: widget.onTabChange,
        ),
      ),
    );
  }
}
