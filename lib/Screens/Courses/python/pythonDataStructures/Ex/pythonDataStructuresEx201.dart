import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx201 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx201({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx201> createState() =>
      _PythonDataStructuresEx201State();
}

class _PythonDataStructuresEx201State extends State<PythonDataStructuresEx201> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 201:
  /// - Crear un dict: d = dict() o d = {...}
  /// - Asignar al menos una key: d["x"] = ...
  /// - for k, v in d.items():
  /// - print(k, v) (o un print que use ambos)
  bool _isValid201(String code) {
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

    // 2) al menos una asignación de clave
    final keyPart = r'''(?:"[^"]+"|'[^']+')''';

    final setKeyRegex = RegExp(
      r'\b' + RegExp.escape(dName) + r'\s*\[\s*' + keyPart + r'\s*\]\s*=\s*.+',
      multiLine: true,
    );

    if (!setKeyRegex.hasMatch(c)) return false;

    // 3) for k, v in d.items():
    final forItemsRegex = RegExp(
      r'^\s*for\s+([A-Za-z_]\w*)\s*,\s*([A-Za-z_]\w*)\s+in\s+' +
          RegExp.escape(dName) +
          r'\s*\.\s*items\s*\(\s*\)\s*:\s*$',
      multiLine: true,
    );
    final fm = forItemsRegex.firstMatch(c);
    if (fm == null) return false;

    final kVar = fm.group(1) ?? '';
    final vVar = fm.group(2) ?? '';
    if (kVar.isEmpty || vVar.isEmpty) return false;

    // 4) print dentro del bucle (indentado) que use kVar y vVar
    final printIndentedRegex = RegExp(
      r'^(?:\s{2,}|\t+)print\s*\(([\s\S]*?)\)\s*$',
      multiLine: true,
    );
    final pm = printIndentedRegex.firstMatch(c);
    if (pm == null) return false;

    final inside = pm.group(1) ?? '';

    final usesK = RegExp(r'\b' + RegExp.escape(kVar) + r'\b').hasMatch(inside);
    final usesV = RegExp(r'\b' + RegExp.escape(vVar) + r'\b').hasMatch(inside);
    if (!usesK || !usesV) return false;

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
    final ok = _isValid201(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid201(userInput)) {
      purchaseManagerHive.updatePurchase(
        widget.id,
        purchased: true,
        completed: true,
      );

      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;

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
        _showDialog(loc.python201HintTitle1, loc.python201HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python201HintTitle2, loc.python201HintContent2);
      } else {
        _showDialog(
          loc.python201SolutionTitle,
          loc.python201SolutionContent,
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
      loc.python201ExampleCode1,
      loc.python201ExampleCode2,
      loc.python201ExampleCode3,
      loc.python201ExampleCode4,
      loc.python201ExampleCode5,
      loc.python201ExampleCode6,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures201",
              onPressed: () {
                _showDialog(
                  loc.python201InstructionsTitle,
                  loc.python201InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures201",
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
                  loc.python201ExampleTitle,
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
                  loc.python201ExampleOutput,
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
                    hintText: loc.python201EnterCodeHint,
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
