import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx35 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx35({super.key, required this.title, required this.id});

  @override
  State<IfElsEx35> createState() => _IfElsEx35State();
}

class _IfElsEx35State extends State<IfElsEx35> {
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
      r'^var\s+score\s*=\s*\d+;\s*if\s*\(score\s*>=\s*90\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*if\s*\(score\s*>=\s*60\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}\s*}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully used nested `if-else` statements.\n\n"
        "Explanation:\n"
        "- Nested `if-else` allows checking multiple conditions in sequence.\n"
        "- In this exercise, the program evaluates a score and determines the grade category.",
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
          "Start by declaring a variable `score` and assign it a value, e.g., `var score = 75`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use nested `if-else` to check the score:\n"
          '```swift\n'
          'if (score >= 90) {\n'
          '  print("Excellent");\n'
          '} else {\n'
          '  if (score >= 60) {\n'
          '    print("Pass");\n'
          '  } else {\n'
          '    print("Fail");\n'
          '  }\n'
          '}'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 75;\n'
          'if (score >= 90) {\n'
          '  print("Excellent");\n'
          '} else {\n'
          '  if (score >= 60) {\n'
          '    print("Pass");\n'
          '  } else {\n'
          '    print("Fail");\n'
          '  }\n'
          '}'
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
                  "Welcome to Nested If-Else Basics! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `score` and assign it a number.\n"
                  "2. Use `if-else` statements to determine:\n"
                  "   - `Excellent` for scores 90 and above.\n"
                  "   - `Pass` for scores 60 to 89.\n"
                  "   - `Fail` for scores below 60.\n"
                  "3. Print the corresponding grade.",
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
                    'var score = 75;\n'
                    'if (score >= 90) {\n'
                    '  print("Excellent");\n'
                    '} else {\n'
                    '  if (score >= 60) {\n'
                    '    print("Pass");\n'
                    '  } else {\n'
                    '    print("Fail");\n'
                    '  }\n'
                    '}'
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
                        text: "Example:\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "score ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 75;\n2  if (",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "score >= 90",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ") {\n3  ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: 'print("Excellent");\n4  } else {\n5    if (',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "score >= 60",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ") {\n6    ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: 'print("Pass");\n7    } else {\n8      ',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: 'print("Fail");\n9    }\n10  }',
                        style: TextStyle(color: Colors.orange),
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
