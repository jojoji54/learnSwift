import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx32 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx32({super.key, required this.title, required this.id});

  @override
  State<IfElsEx32> createState() =>
      _IfElsEx32State();
}

class _IfElsEx32State extends State<IfElsEx32> {
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
      r'^var\s+temperature\s*=\s*\d+;\s*if\s*\(temperature\s*>=\s*\d+\)\s*{\s*print\(.+\);\s*}\s*else\s*if\s*\(temperature\s*<\s*\d+\)\s*{\s*print\(.+\);\s*}\s*else\s*{\s*print\(.+\);\s*}$',
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
        "Great! You've successfully used if-else with multiple conditions in Swift.\n\n"
        "Explanation:\n"
        "- `if` is used for the first condition.\n"
        "- `else if` allows for additional checks.\n"
        "- `else` handles all other cases.\n\n"
        "This structure is useful for checking multiple possibilities.",
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
          "Start by declaring a variable, e.g., `var temperature = 25`. Use `if` to check its value.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "An example structure could be:\n"
          '```swift\n'
          'if (temperature >= 30) {\n'
          '  print("It\'s hot");\n'
          '} else if (temperature < 15) {\n'
          '  print("It\'s cold");\n'
          '} else {\n'
          '  print("It\'s warm");\n'
          '}'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var temperature = 25;\n'
          'if (temperature >= 30) {\n'
          '  print("It\'s hot");\n'
          '} else if (temperature < 15) {\n'
          '  print("It\'s cold");\n'
          '} else {\n'
          '  print("It\'s warm");\n'
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
              heroTag: "introButtonMultipleConditions",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to If-Else with Multiple Conditions! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `temperature` and assign it a value.\n"
                  "2. Use `if` to check if it's greater than or equal to 30 and print 'It's hot'.\n"
                  "3. Use `else if` to check if it's less than 15 and print 'It's cold'.\n"
                  "4. Use `else` to handle all other cases and print 'It's warm'.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonMultipleConditions",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButtonMultipleConditions",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var temperature = 25;\n'
                    'if (temperature >= 30) {\n'
                    '  print("It\'s hot");\n'
                    '} else if (temperature < 15) {\n'
                    '  print("It\'s cold");\n'
                    '} else {\n'
                    '  print("It\'s warm");\n'
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
                        text: "= 25;\n2  if (",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "temperature >= 30",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ") {\n3  ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: 'print("It\'s hot");\n4  } else if (',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "temperature < 15",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ") {\n5  ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: 'print("It\'s cold");\n6  } else {\n7  ',
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: 'print("It\'s warm");\n8  }',
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
