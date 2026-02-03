import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx204 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx204({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx204> createState() =>
      _PythonDataStructuresEx204State();
}

class _PythonDataStructuresEx204State extends State<PythonDataStructuresEx204> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 204:
  /// - Dos sets: a = set([...]) / {..}  y  b = set([...]) / {..}
  /// - Unión: a | b  (o a.union(b))
  /// - Intersección: a & b (o a.intersection(b))
  /// - print(...) de resultados
  bool _isValid204(String code) {
    final c = code.trimRight();

    // Capturamos 2 variables de sets
    final setAssignRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*(?:set\s*\(\s*[\s\S]*?\s*\)|\{[\s\S]*?\})',
      multiLine: true,
      dotAll: true,
    );

    final matches = setAssignRegex.allMatches(c).toList();
    if (matches.length < 2) return false;

    final aName = matches[0].group(1) ?? '';
    final bName = matches[1].group(1) ?? '';
    if (aName.isEmpty || bName.isEmpty) return false;
    if (aName == bName) return false;

    // Unión: a | b  o  a.union(b)
    final unionRegex1 = RegExp(
      r'\b' +
          RegExp.escape(aName) +
          r'\b\s*\|\s*\b' +
          RegExp.escape(bName) +
          r'\b',
      multiLine: true,
    );
    final unionRegex2 = RegExp(
      r'\b' +
          RegExp.escape(aName) +
          r'\s*\.\s*union\s*\(\s*' +
          RegExp.escape(bName) +
          r'\s*\)',
      multiLine: true,
    );

    final hasUnion = unionRegex1.hasMatch(c) || unionRegex2.hasMatch(c);
    if (!hasUnion) return false;

    // Intersección: a & b  o  a.intersection(b)
    final interRegex1 = RegExp(
      r'\b' +
          RegExp.escape(aName) +
          r'\b\s*&\s*\b' +
          RegExp.escape(bName) +
          r'\b',
      multiLine: true,
    );
    final interRegex2 = RegExp(
      r'\b' +
          RegExp.escape(aName) +
          r'\s*\.\s*intersection\s*\(\s*' +
          RegExp.escape(bName) +
          r'\s*\)',
      multiLine: true,
    );

    final hasInter = interRegex1.hasMatch(c) || interRegex2.hasMatch(c);
    if (!hasInter) return false;

    // print(...)
    final printRegex = RegExp(r'\bprint\s*\(');
    if (!printRegex.hasMatch(c)) return false;

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
    final ok = _isValid204(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid204(userInput)) {
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
        _showDialog(loc.python204HintTitle1, loc.python204HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python204HintTitle2, loc.python204HintContent2);
      } else {
        _showDialog(
          loc.python204SolutionTitle,
          loc.python204SolutionContent,
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
      loc.python204ExampleCode1,
      loc.python204ExampleCode2,
      loc.python204ExampleCode3,
      loc.python204ExampleCode4,
      loc.python204ExampleCode5,
      loc.python204ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures204",
              onPressed: () {
                _showDialog(
                  loc.python204InstructionsTitle,
                  loc.python204InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython204",
              onPressed: () {
                _showDialog(
                  loc.python204InfoTitle,
                  loc.python204InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures204",
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
                  loc.python204ExampleTitle,
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
                  loc.python204ExampleOutput,
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
                    hintText: loc.python204EnterCodeHint,
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
