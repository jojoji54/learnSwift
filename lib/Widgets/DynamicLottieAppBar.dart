import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DynamicLottieAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DynamicLottieAppBar({Key? key}) : super(key: key);

  @override
  _DynamicLottieAppBarState createState() => _DynamicLottieAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(130);
}

class _DynamicLottieAppBarState extends State<DynamicLottieAppBar> {
  final List<String> lottiePaths = [
    'assets/custom/swiftAppBar.json',
     'assets/custom/pythonAppBar.json',
  ];

  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % lottiePaths.length;
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
    return AppBar(
      toolbarHeight: 130,
      flexibleSpace: Stack(
        children: [
          // Fondo animado con Lottie que cubre todo el ancho
          Positioned.fill(
            child: Lottie.asset(
              lottiePaths[currentIndex],
              fit: BoxFit.cover, // Asegura que ocupe todo el espacio
              key: ValueKey<int>(currentIndex),
            ),
          ),
          // Fondo semi-transparente opcional
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesomeIcons.info,
              color: Colors.transparent,
            ),
            Text(
              'CodeCrafters',
              style: TextStyle(
                fontFamily: 'InconsolataBold',
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            const InfoIcon(),
          ],
        ),
      ),
    );
  }
}

class InfoIcon extends StatelessWidget {
  const InfoIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.infoCircle,
      color: Colors.white,
    );
  }
}
