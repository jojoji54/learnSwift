import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class SwitchEx57 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx57({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx57> createState() => _SwitchEx57State();
}

class _SwitchEx57State extends State<SwitchEx57> {
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
      r'^var\s+grade\s*=\s*".+";\s*switch\s*\(grade\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
      multiLine: true,
    );

    final userInput = _controller.text.trim();

    if (codeRegex.hasMatch(userInput)) {
        purchaseManagerHive.updatePurchase(widget.id,
          purchased: true, completed: true);
      final idx = allprovider.data[Constant.catIndex].catExercise
          .indexWhere((e) => e.id == widget.id);
      if (idx != -1) {
        allprovider.data[Constant.catIndex].catExercise[idx].completed = true;
      }
      allprovider.setData(allprovider.data);
      setState(() {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      });
      _controller.clear(); // Limpiar el campo de texto

      _showDialog(
        "Correct! 🎉",
        "Well done! You've implemented a grade feedback system using `switch`.\n\n"
        "Explanation:\n"
        "- Each `case` evaluates the grade and provides specific feedback.\n"
        "- The `default` case handles invalid grade inputs.",
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
          "Start by declaring a `grade` variable. Example: `var grade = \"A\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `switch` statement to match `grade` to feedback messages. Example:\n"
          '```swift\n'
          'switch grade {\n'
          '    case "A":\n'
          '        print("Excellent work!");\n'
          '    default:\n'
          '        print("Invalid grade entered.");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var grade = "A";\n'
          'switch grade {\n'
          'case "A":\n'
          '    print("Excellent work!");\n'
          'case "B":\n'
          '    print("Good job!");\n'
          'case "C":\n'
          '    print("You passed.");\n'
          'case "D":\n'
          '    print("You need to work harder.");\n'
          'case "F":\n'
          '    print("Failed. See you next semester.");\n'
          'default:\n'
          '    print("Invalid grade entered.");\n'
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
              heroTag: "introButton2",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Create a grade feedback system using a `switch` statement:\n\n"
                  "1. Assign specific feedback to each grade (`A` to `F`).\n"
                  "2. Use a `default` case for invalid input.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton2",
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
                heroTag: "helpButton2",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var grade = "A";\n'
                    'switch grade {\n'
                    'case "A":\n'
                    '    print("Excellent work!");\n'
                    'case "B":\n'
                    '    print("Good job!");\n'
                    'case "C":\n'
                    '    print("You passed.");\n'
                    'case "D":\n'
                    '    print("You need to work harder.");\n'
                    'case "F":\n'
                    '    print("Failed. See you next semester.");\n'
                    'default:\n'
                    '    print("Invalid grade entered.");\n'
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
                Text(
  'Example:',
  style: const TextStyle(
    fontFamily: 'InconsolataRegular',
    fontSize: 18,
    color: Colors.blueGrey,
  ),
),
const SizedBox(height: 10),
                CodePreview(
                  lines: <String>[
                    'var grade = "A";',
                    'switch (grade) {',
                    'case "A":',
                    'print("Excellent work!");',
                    'default:',
                    'print("Invalid grade entered.");',
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
