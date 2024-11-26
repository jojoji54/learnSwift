import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SBEx9 extends StatefulWidget {
  final String title;
  final int id;
  const SBEx9({super.key, required this.title, required this.id});

  @override
  State<SBEx9> createState() => _SBEx9State();
}

class _SBEx9State extends State<SBEx9> {
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

  // Validar el texto ingresado
  void _validateInput() {
    final codeRegex = RegExp(
      r'^let\s+\w+\s*=\s*".+"\nlet\s+\w+\s*=\s*\d+\nprint\(\w+\)\nprint\(\w+\)$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      _controller.clear(); // Limpiar el campo de texto
      _showDialog(
        AppLocalizations.of(context)!.correctTitle,
        AppLocalizations.of(context)!.exercise9CorrectContent,
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          AppLocalizations.of(context)!.hint1Title,
          AppLocalizations.of(context)!.exercise9Hint1Content,
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          AppLocalizations.of(context)!.hint2Title,
          AppLocalizations.of(context)!.exercise9Hint2Content,
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          AppLocalizations.of(context)!.solutionTitle,
          AppLocalizations.of(context)!.exercise9SolutionContent,
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.tryAgain(_failedAttempts)),
          ),
        );
      }
    }
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
              heroTag: "introButton", // Hero tag único para este botón
              onPressed: () {
                _showDialog(
                  AppLocalizations.of(context)!.exerciseInstructionsTitle,
                  AppLocalizations.of(context)!.exercise9InstructionsContent,
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton", // Hero tag único para este botón
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3) // Mostrar botón de ayuda tras 3 fallos
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton", // Hero tag único para este botón
                onPressed: () {
                  _showDialog(
                    AppLocalizations.of(context)!.solutionTitle,
                    AppLocalizations.of(context)!.exercise9SolutionContent,
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
                // Campo de texto multilínea para ingresar código
                TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  style: TextStyle(
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                    color: _inputTextColor, // Cambia dinámicamente el color
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: AppLocalizations.of(context)!.enterYourCodeHere,
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
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
