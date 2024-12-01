import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IfElsEx44 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const IfElsEx44({super.key, required this.title, required this.id, required this.completed});

  @override
  State<IfElsEx44> createState() => _IfElsEx44State();
}

class _IfElsEx44State extends State<IfElsEx44> {
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
    final userInput = _controller.text.trim();
    final strongPasswordRegex = RegExp(r'^.{8,}$');
    final containsNumber = RegExp(r'\d');
    final containsLetter = RegExp(r'[a-zA-Z]');

    if (strongPasswordRegex.hasMatch(userInput) &&
        containsNumber.hasMatch(userInput) &&
        containsLetter.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();
      _showDialog(
        AppLocalizations.of(context)!.exercise44CorrectTitle,
        AppLocalizations.of(context)!.exercise44CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.exercise44Hint1Title,
          AppLocalizations.of(context)!.exercise44Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.exercise44Hint2Title,
          AppLocalizations.of(context)!.exercise44Hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.exercise44SolutionTitle,
          AppLocalizations.of(context)!
              .exercise44SolutionContent
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
                AppLocalizations.of(context)!.exercise44IntroTitle,
                AppLocalizations.of(context)!.exercise44IntroContent,
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
         if (_failedAttempts >= 3 || widget.completed )
            FloatingActionButton(
              heroTag: "helpButton",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exercise44SolutionTitle,
                  AppLocalizations.of(context)!
                      .exercise44SolutionContent
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
                      .exercise44Example
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
                    hintText: AppLocalizations.of(context)!.exercise44Hint,
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
