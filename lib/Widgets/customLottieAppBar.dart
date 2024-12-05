import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottieAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String lottiePath; // Ruta del archivo Lottie
  final Widget child; // Widget central
  final double height; // Altura del AppBar
  
  const CustomLottieAppBar({
    Key? key,
    required this.lottiePath,
    required this.child, // Se acepta cualquier widget como contenido
    this.height = 200.0, // Valor por defecto para la altura
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Stack(
        children: [
          // Lottie como fondo
          Positioned.fill(
            child: Lottie.asset(
              lottiePath,
              fit: BoxFit.cover,
            ),
          ),
          // Widget central (puede ser un Row, Column, etc.)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Margen opcional
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
