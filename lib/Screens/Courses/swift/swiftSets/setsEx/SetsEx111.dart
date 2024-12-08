import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/courses/Swift/swiftBasics/sbExModelListZH.dart';
import 'package:learnswift/provider/allprovider.dart';
import 'package:provider/provider.dart';

class SetsEx111 extends StatefulWidget {
  final String title;
  final int id;
  final bool completed;
  const SetsEx111({super.key, required this.title, required this.id, required this.completed});

  @override
  State<SetsEx111> createState() => _SetsEx111State();
}

class _SetsEx111State extends State<SetsEx111> {
  final TextEditingController _controller = TextEditingController();
  int _failedAttempts = 0;
  Color _inputTextColor = Colors.orange;

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

  void _validateInput(AllProvider allprovider) async {
    final codeRegex = RegExp(
      r'^var\s+setA\s*=\s*Set<String>\(.*\);\s*var\s+setB\s*=\s*Set<String>\(.*\);\s*var\s+symmetricDifference\s*=\s+setA\.symmetricDifference\(setB\);\s*print\(symmetricDifference\);$',
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
        _inputTextColor = Colors.green;
      });
      _controller.clear();

      _showDialog(
        "Correct! 🎉",
        "Well done! You've successfully calculated the symmetric difference of two Sets.\n\n"
        "**Explanation:**\n"
        "- Use `.symmetricDifference()` to find elements present in either Set but not both.\n"
        "- This is useful to identify unique elements across two Sets.",
        titleColor: Colors.green,
      );
    } else {
      setState(() {
        _failedAttempts++;
        _inputTextColor = Colors.orange;
      });

      if (_failedAttempts == 1) {
        _showDialog(
          "Hint 1",
          "Declare two Sets with some unique elements. Example: `Set<String>([\"apple\", \"banana\"]`).",
        );
      } else if (_failedAttempts == 2) {
        _showDialog(
          "Hint 2",
          "Use `.symmetricDifference()` to find elements present in one Set but not the other.",
        );
      } else if (_failedAttempts >= 3) {
        _showDialog(
          "Solution",
          "The correct solution is:\n\n"
          '```swift\n'
          'var setA = Set<String>(["apple", "banana"]);\n'
          'var setB = Set<String>(["banana", "cherry"]);\n'
          'var symmetricDifference = setA.symmetricDifference(setB);\n'
          'print(symmetricDifference);\n'
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
              heroTag: "introButtonSets7",
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to Symmetric Difference of Sets! 🎉\n\n"
                  "Your task:\n"
                  "1. Create two Sets with some overlapping and unique elements.\n"
                  "2. Use `.symmetricDifference()` to find elements present in one Set but not both.\n"
                  "3. Print the resulting Set.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButtonSets7",
              onPressed: () {
                _validateInput(allProvider);
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3 || widget.completed)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButtonSets7",
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct solution is:\n\n"
                    '```swift\n'
                    'var setA = Set<String>(["apple", "banana"]);\n'
                    'var setB = Set<String>(["banana", "cherry"]);\n'
                    'var symmetricDifference = setA.symmetricDifference(setB);\n'
                    'print(symmetricDifference);\n'
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
                        text: "setA ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set<String>([\"apple\", \"banana\"]);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "2  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "setB ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= Set<String>([\"banana\", \"cherry\"]);\n",
                        style: TextStyle(color: Colors.orange),
                      ),
                      const TextSpan(
                        text: "3  var ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const TextSpan(
                        text: "symmetricDifference ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const TextSpan(
                        text: "= setA.symmetricDifference(setB);\n4  print(symmetricDifference);",
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
