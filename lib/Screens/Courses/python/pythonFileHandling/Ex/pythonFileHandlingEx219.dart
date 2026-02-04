import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonFileHandlingEx219 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonFileHandlingEx219({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonFileHandlingEx219> createState() => _PythonFileHandlingEx219State();
}

class _PythonFileHandlingEx219State extends State<PythonFileHandlingEx219> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos (219):
  /// - import json
  /// - Crear un objeto tipo dict o list (aceptamos dict(...) o {...} o [...])
  /// - with open("out.json","w") as f:
  /// - json.dump(obj, f)  (obj debe ser la variable creada o un literal)
  /// - print(...)
  bool _isValid219(String code) {
    final c = code.trimRight();

    // 1) import json
    final importJsonRegex = RegExp(r'^\s*import\s+json\s*$', multiLine: true);
    if (!importJsonRegex.hasMatch(c)) return false;

    // 2) crear objeto (variable) - aceptamos:
    // data = dict(...)  OR  data = {...}  OR  data = [...]  OR  data = ["a", 1]
    final createObjRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*(?:dict\s*\(|\[[\s\S]*?\]|\{[\s\S]*?\})',
      multiLine: true,
      dotAll: true,
    );
    final cm = createObjRegex.firstMatch(c);
    if (cm == null) return false;

    final objVar = cm.group(1) ?? '';
    if (objVar.isEmpty) return false;

    // 3) with open(...,"w") as f:
    final withOpenRegex = RegExp(
      r'''^\s*with\s+open\s*\(\s*(?:"[^"]+\.json"|'[^']+\.json')\s*,\s*(?:"w"|'w')\s*\)\s+as\s+([A-Za-z_]\w*)\s*:\s*$''',
      multiLine: true,
    );
    final om = withOpenRegex.firstMatch(c);
    if (om == null) return false;

    final fVar = om.group(1) ?? '';
    if (fVar.isEmpty) return false;

    // 4) json.dump(objVar, fVar) (permitimos indent=2 como extra)
    final dumpRegex = RegExp(
      r'\bjson\s*\.\s*dump\s*\(\s*' +
          RegExp.escape(objVar) +
          r'\s*,\s*' +
          RegExp.escape(fVar) +
          r'(?:\s*,\s*indent\s*=\s*\d+)?\s*\)',
      multiLine: true,
      dotAll: true,
    );
    if (!dumpRegex.hasMatch(c)) return false;

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
    final ok = _isValid219(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid219(userInput)) {
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
        _showDialog(loc.python219HintTitle1, loc.python219HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python219HintTitle2, loc.python219HintContent2);
      } else {
        _showDialog(
          loc.python219SolutionTitle,
          loc.python219SolutionContent,
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
      loc.python219ExampleCode1,
      loc.python219ExampleCode2,
      loc.python219ExampleCode3,
      loc.python219ExampleCode4,
      loc.python219ExampleCode5,
      loc.python219ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonFileHandling219",
              onPressed: () {
                _showDialog(
                  loc.python219InstructionsTitle,
                  loc.python219InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython219",
              onPressed: () {
                _showDialog(
                  loc.python219InfoTitle,
                  loc.python219InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonFileHandling219",
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
                  loc.python219ExampleTitle,
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
                  loc.python219ExampleOutput,
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
                    hintText: loc.python219EnterCodeHint,
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
