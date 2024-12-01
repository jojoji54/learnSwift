import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class SwitchEx49 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx49({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx49> createState() => _SwitchEx49State();
}

class _SwitchEx49State extends State<SwitchEx49> {
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
      r'^var\s+temperature\s*=\s*\d+;\s*switch\s*\(temperature\)\s*\{\s*(case\s*\d+\.\.\.\d+:\s*print\(.*\);\s*)*(default:\s*print\(.*\);\s*)\}$',
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
        "Great! You've successfully implemented a `switch` statement with numerical ranges.\n\n"
        "Explanation:\n"
        "- Use `case 0...15:` for ranges.\n"
        "- The `default` case ensures all unexpected values are handled.",
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
          "Start by declaring `var temperature = 25`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use range patterns in `case`. Example:\n"
          '```swift\n'
          'case 0...15:\n'
          '    print("Cold");\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var temperature = 25;\n'
          'switch temperature {\n'
          'case ..<0:\n'
          '    print("Freezing");\n'
          'case 0...15:\n'
          '    print("Cold");\n'
          'case 16...30:\n'
          '    print("Warm");\n'
          'case 31...:\n'
          '    print("Hot");\n'
          'default:\n'
          '    print("Invalid temperature");\n'
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
              heroTag: "introButton49",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program that evaluates the temperature using a `switch` statement:\n\n"
                  "1. Declare a `temperature` variable with an integer value (e.g., `25`).\n"
                  "2. Use the following ranges:\n"
                  "   - Less than 0: Print `Freezing`.\n"
                  "   - 0 to 15 (inclusive): Print `Cold`.\n"
                  "   - 16 to 30 (inclusive): Print `Warm`.\n"
                  "   - Greater than 30: Print `Hot`.\n"
                  "3. Use `default` to handle invalid values.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton49",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton49",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var temperature = 25;\n'
                    'switch temperature {\n'
                    'case ..<0:\n'
                    '    print("Freezing");\n'
                    'case 0...15:\n'
                    '    print("Cold");\n'
                    'case 16...30:\n'
                    '    print("Warm");\n'
                    'case 31...:\n'
                    '    print("Hot");\n'
                    'default:\n'
                    '    print("Invalid temperature");\n'
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
                        text: "= 25;\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "temperature {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      case ..<0:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "4          print(\"Freezing\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5      case 0...15:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "6          print(\"Cold\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "7      case 16...30:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "8          print(\"Warm\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "9      case 31...:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "10         print(\"Hot\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "11     default:\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "12         print(\"Invalid temperature\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "13  }",
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
