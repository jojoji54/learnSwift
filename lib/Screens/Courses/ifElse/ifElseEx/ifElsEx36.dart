import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx36 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx36({super.key, required this.title, required this.id});

  @override
  State<IfElsEx36> createState() =>
      _IfElsEx36State();
}

class _IfElsEx36State extends State<IfElsEx36> {
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
      r'^var\s+fruit\s*=\s*".+";\s*if\s*\(fruit\s*==\s*".+"\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}$',
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
        "Great! You've successfully used `if-else` to evaluate string conditions.\n\n"
        "Explanation:\n"
        "- Strings can be compared using the `==` operator.\n"
        "- Use `if` to check if a string matches a specific value.",
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
          "Start by declaring a variable `fruit` and assigning it a string value, e.g., `var fruit = \"apple\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `if-else` to check if the value matches a condition:\n"
          '- If `fruit == "apple"`, print "It\'s an apple!".',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var fruit = "apple";\n'
          'if (fruit == "apple") {\n'
          '    print("It\'s an apple!");\n'
          '} else {\n'
          '    print("It\'s not an apple!");\n'
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
                  "Welcome to If-Else with Strings! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable named `fruit` and assign it a string value.\n"
                  "2. Use `if` to check if the string matches a specific value, and print the result.\n"
                  "3. Use `else` to handle other cases.\n\n"
                  "Example:\n"
                  "var fruit = \"apple\"\n"
                  "if (fruit == \"apple\") {\n"
                  "    print(\"It's an apple!\")\n"
                  "} else {\n"
                  "    print(\"It's not an apple!\")\n"
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
                    'var fruit = "apple";\n'
                    'if (fruit == "apple") {\n'
                    '    print("It\'s an apple!");\n'
                    '} else {\n'
                    '    print("It\'s not an apple!");\n'
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
                        text: "fruit ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"apple\";\n2  if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "(fruit == \"apple\") ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "{\n    print(\"It's an apple!\");\n} else {\n    print(\"It's not an apple!\");\n}",
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
