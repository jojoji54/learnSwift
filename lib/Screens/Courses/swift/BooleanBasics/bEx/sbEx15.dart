import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class BEx15 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const BEx15({super.key, required this.title, required this.id, required this.completed});

  @override
  State<BEx15> createState() => _BEx15State();
}

class _BEx15State extends State<BEx15> {
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
      r'^var\s+\w+\s*=\s*(true|false);?$',
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
        AppLocalizations.of(context)!
            .exercise151SolutionContent
            .replaceAll('@', '{')
            .replaceAll('&', '}'),
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange; // Mantener color si es incorrecto
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.exercise15Hint1Title,
          AppLocalizations.of(context)!
              .exercise151Hint1Content
              .replaceAll('@', '{')
              .replaceAll('&', '}'),
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.exercise151Hint2Title,
          AppLocalizations.of(context)!
              .exercise151Hint2Content
              .replaceAll('@', '{')
              .replaceAll('&', '}'),
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!
              .exercise151SolutionContent
              .replaceAll('@', '{')
              .replaceAll('&', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!
                .tryAgain(_failedAttempts)),
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
              heroTag: "introButton1",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!
                      .exercise151InstructionsContent
                      .replaceAll('@', '{')
                      .replaceAll('&', '}'),
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton1",
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
                heroTag: "helpButton1",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!
                        .exercise151SolutionContent
                        .replaceAll('@', '{')
                        .replaceAll('&', '}'),
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
                      const TextSpan(
                        text: "Example:\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "isSwiftFun ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true",
                        style: TextStyle(color: Colors.orange),
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
