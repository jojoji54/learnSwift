import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx33 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx33({super.key, required this.title, required this.id});

  @override
  State<IfElsEx33> createState() => _IfElsEx33State();
}

class _IfElsEx33State extends State<IfElsEx33> {
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
      r'^var\s+password\s*=\s*"swift";\s*if\s*\(password\s*==\s*"swift"\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}$',
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
        "Great! You've successfully used if-else with equality checks in Swift.\n\n"
        "Explanation:\n"
        "- Use `==` to compare if two values are equal.\n"
        "- If they are equal, the `if` block executes.\n"
        "- Otherwise, the `else` block executes.\n\n"
        "This is essential for decision-making in programs.",
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
          "Start by declaring a variable, e.g., `var password = \"swift\"`.\n"
          "Then use an `if` statement to check if it equals \"swift\".",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Structure your code like this:\n"
          '```swift\n'
          'if (password == "swift") {\n'
          '  print("Access granted");\n'
          '} else {\n'
          '  print("Access denied");\n'
          '}'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var password = "swift";\n'
          'if (password == "swift") {\n'
          '  print("Access granted");\n'
          '} else {\n'
          '  print("Access denied");\n'
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
              heroTag: "introButtonEqualityCheck",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to If-Else with Equality Checks! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `password` and assign it the value \"swift\".\n"
                  "2. Use an `if` statement to check if `password` equals \"swift\".\n"
                  "3. Print \"Access granted\" if true, or \"Access denied\" otherwise.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonEqualityCheck",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButtonEqualityCheck",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var password = "swift";\n'
                    'if (password == "swift") {\n'
                    '  print("Access granted");\n'
                    '} else {\n'
                    '  print("Access denied");\n'
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
                        text: "password ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"swift\";\n2  if (",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "password == \"swift\"",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ") {\n3  ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: 'print("Access granted");\n4  } else {\n5  ',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: 'print("Access denied");\n6  }',
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
