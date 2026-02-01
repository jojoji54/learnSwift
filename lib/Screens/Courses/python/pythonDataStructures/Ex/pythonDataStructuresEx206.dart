import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx206 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx206({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx206> createState() =>
      _PythonDataStructuresEx206State();
}

class _PythonDataStructuresEx206State extends State<PythonDataStructuresEx206> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Challenge 2 (206):
  /// - Lista de tuplas: points = [(0,0), (1,0), ...]
  /// - Diccionario vacío: counts = dict()
  /// - For: for p in points:
  /// - Conteo con get default: counts[p] = counts.get(p, 0) + 1
  /// - print(...) (puede ser print(counts) o un loop items() que imprima)
  bool _isValid206(String code) {
    final c = code.trimRight();

    // 1) Lista con tuplas: points = [(0, 0), (1, 0), ...]
    final tupleListRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*\[\s*\(\s*-?\d+\s*,\s*-?\d+\s*\)\s*,\s*\(\s*-?\d+\s*,\s*-?\d+\s*\)(?:\s*,\s*\(\s*-?\d+\s*,\s*-?\d+\s*\))*\s*\]',
      multiLine: true,
      dotAll: true,
    );
    final lm = tupleListRegex.firstMatch(c);
    if (lm == null) return false;

    final listName = lm.group(1) ?? '';
    if (listName.isEmpty) return false;

    // 2) Dict vacío: counts = dict()
    final dictRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*dict\s*\(\s*\)\s*$',
      multiLine: true,
    );
    final dm = dictRegex.firstMatch(c);
    if (dm == null) return false;

    final dName = dm.group(1) ?? '';
    if (dName.isEmpty) return false;

    // 3) for p in points:
    final forRegex = RegExp(
      r'^\s*for\s+([A-Za-z_]\w*)\s+in\s+' +
          RegExp.escape(listName) +
          r'\s*:\s*$',
      multiLine: true,
    );
    final fm = forRegex.firstMatch(c);
    if (fm == null) return false;

    final iterVar = fm.group(1) ?? '';
    if (iterVar.isEmpty) return false;

    // 4) counts[p] = counts.get(p, 0) + 1
    final countLineRegex = RegExp(
      RegExp.escape(dName) +
          r'\s*\[\s*' +
          RegExp.escape(iterVar) +
          r'\s*\]\s*=\s*' +
          RegExp.escape(dName) +
          r'\s*\.\s*get\s*\(\s*' +
          RegExp.escape(iterVar) +
          r'\s*,\s*0\s*\)\s*\+\s*1',
      multiLine: true,
    );
    if (!countLineRegex.hasMatch(c)) return false;

    // 5) print(...)
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
    final ok = _isValid206(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid206(userInput)) {
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
        _showDialog(loc.python206HintTitle1, loc.python206HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python206HintTitle2, loc.python206HintContent2);
      } else {
        _showDialog(
          loc.python206SolutionTitle,
          loc.python206SolutionContent,
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
      loc.python206ExampleCode1,
      loc.python206ExampleCode2,
      loc.python206ExampleCode3,
      loc.python206ExampleCode4,
      loc.python206ExampleCode5,
      loc.python206ExampleCode6,
      loc.python206ExampleCode7,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures206",
              onPressed: () {
                _showDialog(
                  loc.python206InstructionsTitle,
                  loc.python206InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures206",
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
                  loc.python206ExampleTitle,
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
                  loc.python206ExampleOutput,
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
                    hintText: loc.python206EnterCodeHint,
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
