import 'package:flutter/material.dart';
import 'package:food_application/widgets/all_mixed_itmas_widget.dart';
import 'package:food_application/widgets/selected_widgets/buger_selcted_widgets.dart';
import 'package:food_application/widgets/selected_widgets/chicken_chilli_selected_widget.dart';

import 'package:food_application/widgets/selected_widgets/greekfeta_burger_seleted_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ChickenChilliSelectedPage extends StatelessWidget {
  const ChickenChilliSelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: ListView(
        children: [
          // buger_selcted_widgets.dart
         ChickenChilliSelectedWidget(),
         SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Recommended for you",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          AllMixedItmasWidget(),
        ],
      ),
    );
  }
}
