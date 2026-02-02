import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class CsharpBasicsEx912 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const CsharpBasicsEx912({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<CsharpBasicsEx912> createState() => _CsharpBasicsEx912State();
}

class _CsharpBasicsEx912State extends State<CsharpBasicsEx912> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  bool _isValid912(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r'\*', multiLine: true),
      RegExp(r'Console\.WriteLine', multiLine: true),
    ];

    for (final rule in required) {
      if (!rule.hasMatch(normalized)) return false;
    }

    final logCount = RegExp(r'Console\.WriteLine\s*\(', multiLine: true)
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
              fontFamily: "InconsolataRegular",
              fontWeight: FontWeight.bold,
              color: titleColor ?? Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              content,
              style: const TextStyle(
                fontFamily: "InconsolataRegular",
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
    final ok = _isValid912(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid912(userInput)) {
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
        loc.javaCorrectTitle,
        loc.javaCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      _failedAttempts += 1;

      if (_failedAttempts >= 3) {
        _showDialog(loc.javaIncorrectTitle, loc.csharp912SolutionContent);
      } else {
        _showDialog(loc.javaIncorrectTitle, loc.javaIncorrectExplanation);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return FadeIn(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.csharp912InstructionsTitle,
                  style: const TextStyle(
                    fontFamily: "InconsolataBold",
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  loc.csharp912InstructionsContent,
                  style: const TextStyle(
                    fontFamily: "InconsolataRegular",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  loc.csharp912ExampleTitle,
                  style: const TextStyle(
                    fontFamily: "InconsolataBold",
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                CodePreview(
                  withLineNumbers: true,
                  language: CodeLanguage.csharp,
                  lines: [loc.csharp912ExampleCode1, loc.csharp912ExampleCode2, loc.csharp912ExampleCode3],
                ),
                const SizedBox(height: 8),
                Text(
                  loc.csharp912ExampleOutput,
                  style: const TextStyle(
                    fontFamily: "InconsolataRegular",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _controller,
                  maxLines: 6,
                  onChanged: _validateInput,
                  style: TextStyle(color: _inputTextColor),
                  decoration: InputDecoration(
                    hintText: loc.csharp912EnterCodeHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: () => _showDialog(
                        loc.csharp912HintTitle1,
                        loc.csharp912HintContent1,
                        titleColor: Colors.blue,
                      ),
                      child: const Icon(Icons.message),
                    ),
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        final allprovider = Provider.of<AllProvider>(context, listen: false);
                        _submit(allprovider);
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}