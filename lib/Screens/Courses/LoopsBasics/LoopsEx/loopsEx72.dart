import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class LoopsEx72 extends StatefulWidget {
     final String title;
  final int id;
  final bool completed;
  const LoopsEx72({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx72> createState() => _LoopsEx72State();
}

class _LoopsEx72State extends State<LoopsEx72> {
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
      r'^let\s+numbers\s*=\s*\[.*\];\s*var\s+largest\s*=\s*numbers\[0\];\s*for\s+\w+\s+in\s+numbers\s*\{\s*if\s+\w+\s*>\s*largest\s*\{\s*largest\s*=\s*\w+;\s*\}\s*}\s*print\(.*\);$',
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
        "Great! You've successfully found the largest number in an array.\n\n"
        "**Explanation:**\n"
        "- Start with the first number in the array as the largest.\n"
        "- Use a loop to compare each number in the array to the current largest number.\n"
        "- If a number is larger, update the largest number.\n"
        "- Print the largest number after the loop ends.",
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
          "Start by declaring an array of numbers: `let numbers = [3, 5, 7, 2, 8]`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Initialize a `largest` variable with the first element of the array. Use a `for` loop to iterate through the array.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'let numbers = [3, 5, 7, 2, 8];\n'
          'var largest = numbers[0];\n'
          'for num in numbers {\n'
          '    if num > largest {\n'
          '        largest = num;\n'
          '    }\n'
          '}\n'
          'print("The largest number is \\(largest)");\n'
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
              heroTag: "introButton13",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Welcome to the Find the Largest Number Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare an array of integers (e.g., `[3, 5, 7, 2, 8]`).\n"
                  "2. Use a loop to find the **largest number** in the array.\n"
                  "3. Print the largest number.\n\n"
                  "Example:\n"
                  "For the array `[3, 5, 7, 2, 8]`, the largest number is `8`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton13",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton13",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'let numbers = [3, 5, 7, 2, 8];\n'
                    'var largest = numbers[0];\n'
                    'for num in numbers {\n'
                    '    if num > largest {\n'
                    '        largest = num;\n'
                    '    }\n'
                    '}\n'
                    'print("The largest number is \\(largest)");\n'
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
                        text: "1  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "numbers ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [3, 5, 7, 2, 8];\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "largest ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= numbers[0];\n3  for ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "num in numbers {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "4      if ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "num > largest {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "5          largest = num;\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6      }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "7  }\n8  print(\"The largest number is \\(largest)\");",
                        style: TextStyle(color: Colors.purple),
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
