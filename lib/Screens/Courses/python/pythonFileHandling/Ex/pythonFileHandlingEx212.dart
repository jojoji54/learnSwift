import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx212 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx212({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx212> createState() => _PythonFileHandlingEx212State();
}

class _PythonFileHandlingEx212State extends State<PythonFileHandlingEx212> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (212):
  /// 1) with open("file", "r") as f:
  /// 2) usar f.tell()
  /// 3) usar f.seek(n) (ideal 0)
  /// 4) usar f.read(...) (read() o read(1), etc)
  /// 5) print(...)
  bool _isValid212(String code) {
    final c = code.trimRight();

    // with open("x", "r") as f:
    final withOpenRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+"|'[^']+')\s*,\s*(?:"r"|'r')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final m = withOpenRegex.firstMatch(c);
    if (m == null) return false;

    final fVar = m.group(1) ?? '';
    if (fVar.isEmpty) return false;

    // Debe haber contenido tras el with
    final afterWith = c.substring(m.end);
    if (afterWith.trim().isEmpty) return false;

    // f.tell()
    final tellRegex = RegExp(
      r'\b' + RegExp.escape(fVar) + r'\s*\.\s*tell\s*\(\s*\)',
      multiLine: true,
    );
    if (!tellRegex.hasMatch(c)) return false;

    // f.seek(0) o f.seek(5)
    final seekRegex = RegExp(
      r'\b' + RegExp.escape(fVar) + r'\s*\.\s*seek\s*\(\s*\d+\s*\)',
      multiLine: true,
    );
    if (!seekRegex.hasMatch(c)) return false;

    // f.read() o f.read(1)
    final readRegex = RegExp(
      r'\b' + RegExp.escape(fVar) + r'\s*\.\s*read\s*\(\s*\d*\s*\)',
      multiLine: true,
    );
    if (!readRegex.hasMatch(c)) return false;

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
    final ok = _isValid212(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid212(userInput)) {
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
        _showDialog(loc.python212HintTitle1, loc.python212HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python212HintTitle2, loc.python212HintContent2);
      } else {
        _showDialog(
          loc.python212SolutionTitle,
          loc.python212SolutionContent,
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
      loc.python212ExampleCode1,
      loc.python212ExampleCode2,
      loc.python212ExampleCode3,
      loc.python212ExampleCode4,
      loc.python212ExampleCode5,
      loc.python212ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling212",
              onPressed: () {
                _showDialog(
                  loc.python212InstructionsTitle,
                  loc.python212InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling212",
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
                  loc.python212ExampleTitle,
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
                  loc.python212ExampleOutput,
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
                    hintText: loc.python212EnterCodeHint,
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
