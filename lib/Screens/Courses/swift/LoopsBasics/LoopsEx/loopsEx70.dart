import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class LoopsEx70 extends StatefulWidget {
    final String title;
  final int id;
  final bool completed;
  const LoopsEx70({super.key, required this.title, required this.id, required this.completed});

  @override
  State<LoopsEx70> createState() => _LoopsEx70State();
}

class _LoopsEx70State extends State<LoopsEx70> {
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

   void _validateInput(AllProvider allprovider)  {
    final codeRegex = RegExp(
      r'^let\s+numbers\s*=\s*\[.*\];\s*for\s+.*\{\s*if\s*\(.*%\s*2\s*==\s*0\)\s*\{\s*print\(.*\);\s*break;\s*\}\s*\}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
      purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      allprovider.data[Constant.catIndex].catExercise[widget.id].completed =
          true;
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear(); // Limpiar el campo de texto

      _showDialog(
        "Correct! 🎉",
        "Great! You've successfully found the first even number in the array.\n\n"
        "**Explanation:**\n"
        "- Use a loop to iterate through the array.\n"
        "- Inside the loop, check if the number is even (`number % 2 == 0`).\n"
        "- Use `break` to stop the loop after finding the first even number.",
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
          "Start by creating an array of integers: `let numbers = [1, 3, 5, 8, 10]`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a loop to iterate through the array. Inside the loop, check if the number is even using `number % 2 == 0`.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'let numbers = [1, 3, 5, 8, 10];\n'
          'for number in numbers {\n'
          '    if number % 2 == 0 {\n'
          '        print("First even number: \\(number)");\n'
          '        break;\n'
          '    }\n'
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
     final allProvider = Provider.of<AllProvider>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "introButton11",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to the Array Search Challenge! 🎉\n\n"
                  "Your task:\n"
                  "1. Create an array of integers.\n"
                  "2. Use a loop to find and print the **first even number** in the array.\n"
                  "3. If no even number is found, print `No even numbers found`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton11",
             onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton11",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'let numbers = [1, 3, 5, 8, 10];\n'
                    'for number in numbers {\n'
                    '    if number % 2 == 0 {\n'
                    '        print("First even number: \\(number)");\n'
                    '        break;\n'
                    '    }\n'
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
                        text: "1  let ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "numbers ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= [1, 3, 5, 8, 10];\n2  for number in numbers {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      if number % 2 == 0 {\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "4          print(\"First even number: \\(number)\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5          break;\n",
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: "6      }\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "7  }",
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
