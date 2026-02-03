import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx195 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx195({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx195> createState() =>
      _PythonDataStructuresEx195State();
}

class _PythonDataStructuresEx195State extends State<PythonDataStructuresEx195> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 195:
  /// - t = ("A", "B", 3) (o equivalente con 3 elementos)
  /// - a, b, c = t  (unpacking)
  /// - print(a) / print(b) / print(c)
  bool _isValid195(String code) {
    final c = code.trimRight();

    // 1) tupla asignada: t = (x, y, z)
    // Aproximado: strings o números.
    final tupleAssignRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*\(\s*(?:\d+|["\x27][^"\x27]+["\x27])\s*,\s*'
      r'(?:\d+|["\x27][^"\x27]+["\x27])\s*,\s*(?:\d+|["\x27][^"\x27]+["\x27])\s*\)',
      multiLine: true,
      dotAll: true,
    );

    final tupleMatch = tupleAssignRegex.firstMatch(c);
    if (tupleMatch == null) return false;

    final tupleVar = tupleMatch.group(1) ?? '';
    if (tupleVar.isEmpty) return false;

    // 2) unpacking: a, b, c = tupleVar
    final unpackRegex = RegExp(
      r'^\s*([A-Za-z_]\w*)\s*,\s*([A-Za-z_]\w*)\s*,\s*([A-Za-z_]\w*)\s*=\s*' +
          RegExp.escape(tupleVar) +
          r'\s*$',
      multiLine: true,
    );

    final unpackMatch = unpackRegex.firstMatch(c);
    if (unpackMatch == null) return false;

    final a = unpackMatch.group(1) ?? '';
    final b = unpackMatch.group(2) ?? '';
    final d = unpackMatch.group(3) ?? ''; // (c) pero le pongo d para no confundir con code
    if (a.isEmpty || b.isEmpty || d.isEmpty) return false;

    // 3) print(a|b|c)
    final printUnpackedRegex = RegExp(
      r'\bprint\s*\(\s*(' +
          RegExp.escape(a) +
          r'|' +
          RegExp.escape(b) +
          r'|' +
          RegExp.escape(d) +
          r')\s*\)',
      multiLine: true,
    );
    if (!printUnpackedRegex.hasMatch(c)) return false;

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
    final ok = _isValid195(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid195(userInput)) {
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
        _showDialog(loc.python195HintTitle1, loc.python195HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python195HintTitle2, loc.python195HintContent2);
      } else {
        _showDialog(
          loc.python195SolutionTitle,
          loc.python195SolutionContent,
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
      loc.python195ExampleCode1,
      loc.python195ExampleCode2,
      loc.python195ExampleCode3,
      loc.python195ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures195",
              onPressed: () {
                _showDialog(
                  loc.python195InstructionsTitle,
                  loc.python195InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython195",
              onPressed: () {
                _showDialog(
                  loc.python195InfoTitle,
                  loc.python195InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures195",
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
                  loc.python195ExampleTitle,
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
                  loc.python195ExampleOutput,
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
                    hintText: loc.python195EnterCodeHint,
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
