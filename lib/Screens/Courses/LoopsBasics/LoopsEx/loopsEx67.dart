import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';

class LoopsEx67 extends StatefulWidget {
    final String title;
  final int id;
  final bool completed;
  const LoopsEx67({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx67> createState() => _LoopsEx67State();
}

class _LoopsEx67State extends State<LoopsEx67> {
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

  void _validateInput() async{
    final codeRegex = RegExp(
      r'^var\s+sum\s*=\s*0;\s*for\s+\w+\s+in\s+1\.\.\.49\s*\{\s*if\s*\(\w+\s*%\s*3\s*==\s*0\s*\|\|\s*\w+\s*%\s*5\s*==\s*0\)\s*\{\s*sum\s*\+=\s*\w+;\s*\}\s*\}\s*print\(\s*sum\s*\);$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
       PurchaseManagerSingleton().updateItemAndSave(
        widget.id,
        completed: true,
      );
      await SharedPreferencesData.guardarPurchasesAndDevelopmentList(
        PurchaseManagerSingleton().purchaseAndDevelop,
      );
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear(); // Limpiar el campo de texto

      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully calculated the sum of multiples using a `for` loop and an `if` condition.\n\n"
        "**Explanation:**\n"
        "- A `for` loop iterates through numbers from `1` to `49`.\n"
        "- Inside the loop, an `if` condition checks if the number is a multiple of `3` or `5`.\n"
        "- If true, the number is added to the `sum` variable.\n"
        "- After the loop, the total sum is printed.",
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
          "Start with a `sum` variable initialized to `0`. Use a `for` loop to iterate from `1` to `49`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Inside the loop, check if a number is divisible by `3` or `5` using `if (number % 3 == 0 || number % 5 == 0)`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var sum = 0;\n'
          'for number in 1...49 {\n'
          '    if number % 3 == 0 || number % 5 == 0 {\n'
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
              heroTag: "introButton8",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Sum of Multiples Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Use a `for` loop to iterate through numbers from `1` to `49`.\n"
                  "2. Inside the loop, check if a number is a multiple of `3` or `5`.\n"
                  "3. Accumulate the sum of these multiples in a `sum` variable.\n"
                  "4. Print the result after the loop ends.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton8",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton8",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var sum = 0;\n'
                    'for number in 1...49 {\n'
                    '    if number % 3 == 0 || number % 5 == 0 {\n'
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
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "sum ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 0;\n2  for ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "number ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "in 1...49 {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      if number % 3 == 0 || number % 5 == 0 {\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "4          sum += number;\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "5      }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "6  }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "7  print(sum);",
                        style: TextStyle(color: Colors.green),
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
