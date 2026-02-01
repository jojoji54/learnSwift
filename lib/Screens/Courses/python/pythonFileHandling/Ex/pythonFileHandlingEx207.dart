import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx207 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx207({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx207> createState() => _PythonFileHandlingEx207State();
}

class _PythonFileHandlingEx207State extends State<PythonFileHandlingEx207> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (207):
  /// 1) fileVar = open("something", "r")  (o 'r')
  /// 2) fileVar.read(...)
  /// 3) fileVar.close(...)
  /// 4) print(...)
  ///
  /// Nota: validación aproximada (intencional).
  bool _isValid207(String code) {
    final c = code.trimRight();

    // Captura el nombre de la variable del archivo: f = open("x", "r")
    final openRegex = RegExp(
      r'''^\s*([A-Za-z_]\w*)\s*=\s*open\s*\(\s*(?:"[^"]+"|'[^']+')\s*,\s*(?:"r"|'r')\s*\)\s*$''',
      multiLine: true,
    );
    final om = openRegex.firstMatch(c);
    if (om == null) return false;

    final fileVar = om.group(1) ?? '';
    if (fileVar.isEmpty) return false;

    // Debe haber fileVar.read()
    final readRegex = RegExp(
      r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*read\s*\(\s*\)',
      multiLine: true,
    );
    if (!readRegex.hasMatch(c)) return false;

    // Debe haber fileVar.close()
    final closeRegex = RegExp(
      r'\b' + RegExp.escape(fileVar) + r'\s*\.\s*close\s*\(\s*\)',
      multiLine: true,
    );
    if (!closeRegex.hasMatch(c)) return false;

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
    final ok = _isValid207(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid207(userInput)) {
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
        _showDialog(loc.python207HintTitle1, loc.python207HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python207HintTitle2, loc.python207HintContent2);
      } else {
        _showDialog(
          loc.python207SolutionTitle,
          loc.python207SolutionContent,
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
      loc.python207ExampleCode1,
      loc.python207ExampleCode2,
      loc.python207ExampleCode3,
      loc.python207ExampleCode4,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling207",
              onPressed: () {
                _showDialog(
                  loc.python207InstructionsTitle,
                  loc.python207InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling207",
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
                  loc.python207ExampleTitle,
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
                  loc.python207ExampleOutput,
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
                    hintText: loc.python207EnterCodeHint,
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
