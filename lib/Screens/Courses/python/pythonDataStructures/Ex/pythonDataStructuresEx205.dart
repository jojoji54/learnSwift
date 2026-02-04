import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx205 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx205({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx205> createState() =>
      _PythonDataStructuresEx205State();
}

class _PythonDataStructuresEx205State extends State<PythonDataStructuresEx205> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 205:
  /// - Crear dict: d = dict() o d = {...}
  /// - Asignar al menos una key: d["x"] = ...
  /// - Usar get con default: d.get("missing", "default") o d.get("missing", 0)
  /// - print(...) de ese get (o imprimir una variable que lo guarde)
  bool _isValid205(String code) {
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

    // ✅ clave en "..." o '...'
    final keyPart = r'''(?:"[^"]+"|'[^']+')''';

    // 2) al menos una asignación de clave
    final setKeyRegex = RegExp(
      r'\b' + RegExp.escape(dName) + r'\s*\[\s*' + keyPart + r'\s*\]\s*=\s*.+',
      multiLine: true,
    );
    if (!setKeyRegex.hasMatch(c)) return false;

    // 3) get con default (dos argumentos)
    // d.get("x", something)
    final getWithDefaultRegex = RegExp(
      r'\b' +
          RegExp.escape(dName) +
          r'\s*\.\s*get\s*\(\s*' +
          keyPart +
          r'\s*,\s*.+?\)',
      multiLine: true,
      dotAll: true,
    );
    if (!getWithDefaultRegex.hasMatch(c)) return false;

    // 4) print(...) y que imprima el get o algo relacionado
    final printRegex = RegExp(
      r'\bprint\s*\(([\s\S]*?)\)',
      multiLine: true,
      dotAll: true,
    );
    final pm = printRegex.firstMatch(c);
    if (pm == null) return false;

    final inside = pm.group(1) ?? '';

    final printsGetDirectly = RegExp(
      r'\b' + RegExp.escape(dName) + r'\s*\.\s*get\s*\(',
      multiLine: true,
    ).hasMatch(inside);

    if (printsGetDirectly) return true;

    // Alternativa: result = d.get(...); print(result)
    final resultAssignRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*' + RegExp.escape(dName) + r'\s*\.\s*get\s*\(',
      multiLine: true,
    );
    final rm = resultAssignRegex.firstMatch(c);
    if (rm == null) return false;

    final resultVar = rm.group(1) ?? '';
    if (resultVar.isEmpty) return false;

    final printsResultVar = RegExp(
      r'\b' + RegExp.escape(resultVar) + r'\b',
    ).hasMatch(inside);

    return printsResultVar;
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
    final ok = _isValid205(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid205(userInput)) {
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
        _showDialog(loc.python205HintTitle1, loc.python205HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python205HintTitle2, loc.python205HintContent2);
      } else {
        _showDialog(
          loc.python205SolutionTitle,
          loc.python205SolutionContent,
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
      loc.python205ExampleCode1,
      loc.python205ExampleCode2,
      loc.python205ExampleCode3,
      loc.python205ExampleCode4,
      loc.python205ExampleCode5,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures205",
              onPressed: () {
                _showDialog(
                  loc.python205InstructionsTitle,
                  loc.python205InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython205",
              onPressed: () {
                _showDialog(
                  loc.python205InfoTitle,
                  loc.python205InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures205",
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
                  loc.python205ExampleTitle,
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
                  loc.python205ExampleOutput,
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
                    hintText: loc.python205EnterCodeHint,
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
