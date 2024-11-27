import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx37 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx37({super.key, required this.title, required this.id});

  @override
  State<IfElsEx37> createState() =>
      _IfElsEx37State();
}

class _IfElsEx37State extends State<IfElsEx37> {
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
      r'^var\s+temperature\s*=\s*-?\d+;\s*if\s*\(temperature\s*(>|>=|<|<=|==|!=)\s*-?\d+\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}$',
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
        "Great! You've successfully used `if-else` to compare numerical values.\n\n"
        "Explanation:\n"
        "- Use comparison operators like `>`, `<`, `>=`, and `<=` to evaluate numbers.\n"
        "- The code inside `if` executes if the condition is true; otherwise, the `else` block runs.",
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
          "Start by declaring a variable `temperature` and assigning it a number, e.g., `var temperature = 25`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if` to compare `temperature` to another number, e.g., `if (temperature > 20) { ... }`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var temperature = 25;\n'
          'if (temperature > 20) {\n'
          '    print("It\'s warm!");\n'
          '} else {\n'
          '    print("It\'s cold!");\n'
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
              heroTag: "introButton4",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Numerical Comparisons! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable named `temperature` and assign it a numerical value.\n"
                  "2. Use `if` to check if the value is greater, less than, or equal to a specific number.\n"
                  "3. Use `else` to handle other cases.\n\n"
                  "Example:\n"
                  "var temperature = 25\n"
                  "if (temperature > 20) {\n"
                  "    print(\"It's warm!\")\n"
                  "} else {\n"
                  "    print(\"It's cold!\")\n"
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
              heroTag: "runButton4",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton4",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var temperature = 25;\n'
                    'if (temperature > 20) {\n'
                    '    print("It\'s warm!");\n'
                    '} else {\n'
                    '    print("It\'s cold!");\n'
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
                        text: "temperature ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 25;\n2  if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "(temperature > 20) ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "{\n    print(\"It's warm!\");\n} else {\n    print(\"It's cold!\");\n}",
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
