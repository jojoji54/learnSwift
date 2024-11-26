import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx25 extends StatefulWidget {
  final String title;
  final int id;
  const BEx25({super.key, required this.title, required this.id});

  @override
  State<BEx25> createState() => _BEx25State();
}

class _BEx25State extends State<BEx25> {
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
      r'^var\s+\w+\s*=\s*(true|false);\nvar\s+\w+\s*=\s*(true|false);\nif\s*\(\w+\)\s*{\s*if\s*\(\w+\)\s*{\s*print\(\"You nailed it!\"\);\s*}\s*else\s*{\s*print\(\"Almost there!\"\);\s*}\s*}\s*else\s*{\s*print\(\"Try again!\"\);\s*}$',
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
        "Great! You've successfully used nested `if` statements with booleans.\n\n"
        "Explanation:\n"
        "- This exercise demonstrates how to use nested `if` statements to handle multiple conditions.\n"
        "- Example:\n"
        '```swift\nvar firstCondition = true\nvar secondCondition = false\nif firstCondition {\n  if secondCondition {\n    print("You nailed it!")\n  } else {\n    print("Almost there!")\n  }\n} else {\n  print("Try again!")\n}\n```',
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
          "Use the `var` keyword to declare two boolean variables. Use nested `if` statements to check each condition.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "A correct example is:\n"
          '```swift\nvar firstCondition = true\nvar secondCondition = false\nif firstCondition {\n  if secondCondition {\n    print("You nailed it!")\n  } else {\n    print("Almost there!")\n  }\n} else {\n  print("Try again!")\n}\n```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\nvar firstCondition = true\nvar secondCondition = false\nif firstCondition {\n  if secondCondition {\n    print("You nailed it!")\n  } else {\n    print("Almost there!")\n  }\n} else {\n  print("Try again!")\n}\n```',
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
                  "Exercise Instructions",
                  "Welcome to Nested If Statements with Booleans! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare two boolean variables using the `var` keyword.\n"
                  "2. Use nested `if` statements to check both conditions.\n\n"
                  "Example:\n"
                  '```swift\nvar firstCondition = true\nvar secondCondition = false\nif firstCondition {\n  if secondCondition {\n    print("You nailed it!")\n  } else {\n    print("Almost there!")\n  }\n} else {\n  print("Try again!")\n}\n```',
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
                    '```swift\nvar firstCondition = true\nvar secondCondition = false\nif firstCondition {\n  if secondCondition {\n    print("You nailed it!")\n  } else {\n    print("Almost there!")\n  }\n} else {\n  print("Try again!")\n}\n```',
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
                        text: "firstCondition ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "secondCondition ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= false;\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3  if (firstCondition) {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "4      if (secondCondition) {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "5          print(\"You nailed it!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6      } else {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "7          print(\"Almost there!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "8      }\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "9  } else {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "10     print(\"Try again!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "11 }\n",
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
