import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnswift/Screens/catSelectorScreen.dart';
import 'package:learnswift/Widgets/DynamicAppBar.dart';
import 'package:learnswift/data/Constant/Constant.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListEN.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListES.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf4f4f2),
        appBar: DynamicAppBar(),
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ZoomIn(
                  child: Lottie.asset('assets/lottie/buNoTrans.json',
                      fit: BoxFit.cover),
                )),
            ListView.builder(
              itemCount: programmingItemsES.length,
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              itemBuilder: (context, index) {
                final course = Constant.languaje == "es"
                    ? programmingItemsES[index]
                    : programmingItemsEN[index];

                return Column(
                  children: [
                    if (index == 0)
                      ZoomIn(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              Constant.languaje == "es"
                                  ? "Lenguajes de Programación"
                                  : "Programming Languages",
                              style: TextStyle(
                                  fontFamily: 'InconsolataRegular',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    if (course.name == "Flutter")
                      ZoomIn(
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Frameworks",
                              style: TextStyle(
                                  fontFamily: 'InconsolataRegular',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    FadeIn(
                      child: Center(
                        // Este widget centra y limita el ancho del Card
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 120, // Limita la altura máxima del Card
                            maxWidth: 1000, // Limita el ancho máximo del Card
                            minWidth: 120,
                          ),
                          child: Card(
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFFf3f4f2),
                                            ),
                                            height: 50,
                                            width: 50,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: ShaderMask(
                                                  shaderCallback: (bounds) =>
                                                      LinearGradient(
                                                    colors: [
                                                      course.color1,
                                                      course.color2
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                  ).createShader(bounds),
                                                  child: Text(
                                                    (course.id).toString(),
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'InconsolataRegular',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors
                                                          .white, // El color se utiliza como fallback
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              course.name,
                                              style: TextStyle(
                                                fontFamily:
                                                    'InconsolataRegular',
                                                fontWeight: FontWeight.bold,
                                                color: course.color1,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        HapticFeedback.lightImpact;
                                        if (course.isActive) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CatSelectorScreen(
                                                title: course.name,
                                                color1: course.color1,
                                                color2: course.color2,
                                                description: course.description,
                                              ),
                                            ),
                                          );
                                        } else {
                                          _showDialog(context);
                                        }
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: !course.isActive
                                                ? Colors.grey.withOpacity(0.5)
                                                : null, // Eliminamos el color estático si usamos degradado
                                            gradient: course.isActive
                                                ? LinearGradient(
                                                    colors: [
                                                      course.color2,
                                                      course.color1,
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                  )
                                                : null, // Aplicamos el degradado solo si está activo
                                          ),
                                          height: 50,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Icon(
                                                !course.isActive
                                                    ? FontAwesomeIcons.lock
                                                    : FontAwesomeIcons.play,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }

  void _showDialog(BuildContext context, {Color? titleColor}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              "😊",
              style: TextStyle(
                fontFamily: 'InconsolataRegular',
                fontWeight: FontWeight.bold,
                color: titleColor ?? Colors.black,
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Constant.languaje == "es"
                      ? "Algunos lenguajes y frameworks no están disponibles por ahora, pero se desbloquearán pronto.\n\n¡Mantente atento a las próximas actualizaciones!"
                      : "Some languages and frameworks are not available yet, but they will be unlocked soon.\n\nStay tuned for upcoming updates!",
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
