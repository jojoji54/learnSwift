import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx213 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx213({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx213> createState() => _PythonFileHandlingEx213State();
}

class _PythonFileHandlingEx213State extends State<PythonFileHandlingEx213> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (213):
  /// 1) from pathlib import Path  OR  import pathlib
  /// 2) Crear un Path: p = Path("file.txt")  OR  p = pathlib.Path("file.txt")
  /// 3) Usar al menos un método/propiedad: exists(), name, suffix, parent, stem
  /// 4) print(...)
  bool _isValid213(String code) {
    final c = code.trimRight();

    final importPathRegex = RegExp(
      r'^\s*from\s+pathlib\s+import\s+Path\s*$',
      multiLine: true,
    );

    final importPathlibRegex = RegExp(
      r'^\s*import\s+pathlib\s*$',
      multiLine: true,
    );

    final hasImport = importPathRegex.hasMatch(c) || importPathlibRegex.hasMatch(c);
    if (!hasImport) return false;

    // Captura varName en: p = Path("x")  o  p = pathlib.Path("x")
    final pathCreateRegex = RegExp(
      r'''^\s*([A-Za-z_]\w*)\s*=\s*(?:Path|pathlib\.Path)\s*\(\s*(?:"[^"]+"|'[^']+')\s*\)\s*$''',
      multiLine: true,
    );

    final m = pathCreateRegex.firstMatch(c);
    if (m == null) return false;

    final pVar = m.group(1) ?? '';
    if (pVar.isEmpty) return false;

    // Debe usar una propiedad/método típico
    final usesExists = RegExp(
      r'\b' + RegExp.escape(pVar) + r'\s*\.\s*exists\s*\(\s*\)',
      multiLine: true,
    );

    final usesName = RegExp(
      r'\b' + RegExp.escape(pVar) + r'\s*\.\s*name\b',
      multiLine: true,
    );

    final usesSuffix = RegExp(
      r'\b' + RegExp.escape(pVar) + r'\s*\.\s*suffix\b',
      multiLine: true,
    );

    final usesParent = RegExp(
      r'\b' + RegExp.escape(pVar) + r'\s*\.\s*parent\b',
      multiLine: true,
    );

    final usesStem = RegExp(
      r'\b' + RegExp.escape(pVar) + r'\s*\.\s*stem\b',
      multiLine: true,
    );

    final hasPathUsage =
        usesExists.hasMatch(c) ||
        usesName.hasMatch(c) ||
        usesSuffix.hasMatch(c) ||
        usesParent.hasMatch(c) ||
        usesStem.hasMatch(c);

    if (!hasPathUsage) return false;

    // print(...)
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
    final ok = _isValid213(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid213(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      final idx = allprovider.data[Constant.catIndex].catExercise
          .indexWhere((e) => e.id == widget.id);
      if (idx != -1) {
        allprovider.data[Constant.catIndex].catExercise[idx].completed = true;
      }
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
        _showDialog(loc.python213HintTitle1, loc.python213HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python213HintTitle2, loc.python213HintContent2);
      } else {
        _showDialog(
          loc.python213SolutionTitle,
          loc.python213SolutionContent,
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
      loc.python213ExampleCode1,
      loc.python213ExampleCode2,
      loc.python213ExampleCode3,
      loc.python213ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling213",
              onPressed: () {
                _showDialog(
                  loc.python213InstructionsTitle,
                  loc.python213InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython213",
              onPressed: () {
                _showDialog(
                  loc.python213InfoTitle,
                  loc.python213InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling213",
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
                  loc.python213ExampleTitle,
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
                  loc.python213ExampleOutput,
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
                    hintText: loc.python213EnterCodeHint,
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
