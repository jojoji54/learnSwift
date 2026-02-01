import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx218 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx218({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx218> createState() => _PythonFileHandlingEx218State();
}

class _PythonFileHandlingEx218State extends State<PythonFileHandlingEx218> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (218):
  /// - import json
  /// - with open("data.json","r") as f:
  /// - data = json.load(f)  (o cualquier varName)
  /// - print(data) o print(varName) o print(data["x"]) etc.
  bool _isValid218(String code) {
    final c = code.trimRight();

    // 1) import json
    final importJsonRegex = RegExp(r'^\s*import\s+json\s*$', multiLine: true);
    if (!importJsonRegex.hasMatch(c)) return false;

    // 2) with open(...,"r") as f:
    final withOpenRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+\.json"|'[^']+\.json')\s*,\s*(?:"r"|'r')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final om = withOpenRegex.firstMatch(c);
    if (om == null) return false;

    final fVar = om.group(1) ?? '';
    if (fVar.isEmpty) return false;

    // 3) dataVar = json.load(fVar)
    final loadAssignRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*json\s*\.\s*load\s*\(\s*' +
          RegExp.escape(fVar) +
          r'\s*\)',
      multiLine: true,
    );
    final lm = loadAssignRegex.firstMatch(c);
    if (lm == null) return false;

    final dataVar = lm.group(1) ?? '';
    if (dataVar.isEmpty) return false;

    // 4) print(...) y que use dataVar (o dataVar[...] etc.)
    final printUsesDataRegex = RegExp(
      r'\bprint\s*\(\s*[\s\S]*?\b' + RegExp.escape(dataVar) + r'\b[\s\S]*?\)',
      multiLine: true,
      dotAll: true,
    );
    if (!printUsesDataRegex.hasMatch(c)) return false;

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
    final ok = _isValid218(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid218(userInput)) {
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
        _showDialog(loc.python218HintTitle1, loc.python218HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python218HintTitle2, loc.python218HintContent2);
      } else {
        _showDialog(
          loc.python218SolutionTitle,
          loc.python218SolutionContent,
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
      loc.python218ExampleCode1,
      loc.python218ExampleCode2,
      loc.python218ExampleCode3,
      loc.python218ExampleCode4,
      loc.python218ExampleCode5,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling218",
              onPressed: () {
                _showDialog(
                  loc.python218InstructionsTitle,
                  loc.python218InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling218",
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
                  loc.python218ExampleTitle,
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
                  loc.python218ExampleOutput,
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
                    hintText: loc.python218EnterCodeHint,
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
