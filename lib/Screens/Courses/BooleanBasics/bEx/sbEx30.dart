import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx30 extends StatefulWidget {
  final String title;
  final int id;
  const BEx30({super.key, required this.title, required this.id});

  @override
  State<BEx30> createState() => _BEx30State();
}

class _BEx30State extends State<BEx30> {
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
      r'^let\s+isUserLoggedIn\s*=\s*(true|false);\s*let\s+hasPremiumAccess\s*=\s*(true|false);\s*if\s*\(isUserLoggedIn\s*&&\s*hasPremiumAccess\)\s*{\s*print\("Access granted to premium feature!"\);\s*}\s*else\s*{\s*print\("Access denied\. Please log in or upgrade\."\);\s*}$',
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
        "Amazing! You've successfully used logical operators to evaluate conditions.\n\n"
            "Explanation:\n"
            "- `isUserLoggedIn` and `hasPremiumAccess` are boolean constants.\n"
            "- You used the `&&` (AND) operator to check if both are true.\n"
            "- Based on the evaluation, you printed the corresponding message.",
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
          "Use two constants `isUserLoggedIn` and `hasPremiumAccess` with boolean values.\n"
              "Check both conditions using the `&&` operator.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "A correct example is:\n"
              '```swift\nlet isUserLoggedIn = true;\nlet hasPremiumAccess = false;\nif (isUserLoggedIn && hasPremiumAccess) {\n  print("Access granted to premium feature!");\n} else {\n  print("Access denied. Please log in or upgrade.");\n}\n```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
              '```swift\nlet isUserLoggedIn = true;\nlet hasPremiumAccess = false;\nif (isUserLoggedIn && hasPremiumAccess) {\n  print("Access granted to premium feature!");\n} else {\n  print("Access denied. Please log in or upgrade.");\n}\n```',
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
                  "Welcome to the Logical Operators Game! 🧠\n\n"
                      "Your task:\n"
                      "1. Declare two constants: `isUserLoggedIn` and `hasPremiumAccess`.\n"
                      "2. Use the `&&` operator to check if both conditions are true.\n"
                      "3. If true, print `Access granted to premium feature!`.\n"
                      "4. Otherwise, print `Access denied. Please log in or upgrade.`.\n\n"
                      "Example:\n"
                      '```swift\nlet isUserLoggedIn = true;\nlet hasPremiumAccess = false;\nif (isUserLoggedIn && hasPremiumAccess) {\n  print("Access granted to premium feature!");\n} else {\n  print("Access denied. Please log in or upgrade.");\n}\n```',
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
                        '```swift\nlet isUserLoggedIn = true;\nlet hasPremiumAccess = false;\nif (isUserLoggedIn && hasPremiumAccess) {\n  print("Access granted to premium feature!");\n} else {\n  print("Access denied. Please log in or upgrade.");\n}\n```',
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
                        text: "isUserLoggedIn ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n2  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "hasPremiumAccess ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text:
                            "= false;\n3  if (isUserLoggedIn && hasPremiumAccess) {\n4      print(\"Access granted to premium feature!\");\n5  } else {\n6      print(\"Access denied. Please log in or upgrade.\");\n7  }",
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
