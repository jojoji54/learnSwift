import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFunctionsEx183 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFunctionsEx183({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFunctionsEx183> createState() => _PythonFunctionsEx183State();
}

class _PythonFunctionsEx183State extends State<PythonFunctionsEx183> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 183 (Keyword Arguments):
  /// 1) def fn(p1, p2):
  /// 2) dentro: print(...) usando p1 y p2
  /// 3) despues: fn(p1=..., p2=...) o fn(p2=..., p1=...) (orden libre)
  bool _isValid183(String code) {
    final normalized = code.trimRight();

    // 1) def fn(p1, p2):
    final defRegex = RegExp(
      r'^\s*def\s+([A-Za-z_]\w*)\s*\(\s*([A-Za-z_]\w*)\s*,\s*([A-Za-z_]\w*)\s*\)\s*:\s*$',
      multiLine: true,
    );
    final defMatch = defRegex.firstMatch(normalized);
    if (defMatch == null) return false;

    final fnName = defMatch.group(1) ?? '';
    final p1 = defMatch.group(2) ?? '';
    final p2 = defMatch.group(3) ?? '';
    if (fnName.isEmpty || p1.isEmpty || p2.isEmpty) return false;

    // 2) print indentado
    final printIndentedRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(([\s\S]*?)\)\s*$',
      multiLine: true,
    );
    final printMatch = printIndentedRegex.firstMatch(normalized);
    if (printMatch == null) return false;

    final insidePrint = printMatch.group(1) ?? '';
    final usesP1 =
        RegExp(r'\b' + RegExp.escape(p1) + r'\b').hasMatch(insidePrint);
    final usesP2 =
        RegExp(r'\b' + RegExp.escape(p2) + r'\b').hasMatch(insidePrint);
    if (!usesP1 || !usesP2) return false;

    // 3) keyword call despues del def (orden libre)
    final afterDef = normalized.substring(defMatch.end);

    final callOrder1 = RegExp(
      r'\b' +
          RegExp.escape(fnName) +
          r'\s*\(\s*' +
          RegExp.escape(p1) +
          r'\s*=\s*.+?,\s*' +
          RegExp.escape(p2) +
          r'\s*=\s*.+?\s*\)',
      multiLine: true,
      dotAll: true,
    );

    final callOrder2 = RegExp(
      r'\b' +
          RegExp.escape(fnName) +
          r'\s*\(\s*' +
          RegExp.escape(p2) +
          r'\s*=\s*.+?,\s*' +
          RegExp.escape(p1) +
          r'\s*=\s*.+?\s*\)',
      multiLine: true,
      dotAll: true,
    );

    if (!callOrder1.hasMatch(afterDef) && !callOrder2.hasMatch(afterDef)) {
      return false;
    }

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
    final ok = _isValid183(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid183(userInput)) {
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
        loc.pythonCorrectTitle,
        loc.pythonCorrectExplanation,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.red;
      });

      if (_failedAttempts == 1) {
        _showDialog(loc.python183HintTitle1, loc.python183HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python183HintTitle2, loc.python183HintContent2);
      } else {
        _showDialog(
          loc.python183SolutionTitle,
          loc.python183SolutionContent,
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
      loc.python183ExampleCode1,
      loc.python183ExampleCode2,
      loc.python183ExampleCode3,
      loc.python183ExampleCode4,
    ];

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFunctions183",
              onPressed: () {
                _showDialog(
                  loc.python183InstructionsTitle,
                  loc.python183InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFunctions183",
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
                  loc.python183ExampleTitle,
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
                ),

                const SizedBox(height: 10),

                Text(
                  loc.python183ExampleOutput,
                  style: const TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 18),

                TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    fontFamily: 'Consolas',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  onChanged: _validateInput,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: loc.python183EnterCodeHint,
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
