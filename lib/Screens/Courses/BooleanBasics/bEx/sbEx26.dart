import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx26 extends StatefulWidget {
  final String title;
  final int id;
  const BEx26({super.key, required this.title, required this.id});

  @override
  State<BEx26> createState() => _BEx26State();
}

class _BEx26State extends State<BEx26> {
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
      r'^var\s+\w+\s*=\s*"[^"]{8,}";\nif\s*\(\w+\.contains\("@\"\)\s*&&\s*\w+\.contains\("\$\"\)\)\s*{\s*print\("Strong password!"\);\s*}\s*else\s*{\s*print\("Weak password."\);\s*}$',
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
        "Great! You've successfully created a password validator using booleans.\n\n"
        "Explanation:\n"
        "- This exercise combines string operations and boolean logic.\n"
        "- A strong password must:\n"
        "  1. Be at least 8 characters long.\n"
        "  2. Contain an `@` symbol.\n"
        "  3. Contain a `\$` symbol.\n\n"
        "Example solution:\n"
        '```swift\nvar password = "@StrongPass\$";\nif password.contains("@") && password.contains("\$") {\n  print("Strong password!");\n} else {\n  print("Weak password.");\n}\n```',
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
          "Start by declaring a variable named `password` with a string value.\n"
          "Use `.contains` to check for `@` and `\$` symbols.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Combine conditions with the `&&` operator:\n"
          "Use `if password.contains(\"@\") && password.contains(\"\$\")`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\nvar password = "@StrongPass\$";\nif password.contains("@") && password.contains("\$") {\n  print("Strong password!");\n} else {\n  print("Weak password.");\n}\n```',
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
                  "Welcome to the Password Validator Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable named `password` and assign it a string value.\n"
                  "2. Use `if` statements to check if the password contains:\n"
                  "   - At least 8 characters.\n"
                  "   - An `@` symbol.\n"
                  "   - A `\$` symbol.\n"
                  "3. If the password meets all criteria, print `Strong password!`.\n"
                  "   Otherwise, print `Weak password.`.\n\n"
                  "Example:\n"
                  '```swift\nvar password = "@StrongPass\$";\nif password.contains("@") && password.contains("\$") {\n  print("Strong password!");\n} else {\n  print("Weak password.");\n}\n```',
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
                    '```swift\nvar password = "@StrongPass\$";\nif password.contains("@") && password.contains("\$") {\n  print("Strong password!");\n} else {\n  print("Weak password.");\n}\n```',
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
                        text: "Example:\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "password ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"@StrongPass\$\";\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "(password.contains(\"@\") && password.contains(\"\$\")) {\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "3      print(\"Strong password!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4  } else {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "5      print(\"Weak password.\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6  }\n",
                        style: TextStyle(color: Colors.blue),
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
