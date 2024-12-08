import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';

import 'package:learnswift/sharedPreferences/sharedPreferencesData.dart';
import 'package:provider/provider.dart';

class SwitchEx54 extends StatefulWidget {
   final String title;
  final int id;
  final bool completed;
  const SwitchEx54({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SwitchEx54> createState() => _SwitchEx54State();
}

class _SwitchEx54State extends State<SwitchEx54> {
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
      r'^var\s+category\s*=\s*".+";\s*var\s+subcategory\s*=\s*".+";\s*switch\s*\(category\)\s*\{\s*(case\s*".+":\s*switch\s*\(subcategory\)\s*\{\s*(case\s*".+":\s*print\(.*\);\s*)*(default:\s*print\(.*\);\s*)\}\s*)*(default:\s*print\(.*\);\s*)\}$',
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
        "Well done! You've successfully implemented nested `switch` cases.\n\n"
        "Explanation:\n"
        "- The outer `switch` determines the category.\n"
        "- The inner `switch` refines the classification based on the subcategory.\n"
        "- Always include `default` cases for both levels to handle unexpected inputs.",
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
          "Start by declaring two variables: `category` and `subcategory`.",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use a nested `switch` structure. For example:\n"
          '```swift\n'
          'switch category {\n'
          '    case "Fruit":\n'
          '        switch subcategory {\n'
          '            case "Citrus": print("Orange or Lemon");\n'
          '            default: print("Other Fruit");\n'
          '        }\n'
          '    default: print("Invalid Category");\n'
          '}\n'
          '```',
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var category = "Fruit";\n'
          'var subcategory = "Citrus";\n'
          'switch category {\n'
          'case "Fruit":\n'
          '    switch subcategory {\n'
          '    case "Citrus":\n'
          '        print("Orange or Lemon");\n'
          '    case "Berry":\n'
          '        print("Strawberry or Blueberry");\n'
          '    default:\n'
          '        print("Other Fruit");\n'
          '    }\n'
          'case "Vegetable":\n'
          '    switch subcategory {\n'
          '    case "Leafy":\n'
          '        print("Lettuce or Spinach");\n'
          '    case "Root":\n'
          '        print("Carrot or Beet");\n'
          '    default:\n'
          '        print("Other Vegetable");\n'
          '    }\n'
          'case "Meat":\n'
          '    switch subcategory {\n'
          '    case "Red Meat":\n'
          '        print("Beef or Lamb");\n'
          '    case "White Meat":\n'
          '        print("Chicken or Turkey");\n'
          '    default:\n'
          '        print("Other Meat");\n'
          '    }\n'
          'default:\n'
          '    print("Invalid Category");\n'
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
              heroTag: "introButton54",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Create a program to categorize items using nested `switch` statements:\n\n"
                  "1. Declare two variables: `category` and `subcategory`.\n"
                  "2. Use an outer `switch` for the category and an inner `switch` for the subcategory.\n"
                  "3. Print appropriate messages for combinations like:\n"
                  "   - `Citrus`: Print `Orange or Lemon`.\n"
                  "   - `Red Meat`: Print `Beef or Lamb`.\n"
                  "4. Always include a `default` case for unexpected values.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton54",
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
                heroTag: "helpButton54",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var category = "Fruit";\n'
                    'var subcategory = "Citrus";\n'
                    'switch category {\n'
                    'case "Fruit":\n'
                    '    switch subcategory {\n'
                    '    case "Citrus":\n'
                    '        print("Orange or Lemon");\n'
                    '    case "Berry":\n'
                    '        print("Strawberry or Blueberry");\n'
                    '    default:\n'
                    '        print("Other Fruit");\n'
                    '    }\n'
                    'default:\n'
                    '    print("Invalid Category");\n'
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
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "category ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"Fruit\";\n2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "subcategory ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= \"Citrus\";\n3  switch ",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "(category) {\n4      case \"Fruit\":\n5          switch (subcategory) {\n",
                        style: TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: "6              case \"Citrus\":\n7                  print(\"Orange or Lemon\");\n",
                        style: TextStyle(color: Colors.purple),
                      ),
                      const TextSpan(
                        text: "8              default:\n9                  print(\"Other Fruit\");\n10          }\n11      default:\n",
                        style: TextStyle(color: Colors.teal),
                      ),
                      const TextSpan(
                        text: "12          print(\"Invalid Category\");\n13  }",
                        style: TextStyle(color: Colors.red),
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
