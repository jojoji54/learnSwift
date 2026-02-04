import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx200 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx200({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx200> createState() =>
      _PythonDataStructuresEx200State();
}

class _PythonDataStructuresEx200State extends State<PythonDataStructuresEx200> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 200:
  /// - Crear un dict: d = dict() o d = {...}
  /// - Usar for k in d:  (o for key in d.keys(), etc.)
  /// - Hacer print dentro del bucle usando key o value (d[key])
  bool _isValid200(String code) {
    final c = code.trimRight();

    // 1) dict creado
    final dictCreateRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*(?:dict\s*\(\s*\)|\{[\s\S]*?\})',
      multiLine: true,
      dotAll: true,
    );
    final dm = dictCreateRegex.firstMatch(c);
    if (dm == null) return false;

    final dName = dm.group(1) ?? '';
    if (dName.isEmpty) return false;

    // 2) que haya al menos una asignación de key: d["x"] = ...
    final keyPart = r'''(?:"[^"]+"|'[^']+')''';

    final setKeyRegex = RegExp(
      r'\b' + RegExp.escape(dName) + r'\s*\[\s*' + keyPart + r'\s*\]\s*=\s*.+',
      multiLine: true,
    );

    if (!setKeyRegex.hasMatch(c)) return false;

    // 3) for k in d:  (también aceptamos d.keys())
    final forRegex = RegExp(
      r'^\s*for\s+([A-Za-z_]\w*)\s+in\s+' +
          RegExp.escape(dName) +
          r'(?:\s*\.keys\s*\(\s*\))?\s*:\s*$',
      multiLine: true,
    );
    final fm = forRegex.firstMatch(c);
    if (fm == null) return false;

    final keyVar = fm.group(1) ?? '';
    if (keyVar.isEmpty) return false;

    // 4) print dentro del bucle:
    // Buscamos una línea indentada con print(...) que use keyVar o d[keyVar]
    final printIndentedRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(([\s\S]*?)\)\s*$',
      multiLine: true,
    );
    final pm = printIndentedRegex.firstMatch(c);
    if (pm == null) return false;

    final insidePrint = pm.group(1) ?? '';

    final usesKey =
        RegExp(r'\b' + RegExp.escape(keyVar) + r'\b').hasMatch(insidePrint);

    final usesValue = RegExp(
      r'\b' +
          RegExp.escape(dName) +
          r'\s*\[\s*' +
          RegExp.escape(keyVar) +
          r'\s*\]',
      multiLine: true,
    ).hasMatch(insidePrint);

    if (!usesKey && !usesValue) return false;

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
    final ok = _isValid200(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid200(userInput)) {
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
        _showDialog(loc.python200HintTitle1, loc.python200HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python200HintTitle2, loc.python200HintContent2);
      } else {
        _showDialog(
          loc.python200SolutionTitle,
          loc.python200SolutionContent,
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
      loc.python200ExampleCode1,
      loc.python200ExampleCode2,
      loc.python200ExampleCode3,
      loc.python200ExampleCode4,
      loc.python200ExampleCode5,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures200",
              onPressed: () {
                _showDialog(
                  loc.python200InstructionsTitle,
                  loc.python200InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython200",
              onPressed: () {
                _showDialog(
                  loc.python200InfoTitle,
                  loc.python200InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures200",
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
                  loc.python200ExampleTitle,
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
                  loc.python200ExampleOutput,
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
                    hintText: loc.python200EnterCodeHint,
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
