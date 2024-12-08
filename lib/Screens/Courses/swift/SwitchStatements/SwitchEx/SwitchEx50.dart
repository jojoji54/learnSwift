import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class SwitchEx50 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx50({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx50> createState() => _SwitchEx50State();
}

class _SwitchEx50State extends State<SwitchEx50> {
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
      r'^var\s+day\s*=\s*".+";\s*switch\s*\(day\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)*(default:\s*print\(.*\);\s*)\}$',
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
        "Great! You've successfully implemented a `switch` statement with multiple matches.\n\n"
        "Explanation:\n"
        "- Use multiple `case` labels for `Weekend` and `Weekday` days.\n"
        "- The `default` case ensures all unexpected values are handled.",
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
          "Start by declaring `var day = \"Monday\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Group similar days using multiple `case` labels. Example:\n"
          '```swift\n'
          'case "Saturday", "Sunday":\n'
          '    print("Weekend");\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var day = "Monday";\n'
          'switch day {\n'
          'case "Saturday", "Sunday":\n'
          '    print("Weekend");\n'
          'case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":\n'
          '    print("Weekday");\n'
          'default:\n'
          '    print("Invalid day");\n'
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
              heroTag: "introButton50",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program to evaluate the day of the week using a `switch` statement:\n\n"
                  "1. Declare a `day` variable (e.g., `\"Monday\"`).\n"
                  "2. Use `case` labels to handle:\n"
                  "   - `\"Saturday\"`, `\"Sunday\"`: Print `Weekend`.\n"
                  "   - Other days: Print `Weekday`.\n"
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
              heroTag: "runButton50",
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
                heroTag: "helpButton50",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var day = "Monday";\n'
                    'switch day {\n'
                    'case "Saturday", "Sunday":\n'
                    '    print("Weekend");\n'
                    'case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":\n'
                    '    print("Weekday");\n'
                    'default:\n'
                    '    print("Invalid day");\n'
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
                        text: "day {\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3      case \"Saturday\", \"Sunday\":\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "4          print(\"Weekend\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "5      case \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\":\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "6          print(\"Weekday\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "7      default:\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "8          print(\"Invalid day\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "9  }",
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
