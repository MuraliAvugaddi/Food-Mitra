import 'package:flutter/material.dart';
import 'package:food_application/widgets/all_mixed_itmas_widget.dart';
import 'package:food_application/widgets/selected_widgets/mushroom_chicken_bugger_selected_wigdet.dart';
import 'package:google_fonts/google_fonts.dart';

class MushroomChickenBuggerSelected extends StatelessWidget {
  const MushroomChickenBuggerSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: ListView(
        children: [
          // buger_selcted_widgets.dart
          MushroomChickenBuggerSelectedWigdet(),
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
