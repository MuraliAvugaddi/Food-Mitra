import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AllMixedItmasWidget extends StatelessWidget {
  const AllMixedItmasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BurgerItmes(),
    );
  }
}

class cards extends StatelessWidget {
  final String imageUrl;
  final String name;
  String quantity;
  String price;

  cards({
    required this.imageUrl,
    required this.name,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 253, 214, 213).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/" + imageUrl + ".png",
                  width: 110,
                  height: 100,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                name,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff3a3a3b),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "₹ ${price}",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 120, 120, 120),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        //////////
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove),
                            color: Colors.black,
                            iconSize: 18,
                          ),
                          Container(
                            width: 40,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xfffd2c2c),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Color(0xfffd2c2c),
                            iconSize: 18,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BurgerItmes extends StatelessWidget {
  const BurgerItmes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cards(
            imageUrl: "ic_popular_food_1",
            name: "Baked Omelette",
            quantity: "quantity",
            price: "299"),
        SizedBox(
          height: 10,
        ),
        cards(
            imageUrl: "ic_popular_food_4",
            name: "Garlic Chicken",
            quantity: "quantity",
            price: "159"),
        SizedBox(
          height: 10,
        ),
        cards(
            imageUrl: "ic_popular_food_5",
            name: "Caprese Salad",
            quantity: "quantity",
            price: "227"),
        SizedBox(
          height: 10,
        ),
        cards(
            imageUrl: "ic_popular_food_3",
            name: "Chicken Tikka",
            quantity: "quantity",
            price: "199"),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
