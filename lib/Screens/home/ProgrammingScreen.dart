import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learnswift/Screens/catSelectorScreen.dart';
import 'package:learnswift/data/Constant/constant.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModel.dart';
import 'package:learnswift/data/LanguajeModel/languajeMainModelListES.dart';

class ProgrammingScreen extends StatefulWidget {
  const ProgrammingScreen({Key? key}) : super(key: key);

  @override
  State<ProgrammingScreen> createState() => _ProgrammingScreenState();
}

class _ProgrammingScreenState extends State<ProgrammingScreen> {
  int _selectedIndex = 0; // Para rastrear la pestaña activa
  final PageController _pageController = PageController(); // Controla el PageView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f2),
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF02569B), Color(0xFFFFFFFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'CodeCrafters',
          style: TextStyle(
            fontFamily: 'InconsolataBold',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          _buildPage(
            context,
            "Languages",
            programmingItemsES.where((item) => item.id <= 11).toList(),
          ),
          _buildPage(
            context,
            "Frameworks",
            programmingItemsES.where((item) => item.id > 11).toList(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            gap: 8,
            color: Colors.grey[800],
            activeColor: Colors.orange,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabBackgroundColor: Colors.orange.withOpacity(0.1),
            tabs: [
              GButton(
                icon: Icons.code,
                text: Constant.languaje == "es" ? "Lenguajes" : "Languages",
              ),
              GButton(
                icon: Icons.layers,
                text: Constant.languaje == "es" ? "Frameworks" : "Frameworks",
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
              _pageController.jumpToPage(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, String title, List<ProgrammingItem> items) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'InconsolataBold',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            itemBuilder: (context, index) {
              final course = items[index];
              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(
                    course.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: course.color1,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: course.color1,
                    child: Text(
                      course.id.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  trailing: Icon(
                    course.isActive ? Icons.play_arrow : Icons.lock,
                    color: course.isActive ? Colors.green : Colors.grey,
                  ),
                  onTap: () {
                    if (course.isActive) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatSelectorScreen(
                            title: course.name,
                            color1: course.color1,
                            color2: course.color2,
                            description: course.description,
                          ),
                        ),
                      );
                    } else {
                      _showDialog(context);
                    }
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Feature Locked"),
          content: const Text("This feature is currently unavailable."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
