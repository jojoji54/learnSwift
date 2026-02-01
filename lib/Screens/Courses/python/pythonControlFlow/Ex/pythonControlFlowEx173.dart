import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonControlFlowEx173 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonControlFlowEx173({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonControlFlowEx173> createState() => _PythonControlFlowEx173State();
}

class _PythonControlFlowEx173State extends State<PythonControlFlowEx173> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // ✅ Requisitos:
  // - Debe existir un ternario en forma: var = A if condicion else B
  // - La condicion debe tener un comparador (==, !=, >=, <=, >, <)
  // - Debe existir print(...) y que imprima esa misma var
  bool _isValid173(String code) {
    // Captura el nombre de la variable asignada con ternario
    final ternaryLineRegex = RegExp(
      r'^\s*([A-Za-z_]\w*)\s*=\s*.+\s+\bif\b\s+.+\s+\belse\b\s+.+\s*$',
      multiLine: true,
    );

    final comparisonRegex = RegExp(r'(==|!=|>=|<=|>|<)');
    final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);

    final match = ternaryLineRegex.firstMatch(code);
    if (match == null) return false;

    final varName = match.group(1) ?? '';
    final ternaryLine = match.group(0) ?? '';

    if (varName.isEmpty) return false;
    if (!comparisonRegex.hasMatch(ternaryLine)) return false;
    if (!printRegex.hasMatch(code)) return false;

    // Exigir que print use esa variable
    final printVarRegex = RegExp(
      r'\bprint\s*\(\s*.*\b' + RegExp.escape(varName) + r'\b.*\)',
      multiLine: true,
    );
    if (!printVarRegex.hasMatch(code)) return false;

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
                fontStyle: FontStyle.normal,
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
    final ok = _isValid173(userInput.trim());
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();
    final loc = AppLocalizations.of(context)!;

    if (_isValid173(userInput)) {
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
        _showDialog(
          loc.python173HintTitle1,
          loc.python173HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python173HintTitle2,
          loc.python173HintContent2,
        );
      } else {
        _showDialog(
          loc.python173SolutionTitle,
          loc.python173SolutionContent,
          titleColor: Colors.red,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final allProvider = Provider.of<AllProvider>(context);
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButtonPythonControlFlow173",
              onPressed: () {
                _showDialog(
                  loc.python173InstructionsTitle,
                  loc.python173InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonControlFlow173",
              onPressed: () => _submit(allProvider),
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Consolas',
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "${loc.python173ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(text: ">>> ", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: loc.python173ExampleCode1,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(text: ">>> ", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: loc.python173ExampleCode2,
                        style: const TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "\n${loc.python173ExampleOutput}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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
                    hintText: loc.python173EnterCodeHint,
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
