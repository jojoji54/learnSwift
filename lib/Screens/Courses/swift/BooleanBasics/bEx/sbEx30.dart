import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class BEx30 extends StatefulWidget {
     final String title;
  final int id;
  final bool completed;
  const BEx30({super.key, required this.title, required this.id, required this.completed});

  @override
  State<BEx30> createState() => _BEx30State();
}

class _BEx30State extends State<BEx30> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

  // Mostrar diálogo genérico
  void _showDialog(String title, String content, {Color? titleColor}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'InconsolataRegular',
              fontWeight: FontWeight.bold,
              color: titleColor ?? Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              content,
              style: const TextStyle(
                fontFamily: 'InconsolataRegular',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(AppLocalizations.of(context)!.close),
            ),
          ],
        );
      },
    );
  }

  // Validar el texto ingresado
 void _validateInput(AllProvider allprovider )  {
    final codeRegex = RegExp(
      r'^let\s+isUserLoggedIn\s*=\s*(true|false);\s*let\s+hasPremiumAccess\s*=\s*(true|false);\s*if\s*\(isUserLoggedIn\s*&&\s*hasPremiumAccess\)\s*{\s*print\("Access granted to premium feature!"\);\s*}\s*else\s*{\s*print\("Access denied\. Please log in or upgrade\."\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
        purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear(); // Limpiar el campo de texto

      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.booleanLogicExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange; // Mantener color si es incorrecto
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.hint1BooleanLogic,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!
              .hint2BooleanLogic
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!
              .exercise30SolutionContent
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!
                .tryAgain(_failedAttempts.toString())),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton2",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!.booleanLogicInstructions,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton2",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton2",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!
                        .exercise30SolutionContent
                        .replaceAll('#', '{')
                        .replaceAll('º', '}'),
                    titleColor: Colors.red,
                  );
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.help, color: Colors.white),
              ),
            ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "${AppLocalizations.of(context)!.example}:\n",
                        style: const TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text:
                            "let isUserLoggedIn = true;\nlet hasPremiumAccess = false;\nif (isUserLoggedIn && hasPremiumAccess) {\n  print(\"Access granted to premium feature!\");\n} else {\n  print(\"Access denied. Please log in or upgrade.\");\n}",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: AppLocalizations.of(context)!.enterYourCodeHere,
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
