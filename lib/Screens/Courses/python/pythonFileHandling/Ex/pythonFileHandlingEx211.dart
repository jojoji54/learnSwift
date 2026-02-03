import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx211 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx211({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx211> createState() => _PythonFileHandlingEx211State();
}

class _PythonFileHandlingEx211State extends State<PythonFileHandlingEx211> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (211):
  /// 1) with open("file", "r") as f:   (o f=open... y luego close, pero aquí preferimos with)
  /// 2) Leer lineas con:
  ///    - lines = f.readlines()
  ///    OR
  ///    - for line in f:
  /// 3) print(...)
  ///
  /// No exigimos close() si usa with.
  bool _isValid211(String code) {
    final c = code.trimRight();

    // with open("x","r") as f:
    final withOpenRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+"|'[^']+')\s*,\s*(?:"r"|'r')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );

    final m = withOpenRegex.firstMatch(c);
    if (m == null) return false;

    final fVar = m.group(1) ?? '';
    if (fVar.isEmpty) return false;

    // Debe existir un bloque luego del with
    final afterWith = c.substring(m.end);
    if (afterWith.trim().isEmpty) return false;

    // Opción A: lines = f.readlines()
    final readLinesRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*' + RegExp.escape(fVar) + r'\s*\.\s*readlines\s*\(\s*\)',
      multiLine: true,
    );

    // Opción B: for line in f:
    final forInFRegex = RegExp(
      r'^\s*for\s+([A-Za-z_]\w*)\s+in\s+' + RegExp.escape(fVar) + r'\s*:\s*$',
      multiLine: true,
    );

    final hasReadLines = readLinesRegex.hasMatch(c);
    final hasForLoop = forInFRegex.hasMatch(c);

    if (!hasReadLines && !hasForLoop) return false;

    // Debe haber print(...)
    final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);
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
    final ok = _isValid211(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid211(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex].catExercise[widget.id].completed = true;
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
        _showDialog(loc.python211HintTitle1, loc.python211HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python211HintTitle2, loc.python211HintContent2);
      } else {
        _showDialog(
          loc.python211SolutionTitle,
          loc.python211SolutionContent,
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
      loc.python211ExampleCode1,
      loc.python211ExampleCode2,
      loc.python211ExampleCode3,
      loc.python211ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling211",
              onPressed: () {
                _showDialog(
                  loc.python211InstructionsTitle,
                  loc.python211InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython211",
              onPressed: () {
                _showDialog(
                  loc.python211InfoTitle,
                  loc.python211InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling211",
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
                  loc.python211ExampleTitle,
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
                  loc.python211ExampleOutput,
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
                    hintText: loc.python211EnterCodeHint,
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
