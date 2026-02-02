import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class JsArraysEx376 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const JsArraysEx376({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<JsArraysEx376> createState() => _JsArraysEx376State();
}

class _JsArraysEx376State extends State<JsArraysEx376> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isValid376(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r'\.push', multiLine: true)
    ];

    for (final rule in required) {
      if (!rule.hasMatch(normalized)) return false;
    }
    
    final logCount = RegExp(r'console\.log\s*\(', multiLine: true)
        .allMatches(normalized)
        .length;
    if (logCount < 1) return false;

    return true;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

  void _validateInput(String userInput) {
    final ok = _isValid376(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid376(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;

      allprovider.setData(allprovider.data);
      _controller.clear();

      _showDialog(
        loc.jsCorrectTitle,
        loc.jsCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(loc.js376HintTitle1, loc.js376HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.js376HintTitle2, loc.js376HintContent2);
      } else {
        _showDialog(
          loc.js376SolutionTitle,
          loc.js376SolutionContent,
          titleColor: Colors.red,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    final loc = AppLocalizations.of(context)!;

    final exampleLines = <String>[
      loc.js376ExampleCode1,
      loc.js376ExampleCode2,
      loc.js376ExampleCode3,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonJsArraysEx376",
              onPressed: () {
                _showDialog(
                  loc.js376InstructionsTitle,
                  loc.js376InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonJsArraysEx376",
              onPressed: () => _submit(allProvider),
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.js376ExampleTitle,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                CodePreview(
                  lines: exampleLines,
                  withLineNumbers: true,
                  language: CodeLanguage.javascript,
                ),
                const SizedBox(height: 10),
                Text(
                  loc.js376ExampleOutput,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _controller,
                  onChanged: _validateInput,
                  maxLines: 6,
                  style: TextStyle(
                    color: _inputTextColor,
                    fontFamily: 'InconsolataRegular',
                  ),
                  decoration: InputDecoration(
                    hintText: loc.js376EnterCodeHint,
                    hintStyle: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      color: Colors.grey,
                    ),
                    border: const OutlineInputBorder(),
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
