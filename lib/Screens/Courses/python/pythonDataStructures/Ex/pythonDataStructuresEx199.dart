import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx199 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx199({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx199> createState() =>
      _PythonDataStructuresEx199State();
}

class _PythonDataStructuresEx199State extends State<PythonDataStructuresEx199> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 199:
  /// - Crear un set: s = set([...]) o s = { ... }
  /// - Usar .add(...)
  /// - Usar .remove(...) (quitamos un elemento)
  /// - print(...)
  bool _isValid199(String code) {
    final c = code.trimRight();

    // 1) Crear set: s = set(...) o s = {...}
    final setCreateRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*(?:set\s*\(\s*[\s\S]*?\s*\)|\{[\s\S]*?\})',
      multiLine: true,
      dotAll: true,
    );

    final m = setCreateRegex.firstMatch(c);
    if (m == null) return false;

    final sName = m.group(1) ?? '';
    if (sName.isEmpty) return false;

    // 2) s.add(...)
    final addRegex = RegExp(
      r'\b' + RegExp.escape(sName) + r'\s*\.\s*add\s*\(',
      multiLine: true,
    );
    if (!addRegex.hasMatch(c)) return false;

    // 3) s.remove(...)
    final removeRegex = RegExp(
      r'\b' + RegExp.escape(sName) + r'\s*\.\s*remove\s*\(',
      multiLine: true,
    );
    if (!removeRegex.hasMatch(c)) return false;

    // 4) print(...)
    final printRegex = RegExp(r'\bprint\s*\(');
    if (!printRegex.hasMatch(c)) return false;

    // Bonus: print usa el set (más real)
    final printUsesSetRegex = RegExp(
      r'\bprint\s*\(\s*([\s\S]*?)\)',
      multiLine: true,
      dotAll: true,
    );
    final pm = printUsesSetRegex.firstMatch(c);
    if (pm == null) return false;

    final inside = pm.group(1) ?? '';
    final usesSet = RegExp(r'\b' + RegExp.escape(sName) + r'\b').hasMatch(inside);
    if (!usesSet) return false;

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
    final ok = _isValid199(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid199(userInput)) {
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
        _showDialog(loc.python199HintTitle1, loc.python199HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python199HintTitle2, loc.python199HintContent2);
      } else {
        _showDialog(
          loc.python199SolutionTitle,
          loc.python199SolutionContent,
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
      loc.python199ExampleCode1,
      loc.python199ExampleCode2,
      loc.python199ExampleCode3,
      loc.python199ExampleCode4,
      loc.python199ExampleCode5,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures199",
              onPressed: () {
                _showDialog(
                  loc.python199InstructionsTitle,
                  loc.python199InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython199",
              onPressed: () {
                _showDialog(
                  loc.python199InfoTitle,
                  loc.python199InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures199",
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
                  loc.python199ExampleTitle,
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
                  loc.python199ExampleOutput,
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
                    hintText: loc.python199EnterCodeHint,
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
