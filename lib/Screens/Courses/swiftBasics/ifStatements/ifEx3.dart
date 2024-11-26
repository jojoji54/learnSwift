import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';

class IFEx1 extends StatefulWidget {
  final String title;
  const IFEx1({super.key, required this.title});

  @override
  State<IFEx1> createState() => _IFEx1State();
}

class _IFEx1State extends State<IFEx1> {
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

  // Verificar el texto ingresado
  void _checkInput() {
    final userInput = _controller.text.trim();
    setState(() {
      if (userInput.contains('var age =') &&
          userInput.contains('if age >= 18 {') &&
          userInput.contains('print("You are an adult")')) {
        _inputTextColor = Colors.green; // Cambiar color si es correcto
      } else {
        _inputTextColor = Colors.orange; // Mantener color si es incorrecto
      }
    });
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
              heroTag: "introButton3", // Hero tag único para este botón
              onPressed: () {
                _showDialog(
                  "Exercise Instructions",
                  "Welcome to your third exercise in Swift! 🎉\n\n"
                  "Your task:\n"
                  "1. Declare a variable named `age` and assign it a value.\n"
                  "2. Use a conditional (`if`) to check if the value of `age` is greater or equal to 18.\n"
                  "3. If true, print \"You are an adult\".\n\n"
                  "Tip: Remember to use the `if` keyword and comparison operators like `>=`.",
                );
              },
              backgroundColor: const Color(0xFFfbce72),
              child: const Icon(Icons.message, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: "runButton3", // Hero tag único para este botón
              onPressed: () {
                final userInput = _controller.text.trim();
                if (userInput.contains('var age =') &&
                    userInput.contains('if age >= 18 {') &&
                    userInput.contains('print("You are an adult")')) {
                  _controller.clear(); // Limpiar el campo de texto
                  _showDialog(
                    "Correct! 🎉",
                    "Congratulations! You've successfully used a conditional in Swift.\n\n"
                    "Explanation:\n"
                    "You declared a variable named `age` and checked if it was greater or equal to 18 using the `if` keyword.\n"
                    "This is how you make decisions in Swift programs based on conditions.",
                    titleColor: Colors.green,
                  );
                } else {
                  setState(() {
                    _failedAttempts++; // Incrementar intentos fallidos
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Try again! (${_failedAttempts}/3 attempts)"),
                    ),
                  );
                }
              },
              backgroundColor: Colors.black,
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
          if (_failedAttempts >= 3) // Mostrar botón de ayuda tras 3 fallos
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: "helpButton3", // Hero tag único para este botón
                onPressed: () {
                  _showDialog(
                    "Solution",
                    "The correct answer is:\n\n"
                    "var age = 18;\n"
                    "if age >= 18 {\n"
                    "  print(\"You are an adult\")\n"
                    "}",
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
                // Código del ejercicio
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'InconsolataRegular',
                      fontSize: 18,
                    ),
                    children: [
                      const TextSpan(
                        text: "1  var ",
                        style: TextStyle(color: Colors.blue), // Palabras clave
                      ),
                      const TextSpan(
                        text: "age ",
                        style: TextStyle(color: Colors.green), // Variables
                      ),
                      const TextSpan(
                        text: "= ",
                        style: TextStyle(color: Colors.black), // Símbolos
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 300,
                          height: 40, // Altura fija para el TextField
                          child: TextField(
                            controller: _controller,
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
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
