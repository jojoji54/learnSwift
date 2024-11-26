import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SBEx3 extends StatefulWidget {
  final String title;
  final int id;
  const SBEx3({super.key, required this.title, required this.id});

  @override
  State<SBEx3> createState() => _SBEx3State();
}

class _SBEx3State extends State<SBEx3> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

  // Mostrar diálogo genérico
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

  // Verificar el texto ingresado
  void _checkInput() {
    final userInput = _controller.text.trim();
    final printRegex = RegExp(r'^print\(.+\)$');

    setState(() {
      if (printRegex.hasMatch(userInput)) {
        _inputTextColor = Colors.green;
      } else {
        _inputTextColor = Colors.orange;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton3",
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!.exercise3InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton3",
              onPressed: () {
                final userInput = _controller.text.trim();
                final printRegex = RegExp(r'^print\(.+\)$');

                if (printRegex.hasMatch(userInput)) {
                  _controller.clear();
                  _showDialog(
                    AppLocalizations.of(context)!.correctTitle,
                    AppLocalizations.of(context)!.exercise3CorrectContent,
                    titleColor: Colors.green,
                  );
                } else {
                  setState(() {
                    _failedAttempts++;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocalizations.of(context)!
                          .tryAgain(_failedAttempts)),
                    ),
                  );
                }
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton3",
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!.exercise3SolutionContent,
                    titleColor: Colors.red,
                  );
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.help, color: Colors.white),
              ),
            ),
        ],
      ),
      body: FadeIn(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      fontSize: 18,
                    ),
                    children: [
                      const TextSpan(
                        text: "1  ",
                        style: TextStyle(color: Colors.black),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 300,
                          height: 40,
                          child: TextField(
                            controller: _controller,
                            onChanged: (value) => _checkInput(),
                            style: TextStyle(
                              fontFamily: 'InconsolataRegular',
                              fontSize: 18,
                              color: _inputTextColor,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 8),
                              hintText: AppLocalizations.of(context)!
                                  .enterYourCodeHere,
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
