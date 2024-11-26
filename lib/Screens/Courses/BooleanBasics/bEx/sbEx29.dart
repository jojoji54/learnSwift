import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx29 extends StatefulWidget {
  final String title;
  final int id;
  const BEx29({super.key, required this.title, required this.id});

  @override
  State<BEx29> createState() => _BEx29State();
}

class _BEx29State extends State<BEx29> {
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
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  // Validar el texto ingresado
  void _validateInput() {
    final codeRegex = RegExp(
      r'^let\s+secretBoolean\s*=\s*(true|false);\s*let\s+userGuess\s*=\s*(true|false);\s*if\s*\(userGuess\s*==\s*secretBoolean\)\s*{\s*print\("You guessed it! 🎉"\);\s*}\s*else\s*{\s*print\("Wrong guess! Try again."\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear(); // Limpiar el campo de texto

      _showDialog(
        "Correct! 🎉",
        "Amazing! You've implemented a guessing game using booleans.\n\n"
        "Explanation:\n"
        "- `secretBoolean` holds a hidden value.\n"
        "- The user compares their guess to this value using the `==` operator.\n"
        "- Based on the comparison, you display the appropriate message.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange; // Mantener color si es incorrecto
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Use a constant `secretBoolean` with a boolean value. Declare another constant `userGuess` and compare both using `==`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "A correct example is:\n"
          '```swift\nlet secretBoolean = true;\nlet userGuess = true;\nif (userGuess == secretBoolean) {\n  print("You guessed it! 🎉");\n} else {\n  print("Wrong guess! Try again.");\n}\n```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\nlet secretBoolean = true;\nlet userGuess = true;\nif (userGuess == secretBoolean) {\n  print("You guessed it! 🎉");\n} else {\n  print("Wrong guess! Try again.");\n}\n```',
          titleColor: Colors.red,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Try again! (${_failedAttempts}/3 attempts)"),
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
              heroTag: "introButton2",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Boolean Guessing Challenge! 🧠\n\n"
                  "Your task:\n"
                  "1. Declare a constant `secretBoolean` with a boolean value.\n"
                  "2. Declare a constant `userGuess` representing the user's input.\n"
                  "3. Compare both using the `==` operator.\n"
                  "4. If the guess is correct, print `You guessed it! 🎉`. Otherwise, print `Wrong guess! Try again.`.\n\n"
                  "Example:\n"
                  '```swift\nlet secretBoolean = true;\nlet userGuess = true;\nif (userGuess == secretBoolean) {\n  print("You guessed it! 🎉");\n} else {\n  print("Wrong guess! Try again.");\n}\n```',
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton2",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton2",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\nlet secretBoolean = true;\nlet userGuess = true;\nif (userGuess == secretBoolean) {\n  print("You guessed it! 🎉");\n} else {\n  print("Wrong guess! Try again.");\n}\n```',
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
                        text: "1  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "secretBoolean ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n2  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "userGuess ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n3  if (userGuess == secretBoolean) {\n4      print(\"You guessed it! 🎉\");\n5  } else {\n6      print(\"Wrong guess! Try again.\");\n7  }",
                        style: TextStyle(color: Colors.grey),
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
                    fontFamily: 'InconsolataRegular',
                    fontSize: 18,
                    color: _inputTextColor,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    hintText: '"Enter your code here"',
                    hintStyle: TextStyle(color: Colors.grey),
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
