import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Importa localización

class IfElsEx42 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx42({super.key, required this.title, required this.id});

  @override
  State<IfElsEx42> createState() => _IfElsEx42State();
}

class _IfElsEx42State extends State<IfElsEx42> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.orange;

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

  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+gpa\s*=\s*\d\.\d;\s*var\s+hasRecommendation\s*=\s*(true|false);\s*var\s+isExtraCurricularActive\s*=\s*(true|false);\s*if\s*\(gpa\s*>=\s*3\.5\s*&&\s*hasRecommendation\s*==\s*true\s*&&\s*isExtraCurricularActive\s*==\s*true\)\s*{\s*print\(.*"Admitted".*\);\s*}\s*else\s*{\s*print\(.*"Not Admitted".*\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        AppLocalizations.of(context)!.exercise42CorrectTitle,
        AppLocalizations.of(context)!.exercise42CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.exercise42Hint1Title,
          AppLocalizations.of(context)!.exercise42Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.exercise42Hint2Title,
          AppLocalizations.of(context)!
              .exercise42Hint2Content
              .replaceAll('#', '{')
              .replaceAll('º', '}'),
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.exercise42SolutionTitle,
          AppLocalizations.of(context)!
              .exercise42SolutionContent
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
          FloatingActionButton(
            heroTag: "introButton",
            onPressed: () {
              _showDialog(
                AppLocalizations.of(context)!.exercise42IntroTitle,
                AppLocalizations.of(context)!.exercise42IntroContent,
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
                  AppLocalizations.of(context)!.exercise42SolutionTitle,
                  AppLocalizations.of(context)!
                      .exercise42SolutionContent
                      .replaceAll('#', '{')
                      .replaceAll('º', '}'),
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
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!
                      .exercise42Example
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
                    hintText: AppLocalizations.of(context)!.exercise42Hint,
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
