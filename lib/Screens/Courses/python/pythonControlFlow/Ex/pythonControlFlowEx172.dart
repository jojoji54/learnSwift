import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class PythonControlFlowEx172 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;

  const PythonControlFlowEx172({
    super.key,
    required this.title,
    required this.id,
    required this.completed,
  });

  @override
  State<PythonControlFlowEx172> createState() => _PythonControlFlowEx172State();
}

class _PythonControlFlowEx172State extends State<PythonControlFlowEx172> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.grey;

  // ✅ Requisitos:
  // - try:
  // - except ...:
  // - int(input(...))
  // - print(...) (al menos 2, ideal: uno en try y otro en except)
  bool _isValid172(String code) {
    final tryLineRegex = RegExp(r'^\s*try\s*:\s*$', multiLine: true);

    // Acepta:
    // except:
    // except ValueError:
    // except Exception as e:
    final exceptLineRegex = RegExp(
      r'^\s*except(\s+[A-Za-z_]\w*(\s+as\s+[A-Za-z_]\w*)?)?\s*:\s*$',
      multiLine: true,
    );

    // int(input(...)) en cualquier parte
    final intInputRegex = RegExp(r'\bint\s*\(\s*input\s*\(');

    final printRegex = RegExp(r'\bprint\s*\(', multiLine: true);

    if (!tryLineRegex.hasMatch(code)) return false;
    if (!exceptLineRegex.hasMatch(code)) return false;
    if (!intInputRegex.hasMatch(code)) return false;

    final prints = printRegex.allMatches(code).length;
    if (prints < 2) return false;

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
    final ok = _isValid172(userInput.trim());
    setState(() => _inputTextColor = ok ? Colors.green : Colors.red);
  }

  void _submit(AllProvider allprovider) {
    final userInput = _controller.text.trim();
    final loc = AppLocalizations.of(context)!;

    if (_isValid172(userInput)) {
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
          loc.python172HintTitle1,
          loc.python172HintContent1,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          loc.python172HintTitle2,
          loc.python172HintContent2,
        );
      } else {
        _showDialog(
          loc.python172SolutionTitle,
          loc.python172SolutionContent,
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
              heroTag: "introButtonPythonControlFlow172",
              onPressed: () {
                _showDialog(
                  loc.python172InstructionsTitle,
                  loc.python172InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "infoButtonpython172",
              onPressed: () {
                _showDialog(
                  loc.python172InfoTitle,
                  loc.python172InfoContent,
                );
              },
              backgroundColor: const Color(0xFF90CAF9),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonPythonControlFlow172",
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
                        text: "${loc.python172ExampleTitle}\n",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python172ExampleCode1,
                        style: const TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: ">>> ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: loc.python172ExampleCode2,
                        style: const TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: "\n${loc.python172ExampleOutput}",
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
                    hintText: loc.python172EnterCodeHint,
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
