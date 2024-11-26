import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';

class SBEx14 extends StatefulWidget {
  final String title;
  final int id;
  const SBEx14({super.key, required this.title, required this.id});

  @override
  State<SBEx14> createState() => _SBEx14State();
}

class _SBEx14State extends State<SBEx14> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.orange;

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
  void _validateInput() async{
    final codeRegex = RegExp(
      r'^let\s+\w+\s*=\s*\d+(\.\d+)?\nfunc\s+\w+\(\w+:\s*Double\)\s*->\s*Double\s*\{\s*return\s+\w+\s*\*\s*\w+\s*\*\s*\w+\s*\}\nlet\s+\w+\s*=\s*\[.*\]\nvar\s+\w+\s*=\s*\[Double\]\(\)\nfor\s+\w+\s+in\s+\w+\s*\{\s*\w+\.append\(\w+\(\w+:\s*\w+\)\)\s*\}\nprint\(\w+\)$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
       PurchaseManagerSingleton().updateItemAndSave(
        widget.id,
        completed: true,
      );
      await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
        PurchaseManagerSingleton().purchaseAndDevelop,
      );
      _controller.clear();
      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.exercise14CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.exercise14Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!.exercise14Hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!
              .exercise14SolutionContent
              .replaceAll('@', '{')
              .replaceAll('&', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(AppLocalizations.of(context)!.tryAgain(_failedAttempts)),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "introButton",
            onPressed: () {
              _showDialog(
                AppLocalizations.of(context)!.exerciseInstructionsTitle,
                AppLocalizations.of(context)!.exercise14InstructionsContent,
              );
            },
            backgroundColor: const Color(0xFFfbce72),
            child: const Icon(Icons.message, color: Colors.white),
          ),
          FloatingActionButton(
            heroTag: "runButton",
            onPressed: _validateInput,
            backgroundColor: Colors.black,
            child: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          if (_failedAttempts >= 3)
            FloatingActionButton(
              heroTag: "helpButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.solutionTitle,
                  AppLocalizations.of(context)!
                      .exercise14SolutionContent
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
