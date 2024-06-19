import 'package:flutter/material.dart';

import 'package:food_application/pages/All_restaurants_selected_page/burger_selected_page.dart';
import 'package:food_application/pages/All_restaurants_selected_page/chicken_chilli_selected_page.dart';
import 'package:food_application/pages/All_restaurants_selected_page/greekfeta_burger_seletes_page.dart';
import 'package:food_application/pages/All_restaurants_selected_page/mushroom_chicken_bugger_selected.dart';
import 'package:google_fonts/google_fonts.dart';

class Allrestaurantswidget extends StatelessWidget {
  const Allrestaurantswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ItmstotlList(),
    );
  }
}

class ItmstotlTiles extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String rating;
  final String distance;
  final String location;
  final String veg;
  final String price;
  final String description;
  final int index;
  final bool isSelected;
  final Function(int) onTap;

  ItmstotlTiles({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.distance,
    required this.location,
    required this.veg,
    required this.price,
    required this.description,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: isSelected
                          ? Border.all(color: Colors.redAccent, width: 1)
                          : null,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        "assets/images/" + imageUrl + ".jpeg",
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 202, left: 8, right: 8, bottom: 8),
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            spreadRadius: 5,
                            offset: const Offset(0, 0),
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 4,
                          top: 4,
                          left: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // name of food
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        name,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                          fontSize: 20,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  child: Container(
                                    height: 24,
                                    width: 46,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 2),
                                      child: Row(
                                        children: [
                                          Center(
                                            child: Text(
                                              rating,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),

                                          //   staricon

                                          const Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 32, left: 4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: Icon(
                                          Icons.location_on,
                                          color: Colors.grey[700],
                                          size: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        location,
                                        style: GoogleFonts.roboto(
                                          color: Colors.grey[700],
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 32,
                                  right: 4,
                                  child: Text(
                                    " ${distance} km",
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 58, left: 4),
                                  child: Row(
                                    children: [
                                      Icon(
                                        veg == "Veg"
                                            ? Icons.circle
                                            : Icons.circle,
                                        size: 14,
                                        color: veg == "Veg"
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        veg,
                                        style: GoogleFonts.roboto(
                                          color: Colors.grey[700],
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 58,
                                  right: 4,
                                  child: Text(
                                    "₹${price}",
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItmstotlList extends StatefulWidget {
  const ItmstotlList({super.key});

  @override
  _ItmstotlListState createState() => _ItmstotlListState();
}

class _ItmstotlListState extends State<ItmstotlList> {
  int _selectedIndex = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BurgerSelectedPage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MushroomChickenBuggerSelected()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GreekfetaBurgerSeletesPage()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChickenChilliSelectedPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ItmstotlTiles(
          imageUrl: "egg rice",
          name: "Egg Chilli",
          rating: "4.0",
          distance: "2.9",
          location: "Near raipur railway station",
          veg: "Non-veg",
          price: "399 for two",
          description: "A spicy chicken dish with rice.",
          index: 0,
          isSelected: _selectedIndex == 0,
          onTap: _onItemTapped,
        ),
        const SizedBox(
          height: 16,
        ),
        ItmstotlTiles(
          imageUrl: "download",
          name: "Mushroom Swiss Burger",
          rating: "3.9",
          distance: "26",
          location: "Pandri Raipur",
          veg: "Non-veg",
          price: "129",
          description: "A spicy chicken dish with rice.",
          index: 1,
          isSelected: _selectedIndex == 1,
          onTap: _onItemTapped,
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          height: 16,
        ),
        ItmstotlTiles(
          imageUrl: "BBQ Jackfruit Pulled Pork Burger & Tortilla Wraps (1)",
          name: "Greek Feta Burger",
          rating: "3.2",
          distance: "3.3",
          location: "Gadincho Raipur",
          veg: "Non-veg",
          price: "299",
          description: "A spicy chicken dish with rice.",
          index: 2,
          isSelected: _selectedIndex == 2,
          onTap: _onItemTapped,
        ),
        const SizedBox(
          height: 16,
        ),
        ItmstotlTiles(
          imageUrl: "Garlic Herb Naan",
          name: "Chicken Chilli",
          rating: "4.2",
          distance: "1.5",
          location: "Naya Raipur",
          veg: "Non-veg",
          price: "299",
          description: "A spicy chicken dish with rice.",
          index: 3,
          isSelected: _selectedIndex == 3,
          onTap: _onItemTapped,
        ),
      ],
    );
  }
}
