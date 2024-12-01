import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class LoopsEx64 extends StatefulWidget {
    final String title;
  final int id;
  final bool completed;
  const LoopsEx64({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx64> createState() => _LoopsEx64State();
}

class _LoopsEx64State extends State<LoopsEx64> {
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
      r'^var\s+number\s*=\s*\d+;\s*for\s+\w+\s+in\s+1\.\.\.10\s*\{\s*print\(.*\);\s*}$',
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
        "Great! You've successfully created a multiplication table using a `for` loop.\n\n"
        "**Explanation:**\n"
        "- A `for` loop iterates through numbers from `1` to `10`.\n"
        "- In each iteration, the current multiplier and result are printed in the correct format.",
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
          "Start by declaring a variable `number` (e.g., `5`). Use `for` to iterate through `1...10`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Inside the loop, multiply `number` by the current iteration value. Use `print` to display the result.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var number = 5;\n'
          'for multiplier in 1...10 {\n'
          '    print("\\(number) x \\(multiplier) = \\(number * multiplier)");\n'
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
                  "Welcome to the Multiplication Table Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `number` and assign it a value (e.g., `5`).\n"
                  "2. Use a `for` loop to iterate through numbers from `1` to `10`.\n"
                  "3. Print each multiplication result in the format:\n"
                  "   - Example: `5 x 1 = 5`.",
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
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton4",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var number = 5;\n'
                    'for multiplier in 1...10 {\n'
                    '    print("\\(number) x \\(multiplier) = \\(number * multiplier)");\n'
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
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 5;\n2  for ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "multiplier ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "in 1...10 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      print(",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "\"\\(number) x \\(multiplier) = \\(number * multiplier)\"",
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: ");\n4  }",
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
