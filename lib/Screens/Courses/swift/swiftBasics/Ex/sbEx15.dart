import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

import '../../../../../data/Constant/constant.dart';

class SBEx15 extends StatefulWidget {
    final String title;
  final int id;
  final bool completed;
  const SBEx15({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SBEx15> createState() => _SBEx15State();
}

class _SBEx15State extends State<SBEx15> {
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
  void _validateInput(AllProvider allprovider ) {
    final codeRegex = RegExp(
      r'^func\s+\w+\(\w+:\s*Double\)\s*->\s*Double\s*\{\s*return\s*\(\w+\s*\*\s*9\s*\/\s*5\)\s*\+\s*32\s*\}\nfunc\s+\w+\(\w+:\s*Double\)\s*->\s*Double\s*\{\s*return\s*\(\w+\s*\-\s*32\)\s*\*\s*5\s*\/\s*9\s*\}\nlet\s+\w+\s*=\s*\d+(\.\d+)?\nlet\s+\w+\s*=\s*\d+(\.\d+)?\nprint\(\w+\(\w+:\s*\w+\)\)\nprint\(\w+\(\w+:\s*\w+\)\)$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
         purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allprovider.setData(allprovider.data);
      _controller.clear();
      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.exercise15CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.exercise15Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!.exercise15Hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!
              .exercise15SolutionContent
              .replaceAll('@', '{')
              .replaceAll('&', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.tryAgain(_failedAttempts),
            ),
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
          FloatingActionButton(
            heroTag: "introButton",
            onPressed: () {
              _showDialog(
                AppLocalizations.of(context)!.exerciseInstructionsTitle,
                AppLocalizations.of(context)!.exercise15InstructionsContent,
              );
            },
            backgroundColor: const Color(0xFFfbce72),
            child: const Icon(Icons.message, color: Colors.white),
          ),
          FloatingActionButton(
            heroTag: "runButton",
            onPressed: () {
                _validateInput(allProvider);
              },
            backgroundColor: Colors.black,
            child: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          if (_failedAttempts >= 3 || widget.completed )
            FloatingActionButton(
              heroTag: "helpButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.solutionTitle,
                  AppLocalizations.of(context)!
                      .exercise15SolutionContent
                      .replaceAll('@', '{')
                      .replaceAll('&', '}'),
                  titleColor: Colors.red,
                );
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.help, color: Colors.white),
            ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            style: TextStyle(
              fontFamily: 'InconsolataRegular',
              fontSize: 18,
              color: _inputTextColor,
            ),
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.enterYourCodeHere,
              hintStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
