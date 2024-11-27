import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx38 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx38({super.key, required this.title, required this.id});

  @override
  State<IfElsEx38> createState() => _IfElsEx38State();
}

class _IfElsEx38State extends State<IfElsEx38> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

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

  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+number\s*=\s*\d+;\s*if\s*\(number\s*>\s*0\)\s*{\s*print\(.+\);\s*}\s*else\s*if\s*\(number\s*<\s*0\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully implemented a nested `if-else` structure to handle multiple conditions.\n\n"
        "Explanation:\n"
        "- If the number is greater than 0, it's a positive number.\n"
        "- If the number is less than 0, it's a negative number.\n"
        "- Otherwise, the number is zero.\n\n"
        "This is a simple way to categorize numbers based on their values.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Start by declaring a variable `number` and assigning it a value.\n"
          "Use `if (number > 0)` to check if the number is positive.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Add an `else if (number < 0)` condition to check if the number is negative.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var number = 5;\n'
          'if (number > 0) {\n'
          '  print("Positive");\n'
          '} else if (number < 0) {\n'
          '  print("Negative");\n'
          '} else {\n'
          '  print("Zero");\n'
          '}\n'
          '```',
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
              heroTag: "introButtonNested",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Nested If-Else Statements! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable named `number` and assign it an integer value.\n"
                  "2. Use an `if-else` structure to categorize the number as positive, negative, or zero.\n\n"
                  "Example:\n"
                  "var number = 5;\n"
                  "if (number > 0) {\n"
                  "  print(\"Positive\");\n"
                  "} else if (number < 0) {\n"
                  "  print(\"Negative\");\n"
                  "} else {\n"
                  "  print(\"Zero\");\n"
                  "}",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonNested",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButtonNested",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var number = 5;\n'
                    'if (number > 0) {\n'
                    '  print("Positive");\n'
                    '} else if (number < 0) {\n'
                    '  print("Negative");\n'
                    '} else {\n'
                    '  print("Zero");\n'
                    '}\n'
                    '```',
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
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 5;\n2  if (number > 0) {\n3    print(",
                        style: TextStyle(color: Colors.black),
                      ),
                      const TextSpan(
                        text: "\"Positive\"",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: ");\n4  } else if (number < 0) {\n5    print(",
                        style: TextStyle(color: Colors.black),
                      ),
                      const TextSpan(
                        text: "\"Negative\"",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: ");\n6  } else {\n7    print(",
                        style: TextStyle(color: Colors.black),
                      ),
                      const TextSpan(
                        text: "\"Zero\"",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: ");\n8  }",
                        style: TextStyle(color: Colors.black),
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
