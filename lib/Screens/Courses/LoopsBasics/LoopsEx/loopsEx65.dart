import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class LoopsEx65 extends StatefulWidget {
  final String title;
  final int id;
  const LoopsEx65({super.key, required this.title, required this.id});

  @override
  State<LoopsEx65> createState() => _LoopsEx65State();
}

class _LoopsEx65State extends State<LoopsEx65> {
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
      r'^var\s+n\s*=\s*\d+;\s*var\s+sum\s*=\s*0;\s*for\s+\w+\s+in\s+1\.\.\.n\s*\{\s*if\s*\(\w+\s*%\s*2\s*==\s*0\)\s*\{\s*sum\s*+=\s*\w+;\s*\}\s*\}\s*print\(sum\);$',
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
        "Great! You've successfully calculated the sum of even numbers using a `for` loop.\n\n"
        "**Explanation:**\n"
        "- A `for` loop iterates through numbers from `1` to `n`.\n"
        "- The `if` statement checks if a number is even using the `%` operator.\n"
        "- If the number is even, it gets added to the `sum` variable.",
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
          "Start by declaring `n` (e.g., `10`) and a variable `sum` initialized to `0`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `for` loop to iterate through numbers. Check if a number is even using `% 2 == 0`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var n = 10;\n'
          'var sum = 0;\n'
          'for number in 1...n {\n'
          '    if number % 2 == 0 {\n'
          '        sum += number;\n'
          '    }\n'
          '}\n'
          'print(sum);\n'
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
              heroTag: "introButton5",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Sum of Even Numbers Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `n` and assign it a value (e.g., `10`).\n"
                  "2. Use a `for` loop to iterate through numbers from `1` to `n`.\n"
                  "3. Inside the loop, use an `if` statement to check if the number is even (`% 2 == 0`).\n"
                  "4. Add the even numbers to a `sum` variable.\n"
                  "5. Print the total sum at the end.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton5",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton5",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var n = 10;\n'
                    'var sum = 0;\n'
                    'for number in 1...n {\n'
                    '    if number % 2 == 0 {\n'
                    '        sum += number;\n'
                    '    }\n'
                    '}\n'
                    'print(sum);\n'
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
                        text: "n ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 10;\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "sum ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 0;\n3  for ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "in 1...n {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "number % 2 == 0 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "5          sum += number;\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6      }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "7  }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "8  print(sum);",
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
