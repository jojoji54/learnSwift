import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx217 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx217({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx217> createState() => _PythonFileHandlingEx217State();
}

class _PythonFileHandlingEx217State extends State<PythonFileHandlingEx217> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (217):
  /// - import csv
  /// - with open("out.csv","w") as f:   (permitimos newline="")
  /// - writer = csv.writer(f)
  /// - writer.writerow([...])  o writer.writerows([...])
  /// - print(...)
  bool _isValid217(String code) {
    final c = code.trimRight();

    // 1) import csv
    final importCsvRegex = RegExp(r'^\s*import\s+csv\s*$', multiLine: true);
    if (!importCsvRegex.hasMatch(c)) return false;

    // 2) with open(...,"w", optional newline="") as f:
    final withOpenRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+\.csv"|'[^']+\.csv')\s*,\s*(?:"w"|'w')\s*(?:,\s*newline\s*=\s*(?:"[^"]*"|'[^']*'))?\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final openMatch = withOpenRegex.firstMatch(c);
    if (openMatch == null) return false;

    final fVar = openMatch.group(1) ?? '';
    if (fVar.isEmpty) return false;

    // 3) writerVar = csv.writer(fVar)
    final writerAssignRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*csv\s*\.\s*writer\s*\(\s*' +
          RegExp.escape(fVar) +
          r'\s*\)',
      multiLine: true,
    );
    final writerMatch = writerAssignRegex.firstMatch(c);
    if (writerMatch == null) return false;

    final wVar = writerMatch.group(1) ?? '';
    if (wVar.isEmpty) return false;

    // 4) wVar.writerow([...]) o wVar.writerows([...])
    final writeRowRegex = RegExp(
      r'\b' +
          RegExp.escape(wVar) +
          r'\s*\.\s*writerow\s*\(\s*\[\s*.+?\s*\]\s*\)',
      multiLine: true,
      dotAll: true,
    );

    final writeRowsRegex = RegExp(
      r'\b' +
          RegExp.escape(wVar) +
          r'\s*\.\s*writerows\s*\(\s*\[\s*\[.+?\]\s*(?:,\s*\[.+?\]\s*)+\]\s*\)',
      multiLine: true,
      dotAll: true,
    );

    if (!writeRowRegex.hasMatch(c) && !writeRowsRegex.hasMatch(c)) return false;

    // 5) print(...)
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
    final ok = _isValid217(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid217(userInput)) {
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
        _showDialog(loc.python217HintTitle1, loc.python217HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python217HintTitle2, loc.python217HintContent2);
      } else {
        _showDialog(
          loc.python217SolutionTitle,
          loc.python217SolutionContent,
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
      loc.python217ExampleCode1,
      loc.python217ExampleCode2,
      loc.python217ExampleCode3,
      loc.python217ExampleCode4,
      loc.python217ExampleCode5,
      loc.python217ExampleCode6,
      loc.python217ExampleCode7,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling217",
              onPressed: () {
                _showDialog(
                  loc.python217InstructionsTitle,
                  loc.python217InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling217",
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
                  loc.python217ExampleTitle,
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
                  loc.python217ExampleOutput,
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
                    hintText: loc.python217EnterCodeHint,
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
