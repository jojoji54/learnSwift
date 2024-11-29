import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IfElsEx40 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx40({super.key, required this.title, required this.id});

  @override
  State<IfElsEx40> createState() => _IfElsEx40State();
}

class _IfElsEx40State extends State<IfElsEx40> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

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
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+score\s*=\s*\d+;\s*var\s+participation\s*=\s*(true|false);\s*if\s*\(score\s*>=\s*90\s*&&\s*participation\s*==\s*true\)\s*{\s*print\(.*"A".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*80\)\s*{\s*print\(.*"B".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*70\)\s*{\s*print\(.*"C".*\);\s*}\s*else\s*if\s*\(score\s*>=\s*60\)\s*{\s*print\(.*"D".*\);\s*}\s*else\s*{\s*print\(.*"F".*\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        AppLocalizations.of(context)!.exercise40CorrectTitle,
        AppLocalizations.of(context)!.exercise40CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.exercise40Hint1Title,
          AppLocalizations.of(context)!.exercise40Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.exercise40Hint2Title,
          AppLocalizations.of(context)!
              .exercise40Hint2Content
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.exercise40SolutionTitle,
          AppLocalizations.of(context)!
              .exercise40SolutionContent
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!
                  .tryAgain(_failedAttempts.toString()),
            ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exercise40IntroTitle,
                  AppLocalizations.of(context)!.exercise40IntroContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.exercise40SolutionTitle,
                    AppLocalizations.of(context)!
                        .exercise40SolutionContent
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
                Text(
                  AppLocalizations.of(context)!
                      .exercise40Example
                      .replaceAll('#', '{')
                      .replaceAll('º', '}'),
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
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
                    hintText: AppLocalizations.of(context)!.exercise40Hint,
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
