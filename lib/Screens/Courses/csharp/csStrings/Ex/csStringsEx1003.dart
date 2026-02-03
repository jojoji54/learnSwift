import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class CSharpStringsEx1003 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const CSharpStringsEx1003({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<CSharpStringsEx1003> createState() => _CSharpStringsEx1003State();
}

class _CSharpStringsEx1003State extends State<CSharpStringsEx1003> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  String _t(String s) => s.replaceAll('@', '{').replaceAll('&', '}');

  bool _isValid1003(String code) {
    final normalized = code.trim();

    final required = <RegExp>[
      RegExp(r'Console\s*\.\s*WriteLine', multiLine: true),
      RegExp(r'\bstring\b', multiLine: true),
    ];

    for (final rule in required) {
      if (!rule.hasMatch(normalized)) return false;
    }

    final logCount = RegExp(r'Console\s*\.\s*WriteLine', multiLine: true)
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
    final ok = _isValid1003(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid1003(userInput)) {
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
        _t(loc.csharpCorrectTitle),
        _t(loc.csharpCorrectExplanation),
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(_t(loc.csharp1003HintTitle1), _t(loc.csharp1003HintContent1));
      } else if (_failedAttempts == 2) {
        _showDialog(_t(loc.csharp1003HintTitle2), _t(loc.csharp1003HintContent2));
      } else {
        _showDialog(
          _t(loc.csharp1003SolutionTitle),
          _t(loc.csharp1003SolutionContent),
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
      _t(loc.csharp1003ExampleCode1),
      _t(loc.csharp1003ExampleCode2),
      _t(loc.csharp1003ExampleCode3),
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonCSharp1003",
              onPressed: () {
                _showDialog(
                  _t(loc.csharp1003InstructionsTitle),
                  _t(loc.csharp1003InstructionsContent),
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtoncsharp1003",
              onPressed: () {
                _showDialog(
                  _t(loc.csharp1003InfoTitle),
                  _t(loc.csharp1003InfoContent),
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonCSharp1003",
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
                  _t(loc.csharp1003ExampleTitle),
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
                  language: CodeLanguage.cpp,
                ),
                const SizedBox(height: 10),
                Text(
                  _t(loc.csharp1003ExampleOutput),
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
                    hintText: _t(loc.csharp1003EnterCodeHint),
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
