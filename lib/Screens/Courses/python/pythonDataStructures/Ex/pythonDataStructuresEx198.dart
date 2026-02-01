import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx198 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx198({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx198> createState() =>
      _PythonDataStructuresEx198State();
}

class _PythonDataStructuresEx198State extends State<PythonDataStructuresEx198> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 198:
  /// - Crear un diccionario (dict() o {...})
  /// - Asignar al menos una clave con d["x"] = ...
  /// - Leer una clave con d["x"]
  /// - print(...) (idealmente del valor leído)
  ///
  /// Nota: Regex aproximadas (como el resto de tu app).
 bool _isValid198(String code) {
  final c = code.trimRight();

  // 1) Crear un dict: d = dict()  OR  d = { ... }
  final dictCreateRegex = RegExp(
    r"\b([A-Za-z_]\w*)\s*=\s*(?:dict\s*\(\s*\)|\{[\s\S]*?\})",
    multiLine: true,
    dotAll: true,
  );

  final m = dictCreateRegex.firstMatch(c);
  if (m == null) return false;

  final dName = m.group(1) ?? '';
  if (dName.isEmpty) return false;

  // Patrón "clave" en comillas dobles o simples
  final keyPart = r'''(?:"[^"]+"|'[^']+')''';


  // 2) Asignación: d["key"] = something
  final setKeyRegex = RegExp(
    r"\b" +
        RegExp.escape(dName) +
        r"\s*\[\s*" +
        keyPart +
        r"\s*\]\s*=\s*.+",
    multiLine: true,
  );
  if (!setKeyRegex.hasMatch(c)) return false;

  // 3) Lectura: d["key"] (en algún sitio)
  final getKeyRegex = RegExp(
    r"\b" +
        RegExp.escape(dName) +
        r"\s*\[\s*" +
        keyPart +
        r"\s*\]",
    multiLine: true,
  );
  if (!getKeyRegex.hasMatch(c)) return false;

  // 4) print(...)
  final printRegex = RegExp(r"\bprint\s*\(");
  if (!printRegex.hasMatch(c)) return false;

  // Bonus: que el print use d["..."] o d directamente
  final printUsesDictRegex = RegExp(
    r"\bprint\s*\(\s*([\s\S]*?)\)",
    multiLine: true,
    dotAll: true,
  );
  final pm = printUsesDictRegex.firstMatch(c);
  if (pm == null) return false;

  final inside = pm.group(1) ?? '';
  final usesDict =
      RegExp(r"\b" + RegExp.escape(dName) + r"\b").hasMatch(inside);
  if (!usesDict) return false;

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
    final ok = _isValid198(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid198(userInput)) {
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
        _showDialog(loc.python198HintTitle1, loc.python198HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python198HintTitle2, loc.python198HintContent2);
      } else {
        _showDialog(
          loc.python198SolutionTitle,
          loc.python198SolutionContent,
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
      loc.python198ExampleCode1,
      loc.python198ExampleCode2,
      loc.python198ExampleCode3,
      loc.python198ExampleCode4,
      loc.python198ExampleCode5,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures198",
              onPressed: () {
                _showDialog(
                  loc.python198InstructionsTitle,
                  loc.python198InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures198",
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
                  loc.python198ExampleTitle,
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
                  loc.python198ExampleOutput,
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
                    hintText: loc.python198EnterCodeHint,
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
