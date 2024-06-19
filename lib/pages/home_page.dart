import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart'; // Import ionicons package
import 'package:food_application/widgets/All_restaurants_widget.dart';
import 'package:food_application/widgets/Top_menu_bar.dart';
import 'package:food_application/widgets/popular_foods_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              color: const Color(0xff3A3737),
              fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: const Color(0xff3A3737),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
              child: TextField(
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.black, // Default border color
                      width: 0.4,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.redAccent,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.redAccent,
                  ),
                  hintText: "What would you like to buy?",
                  hintStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xff616475).withOpacity(0.1),
                    thickness: 1,
                  ),
                ),
                Text(
                  "WHAT'S ON YOUR MIND?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff616475),
                      letterSpacing: 1,
                      wordSpacing: 3),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xff616475).withOpacity(0.1),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const TopMenuBar(),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 5, top: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top rated foods",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff3a3a3b),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            const PopularFoodsWidget(),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xff616475).withOpacity(0.1),
                    thickness: 1,
                  ),
                ),
                Text(
                  "ALL RESTAURANTS",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff616475),
                      letterSpacing: 1,
                      wordSpacing: 3),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xff616475).withOpacity(0.1),
                    thickness: 1,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Allrestaurantswidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline,color: Colors.redAccent,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.chatbox_ellipses_outline), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_add_outline), label: "Person"),
        ],
      ),
    );
  }
}
