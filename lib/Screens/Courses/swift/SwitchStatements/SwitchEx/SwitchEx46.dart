import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class SwitchEx46 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx46({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx46> createState() => _SwitchEx46State();
}

class _SwitchEx46State extends State<SwitchEx46> {
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

   void _validateInput(AllProvider allprovider)  {
    final codeRegex = RegExp(
      r'^var\s+fruit\s*=\s*".+";\s*switch\s*\(fruit\)\s*\{\s*case\s*".+":\s*print\(.*\);\s*(case\s*".+":\s*print\(.*\);\s*)*default:\s*print\(.*\);\s*\}$',
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
        "Great! You've successfully used a `switch` statement to categorize values.\n\n"
        "Explanation:\n"
        "- A `switch` statement is used to compare the value of a variable against multiple cases.\n"
        "- If none of the cases match, the `default` case is executed.",
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
          "Start by declaring a variable `fruit` and assigning it a value (e.g., `var fruit = \"apple\"`).",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `switch` statement to check for specific cases. Example:\n"
          '```swift\n'
          'switch fruit {\n'
          'case "apple":\n'
          '    print("Red");\n'
          'case "banana":\n'
          '    print("Yellow");\n'
          'default:\n'
          '    print("Unknown");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var fruit = "apple";\n'
          'switch fruit {\n'
          'case "apple":\n'
          '    print("Red");\n'
          'case "banana":\n'
          '    print("Yellow");\n'
          'case "grape":\n'
          '    print("Purple");\n'
          'case "orange":\n'
          '    print("Orange");\n'
          'default:\n'
          '    print("Unknown");\n'
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
              heroTag: "introButton",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Switch Basics! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable `fruit` and assign it a value.\n"
                  "2. Use a `switch` statement to determine and print the color of the fruit.\n"
                  "   - `apple`: Print `Red`.\n"
                  "   - `banana`: Print `Yellow`.\n"
                  "   - `grape`: Print `Purple`.\n"
                  "   - `orange`: Print `Orange`.\n"
                  "   - Use `default` to handle other cases (e.g., print `Unknown`).",
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
                heroTag: "helpButton",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var fruit = "apple";\n'
                    'switch fruit {\n'
                    'case "apple":\n'
                    '    print("Red");\n'
                    'case "banana":\n'
                    '    print("Yellow");\n'
                    'case "grape":\n'
                    '    print("Purple");\n'
                    'case "orange":\n'
                    '    print("Orange");\n'
                    'default:\n'
                    '    print("Unknown");\n'
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
                CodePreview(
                  lines: <String>[
                    'var fruit = "apple";',
                    'switch fruit {',
                    'case "apple":',
                    'print("Red");',
                    'case "banana":',
                    'print("Yellow");',
                    'default:',
                    'print("Unknown");',
                    '}',
                  ],
                  withLineNumbers: true,
                  language: CodeLanguage.swift,
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
