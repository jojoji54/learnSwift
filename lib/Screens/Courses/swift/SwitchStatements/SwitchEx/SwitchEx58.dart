import 'package:flutter/material.dart';
import 'package:learnswift/Widgets/codeTheme.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

import '../../../../../data/courses/Swift/swiftBasics/sbExModelListZH.dart';

class SwitchEx58 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx58({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx58> createState() => _SwitchEx58State();
}

class _SwitchEx58State extends State<SwitchEx58> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Counter for failed attempts
  Color _inputTextColor = Colors.orange; // Initial text color

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
      r'^var\s+month\s*=\s*".+";\s*switch\s*\(month\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
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
        _inputTextColor = Colors.green; // Change color if correct
      });
      _controller.clear(); // Clear the text field

      _showDialog(
        "Correct! 🎉",
        "Well done! You've created a month days calculator using a `switch` statement.\n\n"
        "**Explanation:**\n"
        "- Use `case` statements to match each month to its number of days.\n"
        "- Group months with the same number of days in the same `case`.\n"
        "- The `default` case handles invalid month names.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange; // Keep color if incorrect
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Start by declaring a `month` variable. Example: `var month = \"January\"`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `switch` statement to match `month` to the number of days. Remember that some months share the same number of days.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var month = "January";\n'
          'switch month {\n'
          'case "January", "March", "May", "July", "August", "October", "December":\n'
          '    print("31 days");\n'
          'case "April", "June", "September", "November":\n'
          '    print("30 days");\n'
          'case "February":\n'
          '    print("28 or 29 days");\n'
          'default:\n'
          '    print("Invalid month entered.");\n'
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
              heroTag: "introButton3",
              onPressed: () {
                _showDialog(
                  "Challenge Instructions",
                  "Create a month days calculator using a `switch` statement:\n\n"
                  "1. Declare a `month` variable (e.g., `\"January\"`).\n"
                  "2. Use `case` statements to determine the number of days:\n"
                  "   - Months with 31 days: `\"January\", \"March\", ...`\n"
                  "   - Months with 30 days: `\"April\", \"June\", ...`\n"
                  "   - `\"February\"`: Print `\"28 or 29 days\"`.\n"
                  "3. Include a `default` case for invalid inputs.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton3",
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
                heroTag: "helpButton3",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var month = "January";\n'
                    'switch month {\n'
                    'case "January", "March", "May", "July", "August", "October", "December":\n'
                    '    print("31 days");\n'
                    'case "April", "June", "September", "November":\n'
                    '    print("30 days");\n'
                    'case "February":\n'
                    '    print("28 or 29 days");\n'
                    'default:\n'
                    '    print("Invalid month entered.");\n'
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
                    'var month = "January";',
                    'switch month {',
                    'case "January", "March":',
                    'print("31 days");',
                    'default:',
                    'print("Invalid month entered.");',
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
