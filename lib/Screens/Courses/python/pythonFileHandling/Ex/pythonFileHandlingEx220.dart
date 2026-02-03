import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx220 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx220({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx220> createState() => _PythonFileHandlingEx220State();
}

class _PythonFileHandlingEx220State extends State<PythonFileHandlingEx220> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (220):
  /// - from pathlib import Path  OR  import pathlib
  /// - crear un Path (p = Path("..."))
  /// - usar mkdir(...) o iterdir() o glob(...)
  /// - usar is_file() o is_dir()
  /// - print(...)
bool _isValid220(String code) {
  final c = code.trimRight();

  // 1) importar Path
  final importPathRegex = RegExp(
    r'(^\s*from\s+pathlib\s+import\s+Path\s*$)|(^\s*import\s+pathlib\s*$)',
    multiLine: true,
  );
  if (!importPathRegex.hasMatch(c)) return false;

  // 2) crear Path(...) en variable
  // p = Path("mydir")  OR  p = pathlib.Path("mydir")
  //
  // OJO: no metemos '...' dentro de r'...' porque en raw strings Dart no escapa \'
  final pathCreateRegexDouble = RegExp(
    r'\b([A-Za-z_]\w*)\s*=\s*(?:Path|pathlib\s*\.\s*Path)\s*\(\s*"[^"]+"\s*\)',
    multiLine: true,
  );

  final pathCreateRegexSingle = RegExp(
    r"\b([A-Za-z_]\w*)\s*=\s*(?:Path|pathlib\s*\.\s*Path)\s*\(\s*'[^']+'\s*\)",
    multiLine: true,
  );

  final pm = pathCreateRegexDouble.firstMatch(c) ??
      pathCreateRegexSingle.firstMatch(c);

  if (pm == null) return false;

  final pVar = pm.group(1) ?? '';
  if (pVar.isEmpty) return false;

  // 3) usar mkdir / iterdir / glob sobre pVar
  final mkdirRegex = RegExp(
    r'\b' + RegExp.escape(pVar) + r'\s*\.\s*mkdir\s*\(',
    multiLine: true,
  );
  final iterdirRegex = RegExp(
    r'\b' + RegExp.escape(pVar) + r'\s*\.\s*iterdir\s*\(',
    multiLine: true,
  );
  final globRegex = RegExp(
    r'\b' + RegExp.escape(pVar) + r'\s*\.\s*glob\s*\(',
    multiLine: true,
  );

  final usesDirOp =
      mkdirRegex.hasMatch(c) || iterdirRegex.hasMatch(c) || globRegex.hasMatch(c);
  if (!usesDirOp) return false;

  // 4) usar is_file o is_dir (en algún sitio)
  final isFileRegex = RegExp(r'\.\s*is_file\s*\(\s*\)');
  final isDirRegex = RegExp(r'\.\s*is_dir\s*\(\s*\)');
  if (!isFileRegex.hasMatch(c) && !isDirRegex.hasMatch(c)) return false;

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
    final ok = _isValid220(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid220(userInput)) {
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
        _showDialog(loc.python220HintTitle1, loc.python220HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python220HintTitle2, loc.python220HintContent2);
      } else {
        _showDialog(
          loc.python220SolutionTitle,
          loc.python220SolutionContent,
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
      loc.python220ExampleCode1,
      loc.python220ExampleCode2,
      loc.python220ExampleCode3,
      loc.python220ExampleCode4,
      loc.python220ExampleCode5,
      loc.python220ExampleCode6,
      loc.python220ExampleCode7,
      loc.python220ExampleCode8,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling220",
              onPressed: () {
                _showDialog(
                  loc.python220InstructionsTitle,
                  loc.python220InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython220",
              onPressed: () {
                _showDialog(
                  loc.python220InfoTitle,
                  loc.python220InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling220",
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
                  loc.python220ExampleTitle,
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
                  loc.python220ExampleOutput,
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
                    hintText: loc.python220EnterCodeHint,
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
