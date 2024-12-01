import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class SwitchEx51 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx51({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx51> createState() => _SwitchEx51State();
}

class _SwitchEx51State extends State<SwitchEx51> {
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
      r'^var\s+grade\s*=\s*\d+;\s*switch\s*\(grade\)\s*\{\s*(case\s*\d+\.\.\.\d+:\s*print\(.*\);\s*)*(default:\s*print\(.*\);\s*)\}$',
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
        "Well done! You've successfully implemented a `switch` statement with ranges.\n\n"
        "Explanation:\n"
        "- Use `case 90...100:` for the `A` grade range.\n"
        "- Handle ranges for other grades similarly.\n"
        "- Always include a `default` case for out-of-range values.",
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
          "Start by declaring `var grade = 85`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use range syntax for `case` labels. Example:\n"
          '```swift\n'
          'case 90...100:\n'
          '    print("A");\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var grade = 85;\n'
          'switch grade {\n'
          'case 90...100:\n'
          '    print("A");\n'
          'case 80...89:\n'
          '    print("B");\n'
          'case 70...79:\n'
          '    print("C");\n'
          'case 60...69:\n'
          '    print("D");\n'
          'case 0...59:\n'
          '    print("F");\n'
          'default:\n'
          '    print("Invalid grade");\n'
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
              heroTag: "introButton51",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program to evaluate grades using a `switch` statement:\n\n"
                  "1. Declare a `grade` variable (e.g., `85`).\n"
                  "2. Use ranges in `case` labels:\n"
                  "   - `90...100`: Print `A`.\n"
                  "   - `80...89`: Print `B`.\n"
                  "   - `70...79`: Print `C`.\n"
                  "   - `60...69`: Print `D`.\n"
                  "   - `0...59`: Print `F`.\n"
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
              heroTag: "runButton51",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton51",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var grade = 85;\n'
                    'switch grade {\n'
                    'case 90...100:\n'
                    '    print("A");\n'
                    'case 80...89:\n'
                    '    print("B");\n'
                    'case 70...79:\n'
                    '    print("C");\n'
                    'case 60...69:\n'
                    '    print("D");\n'
                    'case 0...59:\n'
                    '    print("F");\n'
                    'default:\n'
                    '    print("Invalid grade");\n'
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
                        text: "grade ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 85;\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "grade {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      case 90...100:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "4          print(\"A\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5      case 80...89:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "6          print(\"B\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "7      case 70...79:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "8          print(\"C\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "9      case 60...69:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "10          print(\"D\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "11      case 0...59:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "12          print(\"F\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "13      default:\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "14          print(\"Invalid grade\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "15  }",
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
