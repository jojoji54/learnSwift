import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class BEx24 extends StatefulWidget {
  final String title;
  final int id;
  const BEx24({super.key, required this.title, required this.id});

  @override
  State<BEx24> createState() => _BEx24State();
}

class _BEx24State extends State<BEx24> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0; // Contador de intentos fallidos
  Color _inputTextColor = Colors.orange; // Color inicial del texto

  // Mostrar diálogo genérico
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

  // Validar el texto ingresado
  void _validateInput() {
    final codeRegex = RegExp(
      r'^var\s+\w+\s*=\s*(true|false);\nif\s*\(\w+\)\s*{\s*print\(\"Swift is awesome!\"\);\s*}\s*else\s*{\s*print\(\"Keep trying!\"\);\s*}$',
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
        "Great! You've successfully used a boolean in an `if-else` statement.\n\n"
        "Explanation:\n"
        "- Boolean variables can be used in conditional statements to control program flow.\n"
        "- Example:\n"
        '```swift\nvar isLearningFun = true\nif isLearningFun {\n  print("Swift is awesome!")\n} else {\n  print("Keep trying!")\n}\n```'
        "In this case, if `isLearningFun` is `true`, the program prints `Swift is awesome!`. Otherwise, it prints `Keep trying!`.",
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
          "Declare a boolean variable using `var`. Use it in an `if-else` statement to control what gets printed.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "A correct example is:\n"
          '```swift\nvar isLearningFun = true\nif isLearningFun {\n  print("Swift is awesome!")\n} else {\n  print("Keep trying!")\n}\n```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\nvar isLearningFun = true\nif isLearningFun {\n  print("Swift is awesome!")\n} else {\n  print("Keep trying!")\n}\n```',
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
              heroTag: "introButton1",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Boolean in If-Else Statements! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a boolean variable using the `var` keyword.\n"
                  "2. Use an `if-else` statement to print one of two messages depending on the boolean's value.\n\n"
                  "Example:\n"
                  '```swift\nvar isLearningFun = true\nif isLearningFun {\n  print("Swift is awesome!")\n} else {\n  print("Keep trying!")\n}\n```',
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
              onPressed: _validateInput,
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton1",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\nvar isLearningFun = true\nif isLearningFun {\n  print("Swift is awesome!")\n} else {\n  print("Keep trying!")\n}\n```',
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
                        text: "isLearningFun ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= true;\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  if (isLearningFun) {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "3      print(\"Swift is awesome!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "4  } else {\n",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "5      print(\"Keep trying!\");\n",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "6  }",
                        style: TextStyle(color: Colors.blue),
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
