import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IfElsEx44 extends StatefulWidget {
  final String title;
  final int id;
  const IfElsEx44({super.key, required this.title, required this.id});

  @override
  State<IfElsEx44> createState() => _IfElsEx44State();
}

class _IfElsEx44State extends State<IfElsEx44> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.orange;

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
    final userInput = _controller.text.trim();

    final strongPasswordRegex =
        RegExp(r'^.{8,}$'); // At least 8 characters
    final containsNumber = RegExp(r'\d'); // Contains numbers
    final containsLetter = RegExp(r'[a-zA-Z]'); // Contains letters

    if (strongPasswordRegex.hasMatch(userInput) &&
        containsNumber.hasMatch(userInput) &&
        containsLetter.hasMatch(userInput)) {
      setState(() {
        _inputTextColor = Colors.green;
      });
      _controller.clear();
      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully implemented a password strength checker.\n\n"
        "Explanation:\n"
        "- **Strong Password:** At least 8 characters, contains both letters and numbers.\n"
        "- **Weak Password:** At least 6 characters but missing strong criteria.\n"
        "- **Very Weak Password:** Less than 6 characters.\n",
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
          "Declare a `password` variable. Example: `var password = \"abc123\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.count` to check the length and `.contains` to validate the password's contents.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var password = "abc123";\n'
          'if password.count >= 8 && password.contains("\\d") && password.contains("\\w") {\n'
          '    print("Strong");\n'
          '} else if password.count >= 6 {\n'
          '    print("Weak");\n'
          '} else {\n'
          '    print("Very Weak");\n'
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
              heroTag: "introButton",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program to check the strength of a password based on these conditions:\n\n"
                  "1. **Strong**: At least 8 characters, contains both letters and numbers.\n"
                  "2. **Weak**: At least 6 characters but doesn't meet all criteria for \"Strong\".\n"
                  "3. **Very Weak**: Fewer than 6 characters.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var password = "abc123";\n'
                    'if password.count >= 8 && password.contains("\\d") && password.contains("\\w") {\n'
                    '    print("Strong");\n'
                    '} else if password.count >= 6 {\n'
                    '    print("Weak");\n'
                    '} else {\n'
                    '    print("Very Weak");\n'
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
                        text: "= \"abc123\";\n2  if password.count >= 8 && password.contains(\"\\d\") {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3    print(\"Strong\");\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "4  } else if password.count >= 6 {\n",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const TextSpan(
                        text: "5    print(\"Weak\");\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "6  } else {\n7    print(\"Very Weak\");\n8  }",
                        style: TextStyle(color: Colors.red),
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
