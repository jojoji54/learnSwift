import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonControlFlowEx176 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonControlFlowEx176({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonControlFlowEx176> createState() => _PythonControlFlowEx176State();
}

class _PythonControlFlowEx176State extends State<PythonControlFlowEx176> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // ✅ Requisitos:
  // - Crear una lista: nums = [ ... ] (o cualquier nombre)
  // - Usar any(...) o all(...) con un "for x in nums" (o similar)
  // - Guardar el resultado en una variable: result = any(...)
  // - Hacer print(result)
  bool _isValid176(String code) {
    // 1) Alguna lista literal en el código (p.e. nums = [1,2,3])
    final listRegex = RegExp(r'\b[A-Za-z_]\w*\s*=\s*\[[^\]]*\]');

    // 2) Captura la variable a la que asignas any/all: result = any( ... )
    final anyAllAssignRegex = RegExp(
      r'^\s*([A-Za-z_]\w*)\s*=\s*(any|all)\s*\(',
      multiLine: true,
    );

    // 3) Dentro de any/all debe haber un "for ... in ..." (generator expression)
    final forInInsideRegex = RegExp(r'\bfor\b\s+.+\s+\bin\b\s+.+');

    // 4) Debe haber print(resultVar)
    final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);

    if (!listRegex.hasMatch(code)) return false;

    final match = anyAllAssignRegex.firstMatch(code);
    if (match == null) return false;

    final resultVar = match.group(1) ?? '';
    if (resultVar.isEmpty) return false;

    // Buscamos una llamada any(...) o all(...) con algo que contenga "for ... in ..."
    final anyCallRegex = RegExp(r'\bany\s*\(\s*[\s\S]*?\)');
    final allCallRegex = RegExp(r'\ball\s*\(\s*[\s\S]*?\)');

    final anyCall = anyCallRegex.firstMatch(code);
    final allCall = allCallRegex.firstMatch(code);

    if (anyCall == null && allCall == null) return false;

    final callText = (anyCall ?? allCall)!.group(0) ?? '';
    if (!forInInsideRegex.hasMatch(callText)) return false;

    if (!printRegex.hasMatch(code)) return false;

    final printResultVarRegex = RegExp(
      r'\bprint\s*\(\s*.*\b' + RegExp.escape(resultVar) + r'\b.*\)',
      multiLine: true,
      dotAll: true,
    );
    if (!printResultVarRegex.hasMatch(code)) return false;

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
    final ok = _isValid176(userInput.trim());
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();
    final loc = AppLocalizations.of(context)!;

    if (_isValid176(userInput)) {
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
          loc.python176HintTitle1,
          loc.python176HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python176HintTitle2,
          loc.python176HintContent2,
        );
      } else {
        _showDialog(
          loc.python176SolutionTitle,
          loc.python176SolutionContent,
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
              heroTag: "introButtonPythonControlFlow176",
              onPressed: () {
                _showDialog(
                  loc.python176InstructionsTitle,
                  loc.python176InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonControlFlow176",
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
                        text: "${loc.python176ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python176ExampleCode1,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python176ExampleCode2,
                        style: const TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "\n${loc.python176ExampleOutput}",
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
                    hintText: loc.python176EnterCodeHint,
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
