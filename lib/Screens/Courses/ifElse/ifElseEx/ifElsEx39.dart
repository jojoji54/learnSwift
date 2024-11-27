import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx39 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx39({super.key, required this.title, required this.id});

  @override
  State<IfElsEx39> createState() => _IfElsEx39State();
}

class _IfElsEx39State extends State<IfElsEx39> {
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
      r'^var\s+yearsOfService\s*=\s*\d+;\s*var\s+performanceRating\s*=\s*\d+;\s*if\s*\(yearsOfService\s*>=\s*10\)\s*{\s*if\s*\(performanceRating\s*>=\s*8\)\s*{\s*print\(.*\);\s*}\s*else\s*{\s*print\(.*\);\s*}\s*}\s*else\s*{\s*print\(.*\);\s*}$',
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
        "Great job! You've implemented a nested `if-else` logic to determine employee bonuses.\n\n"
        "**Explanation:**\n"
        "- Employees with `yearsOfService >= 10` and `performanceRating >= 8` receive a `High Bonus`.\n"
        "- Employees with `yearsOfService >= 10` but `performanceRating < 8` receive a `Moderate Bonus`.\n"
        "- Employees with `yearsOfService < 10` receive a `Minimal Bonus`.\n\n"
        "This exercise helps you understand nested conditions and decision-making in Swift.",
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
          "Start by declaring variables: `yearsOfService` and `performanceRating` as integers.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a nested `if-else` structure. Evaluate `yearsOfService` first, then `performanceRating`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var yearsOfService = 12;\n'
          'var performanceRating = 9;\n'
          'if yearsOfService >= 10 {\n'
          '    if performanceRating >= 8 {\n'
          '        print("High Bonus");\n'
          '    } else {\n'
          '        print("Moderate Bonus");\n'
          '    }\n'
          '} else {\n'
          '    print("Minimal Bonus");\n'
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
              heroTag: "introButton3",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Nested If-Else Challenge! 🎉\n\n"
                  "Your task is to determine the type of bonus an employee receives:\n\n"
                  "1. Declare variables `yearsOfService` (integer) and `performanceRating` (integer).\n"
                  "2. Use a nested `if-else` structure:\n"
                  "   - `High Bonus`: `yearsOfService >= 10` and `performanceRating >= 8`.\n"
                  "   - `Moderate Bonus`: `yearsOfService >= 10` but `performanceRating < 8`.\n"
                  "   - `Minimal Bonus`: `yearsOfService < 10`.\n"
                  "3. Print the type of bonus.",
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
              onPressed: _validateInput,
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
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var yearsOfService = 12;\n'
                    'var performanceRating = 9;\n'
                    'if yearsOfService >= 10 {\n'
                    '    if performanceRating >= 8 {\n'
                    '        print("High Bonus");\n'
                    '    } else {\n'
                    '        print("Moderate Bonus");\n'
                    '    }\n'
                    '} else {\n'
                    '    print("Minimal Bonus");\n'
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
                        text: "Example:\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "yearsOfService ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 12;\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "performanceRating ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 9;\n3  if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "yearsOfService >= 10 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "performanceRating >= 8 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "5          print(\"High Bonus\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6      } else {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "7          print(\"Moderate Bonus\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "8      }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "9  } else {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "10      print(\"Minimal Bonus\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "11  }",
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
