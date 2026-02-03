import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonDataStructuresEx202 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonDataStructuresEx202({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonDataStructuresEx202> createState() =>
      _PythonDataStructuresEx202State();
}

class _PythonDataStructuresEx202State extends State<PythonDataStructuresEx202> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  /// ✅ Requisitos 202:
  /// - Crear lista 2D: grid = [[...], [...]]
  /// - Acceder con doble índice: grid[0][1] (cualquier 0..2 aprox)
  /// - print(grid[i][j])
  bool _isValid202(String code) {
    final c = code.trimRight();

    // 1) lista 2D asignada:
    // grid = [[1,2],[3,4]]  (permitimos espacios y más filas)
    final list2DRegex = RegExp(
      r'\b([A-Za-z_]\w*)\s*=\s*\[\s*\[\s*[^\]]+\s*\]\s*,\s*\[\s*[^\]]+\s*\](?:\s*,\s*\[\s*[^\]]+\s*\])*\s*\]',
      multiLine: true,
      dotAll: true,
    );

    final m = list2DRegex.firstMatch(c);
    if (m == null) return false;

    final varName = m.group(1) ?? '';
    if (varName.isEmpty) return false;

    // 2) doble indexación: var[i][j]
    final doubleIndexRegex = RegExp(
      r'\b' +
          RegExp.escape(varName) +
          r'\s*\[\s*[0-2]\s*\]\s*\[\s*[0-2]\s*\]',
      multiLine: true,
    );
    if (!doubleIndexRegex.hasMatch(c)) return false;

    // 3) print(var[i][j])
    final printDoubleIndexRegex = RegExp(
      r'\bprint\s*\(\s*' +
          RegExp.escape(varName) +
          r'\s*\[\s*[0-2]\s*\]\s*\[\s*[0-2]\s*\]\s*\)',
      multiLine: true,
    );
    if (!printDoubleIndexRegex.hasMatch(c)) return false;

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
    final ok = _isValid202(userInput);
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text;
    final loc = AppLocalizations.of(context)!;

    if (_isValid202(userInput)) {
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
        _showDialog(loc.python202HintTitle1, loc.python202HintContent1);
      } else if (_failedAttempts == 2) {
        _showDialog(loc.python202HintTitle2, loc.python202HintContent2);
      } else {
        _showDialog(
          loc.python202SolutionTitle,
          loc.python202SolutionContent,
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
      loc.python202ExampleCode1,
      loc.python202ExampleCode2,
      loc.python202ExampleCode3,
    ].where((e) => e.trim().isNotEmpty).toList();

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonDataStructures202",
              onPressed: () {
                _showDialog(
                  loc.python202InstructionsTitle,
                  loc.python202InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython202",
              onPressed: () {
                _showDialog(
                  loc.python202InfoTitle,
                  loc.python202InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonDataStructures202",
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
                  loc.python202ExampleTitle,
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
                  loc.python202ExampleOutput,
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
                    hintText: loc.python202EnterCodeHint,
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
