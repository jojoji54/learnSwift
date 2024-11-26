import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx27 extends StatefulWidget {
  final String title;
  final int id;
  const BEx27({super.key, required this.title, required this.id});

  @override
  State<BEx27> createState() => _BEx27State();
}

class _BEx27State extends State<BEx27> {
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
      r'^var\s+isAlive\s*=\s*(true|false);\nvar\s+health\s*=\s*\d+;\nlet\s+damage\s*=\s*\d+;\nhealth\s*-\=\s*damage;\nif\s*\(\s*health\s*\<=\s*0\s*\)\s*{\s*isAlive\s*=\s*false;\s*print\("Game Over"\);\s*}\s*else\s*{\s*print\("Keep Playing!"\);\s*}$',
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
        "Great! You've successfully implemented a game logic using booleans and conditions.\n\n"
        "Explanation:\n"
        "- You declared variables `isAlive` and `health`.\n"
        "- Used a constant `damage` to subtract health.\n"
        "- Checked if health was below or equal to 0 to determine if the game is over.",
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
          "Declare variables `isAlive`, `health`, and a constant `damage`. Use `if` to check health.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Remember to use:\n"
          "- `health -= damage` to subtract health.\n"
          "- `if (health <= 0)` to check game over conditions.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\nvar isAlive = true;\nvar health = 100;\nlet damage = 30;\nhealth -= damage;\nif (health <= 0) {\n  isAlive = false;\n  print("Game Over");\n} else {\n  print("Keep Playing!");\n}\n```',
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
              heroTag: "introButton1",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Boolean Game Logic Challenge! 🎮\n\n"
                  "Your task:\n"
                  "1. Declare `isAlive` as `true`.\n"
                  "2. Declare `health` as `100`.\n"
                  "3. Subtract `damage` from `health`.\n"
                  "4. Print `Game Over` if health <= 0. Otherwise, print `Keep Playing!`.\n\n"
                  "Example:\n"
                  '```swift\nvar isAlive = true;\nvar health = 100;\nlet damage = 30;\nhealth -= damage;\nif (health <= 0) {\n  print("Game Over");\n} else {\n  print("Keep Playing!");\n}\n```',
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton1",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton1",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\nvar isAlive = true;\nvar health = 100;\nlet damage = 30;\nhealth -= damage;\nif (health <= 0) {\n  print("Game Over");\n} else {\n  print("Keep Playing!");\n}\n```',
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
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "isAlive ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n2  var ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "health ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 100;\n3  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "damage ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 30;\n4  health -= damage;\n5  if (health <= 0) {\n6      print(\"Game Over\");\n7  } else {\n8      print(\"Keep Playing!\");\n9  }",
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
