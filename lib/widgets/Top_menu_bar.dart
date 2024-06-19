import 'package:flutter/material.dart';

import 'package:food_application/pages/cake_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Menu Bars Example'),
        ),
        body: TopMenuBar(),
      ),
    );
  }
}

class TopMenuBar extends StatefulWidget {
  const TopMenuBar({super.key});

  @override
  _TopMenuBarState createState() => _TopMenuBarState();
}

class _TopMenuBarState extends State<TopMenuBar> {
  int _selectedIndex = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the appropriate page based on the index
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CakePage()),
      );
    } else if (index == 2) {}
    // Add more cases for other pages if needed
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopMenuBars(
            index: 0,
            isSelected: _selectedIndex == 0,
            onTap: _onItemTapped,
            name: "Burger",
            imageUrl: "buger",
            slug: "",
          ),
          TopMenuBars(
            index: 1,
            isSelected: _selectedIndex == 1,
            onTap: _onItemTapped,
            name: "Cake",
            imageUrl: "cake",
            slug: "",
          ),
          TopMenuBars(
            index: 2,
            isSelected: _selectedIndex == 2,
            onTap: _onItemTapped,
            name: "Pizza",
            imageUrl: "pizza",
            slug: "",
          ),
          TopMenuBars(
            index: 3,
            isSelected: _selectedIndex == 3,
            onTap: _onItemTapped,
            name: "Pasta",
            imageUrl: "pasta",
            slug: "",
          ),
          TopMenuBars(
            index: 4,
            isSelected: _selectedIndex == 4,
            onTap: _onItemTapped,
            name: "Soft Drinks",
            imageUrl: "driks",
            slug: "",
          ),
          TopMenuBars(
            index: 5,
            isSelected: _selectedIndex == 5,
            onTap: _onItemTapped,
            name: "Sushi",
            imageUrl: "sushi",
            slug: "",
          ),
        ],
      ),
    );
  }
}

class TopMenuBars extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function(int) onTap;
  final String name;
  final String imageUrl;
  final String slug;

  TopMenuBars({
    required this.index,
    required this.isSelected,
    required this.onTap,
    required this.name,
    required this.imageUrl,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(index),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 235, 216, 215),
                    blurRadius: 25,
                    offset: Offset(8.0, 8.75),
                  ),
                ],
              ),
              child: Card(
                color: isSelected ? Colors.red : Colors.white,
                elevation: 0, // Remove the default elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Image.asset(
                      "assets/images/" + imageUrl + ".webp",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6e6e71),
              ),
            ),
          )
        ],
      ),
    );
  }
}
