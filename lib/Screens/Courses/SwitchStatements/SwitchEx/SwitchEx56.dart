import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class SwitchEx56 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx56({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx56> createState() => _SwitchEx56State();
}

class _SwitchEx56State extends State<SwitchEx56> {
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
      r'^var\s+day\s*=\s*".+";\s*switch\s*\(day\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
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
        "Well done! You've implemented a day scheduler using `switch`.\n\n"
        "Explanation:\n"
        "- Each `case` matches a day of the week to its respective task.\n"
        "- The `default` case handles invalid input.",
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
          "Start by declaring a `day` variable. Example: `var day = \"Monday\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `switch` statement to match `day` to tasks. Example:\n"
          '```swift\n'
          'switch day {\n'
          '    case "Monday":\n'
          '        print("Plan the week.");\n'
          '    default:\n'
          '        print("Invalid day entered.");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var day = "Monday";\n'
          'switch day {\n'
          'case "Monday":\n'
          '    print("Plan the week.");\n'
          'case "Tuesday":\n'
          '    print("Team meeting.");\n'
          'case "Wednesday":\n'
          '    print("Focus on project work.");\n'
          'case "Thursday":\n'
          '    print("Prepare reports.");\n'
          'case "Friday":\n'
          '    print("Review the week.");\n'
          'case "Saturday":\n'
          '    print("Relax and recharge.");\n'
          'case "Sunday":\n'
          '    print("Family time.");\n'
          'default:\n'
          '    print("Invalid day entered.");\n'
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
              heroTag: "introButton1",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Create a day scheduler using a `switch` statement:\n\n"
                  "1. Assign tasks to days of the week (`Monday` to `Sunday`).\n"
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
              heroTag: "runButton1",
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
                heroTag: "helpButton1",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var day = "Monday";\n'
                    'switch day {\n'
                    'case "Monday":\n'
                    '    print("Plan the week.");\n'
                    'case "Tuesday":\n'
                    '    print("Team meeting.");\n'
                    'case "Wednesday":\n'
                    '    print("Focus on project work.");\n'
                    'case "Thursday":\n'
                    '    print("Prepare reports.");\n'
                    'case "Friday":\n'
                    '    print("Review the week.");\n'
                    'case "Saturday":\n'
                    '    print("Relax and recharge.");\n'
                    'case "Sunday":\n'
                    '    print("Family time.");\n'
                    'default:\n'
                    '    print("Invalid day entered.");\n'
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
                        text: "day ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"Monday\";\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "(day) {\n3      case \"Monday\":\n4          print(\"Plan the week.\");\n",
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: "5      default:\n6          print(\"Invalid day entered.\");\n7  }",
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
