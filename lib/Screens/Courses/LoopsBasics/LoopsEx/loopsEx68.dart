import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class LoopsEx68 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const LoopsEx68({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx68> createState() => _LoopsEx68State();
}

class _LoopsEx68State extends State<LoopsEx68> {
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
                fontSize: 16,
                color: Colors.black,
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
      r'^var\s+number\s*=\s*\d+;\s*var\s+factorial\s*=\s*1;\s*for\s+.*\{\s*factorial\s*=\s*factorial\s*\*\s*.*;\s*\}\s*print\(factorial\);$',
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
        "Great! You've successfully implemented a factorial calculator using a `for` loop.\n\n"
        "**Explanation:**\n"
        "- Start with `factorial = 1`.\n"
        "- Multiply `factorial` by each number from `1` to the given number in the loop.\n"
        "- The result is printed after the loop ends.",
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
          "Start with `factorial = 1`. Use a `for` loop to iterate through numbers up to the input.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Inside the loop, multiply `factorial` by the loop variable. For example:\n"
          '```swift\n'
          'factorial = factorial * i\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var number = 5;\n'
          'var factorial = 1;\n'
          'for i in 1...number {\n'
          '    factorial *= i;\n'
          '}\n'
          'print(factorial);\n'
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
              heroTag: "introButton9",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Factorial Calculator! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `number` (integer) and set a value.\n"
                  "2. Use a `for` loop to calculate the factorial of the number.\n"
                  "3. Print the result after the loop ends.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton9",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
         if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton9",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var number = 5;\n'
                    'var factorial = 1;\n'
                    'for i in 1...number {\n'
                    '    factorial *= i;\n'
                    '}\n'
                    'print(factorial);\n'
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
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 5;\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "factorial ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 1;\n3  for i in 1...number {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      factorial *= i;\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "5  }\n6  print(factorial);",
                        style: TextStyle(color: Colors.teal),
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
