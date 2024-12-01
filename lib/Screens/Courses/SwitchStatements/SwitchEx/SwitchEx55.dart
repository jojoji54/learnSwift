import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/Singleton/purchaseManagerSingleton.dart';
import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';

class SwitchEx55 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx55({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx55> createState() => _SwitchEx55State();
}

class _SwitchEx55State extends State<SwitchEx55> {
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

  void _validateInput() async{
    final codeRegex = RegExp(
      r'^var\s+score\s*=\s*\d+;\s*switch\s*\(score\)\s*\{\s*(case\s*\d+\.\.\.\d+:\s*print\(.*\);\s*)+(default:\s*print\(.*\);\s*)\}$',
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
        "Great! You've successfully implemented range matching in a `switch` statement.\n\n"
        "Explanation:\n"
        "- Use `case 90...100:` for range matching.\n"
        "- Each case matches specific score ranges to assign a performance rating.\n"
        "- Always include a `default` case to handle unexpected input.",
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
          "Start by declaring a `score` variable. Example: `var score = 85`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a `switch` with range matching. For example:\n"
          '```swift\n'
          'switch score {\n'
          '    case 90...100:\n'
          '        print("Outstanding");\n'
          '    default:\n'
          '        print("Invalid Score");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var score = 85;\n'
          'switch score {\n'
          'case 90...100:\n'
          '    print("Outstanding");\n'
          'case 75...89:\n'
          '    print("Good");\n'
          'case 50...74:\n'
          '    print("Average");\n'
          'case 25...49:\n'
          '    print("Below Average");\n'
          'case 0...24:\n'
          '    print("Poor");\n'
          'default:\n'
          '    print("Invalid Score");\n'
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
              heroTag: "introButton55",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program to assign performance ratings based on a `score` using a `switch` with range matching:\n\n"
                  "1. Declare a `score` variable (integer).\n"
                  "2. Use `case 90...100:` for `Outstanding` and other ranges for respective ratings.\n"
                  "3. Include a `default` case for invalid scores.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton55",
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
           if (_failedAttempts >= 3 || widget.completed )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton55",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var score = 85;\n'
                    'switch score {\n'
                    'case 90...100:\n'
                    '    print("Outstanding");\n'
                    'case 75...89:\n'
                    '    print("Good");\n'
                    'case 50...74:\n'
                    '    print("Average");\n'
                    'case 25...49:\n'
                    '    print("Below Average");\n'
                    'case 0...24:\n'
                    '    print("Poor");\n'
                    'default:\n'
                    '    print("Invalid Score");\n'
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
                        text: "score ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= 85;\n2  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "(score) {\n3      case 90...100:\n4          print(\"Outstanding\");\n",
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: "5      default:\n6          print(\"Invalid Score\");\n7  }",
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
