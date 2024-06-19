import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BugerSelctedWidgets extends StatelessWidget {
  const BugerSelctedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BurgerItmes(),
    );
  }
}

class BurgerAddEditItms extends StatelessWidget {
  final String imageUrl;
  final String name;
  String placeimageUrl;
  final String place;

  String timeimageUrl;
  final String time;
  String pricetimeUrl;
  final String price;
  final String rating;
  final String aboutProduct;
  final String imageUrl1;
  final String name1;
  final String imageUrl2;
  final String name2;
  final String imageUrl3;
  final String name3;
  String reviews;
  BurgerAddEditItms({
    required this.imageUrl,
    required this.name,
    required this.placeimageUrl,
    required this.place,
    required this.timeimageUrl,
    required this.time,
    required this.pricetimeUrl,
    required this.price,
    required this.rating,
    required this.aboutProduct,
    required this.imageUrl1,
    required this.name1,
    required this.imageUrl2,
    required this.name2,
    required this.imageUrl3,
    required this.name3,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // image container
        Container(
          height: 350,
          width: double.infinity,
          color: Colors.black,
          child: Image.asset(
            "assets/images/" + imageUrl + ".jpeg",
            fit: BoxFit.cover,
          ),
        ),
        // arrow back icon
        Positioned(
            top: 6,
            left: 6,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ))),
        // favorite icon
        Positioned(
          top: 16,
          right: 16,
          child: Icon(
            Icons.favorite_border,
            size: 30,
            color: Colors.white,
          ),
        ),
        // About food container

        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            // placeimageUrl
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 44, right: 20, top: 20),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffC9CAFF).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/" + placeimageUrl + ".webp",
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Text of the place
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            place,
                            style: GoogleFonts.roboto(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            // TimeimageUrl
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 20, top: 20),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xff956ADA).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/" + timeimageUrl + ".webp",
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Text of the Time
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            time,
                            style: GoogleFonts.roboto(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            // PriceimageUrl
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 16, top: 20),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffE2AE28).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/" + pricetimeUrl + ".webp",
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        //  text of the price
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 20),
                          child: Text(
                            "₹ ${price} /-",
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
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Expanded(
                    child: Divider(
                      color: Color(0xff616475).withOpacity(0.1),
                      thickness: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name of the product
                      Text(
                        name,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 20,
                          wordSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          // star icon
                          Icon(
                            Icons.star,
                            color: Color(0xffFCCF5D),
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(rating,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14,
                              )),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "(${reviews})",
                            style: GoogleFonts.roboto(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Text(aboutProduct,
                            style: GoogleFonts.roboto(
                              color: Colors.grey[700],
                              fontSize: 16,
                              wordSpacing: 2,
                            )),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text("Extra Topping",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            wordSpacing: 1,
                          )),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  // imageUrl1
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF6F6F6),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 30),
                                      child: Image.asset(
                                        "assets/images/" + imageUrl1 + ".webp",
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                  // text of imagename1
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 36, left: 16, right: 20),
                                    child: Text(
                                      name1,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 16,
                                        wordSpacing: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 54, top: 54),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Color(0xff576066),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              spreadRadius: 1,
                                              offset: const Offset(0, 0),
                                              color: Color(0xff576066)
                                                  .withOpacity(0.4)),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          //chesis
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    // imageUrl1
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2, bottom: 30),
                                        child: Image.asset(
                                          "assets/images/" +
                                              imageUrl2 +
                                              ".webp",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    // text of imagename1
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 36, left: 1, right: 18),
                                      child: Text(
                                        name2,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 16,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 54, top: 54),
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          color: Color(0xff576066),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 2,
                                                spreadRadius: 1,
                                                offset: const Offset(0, 0),
                                                color: Color(0xff576066)
                                                    .withOpacity(0.4)),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: 24,
                          ),
                          //onion
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    // imageUrl1
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2, bottom: 30),
                                        child: Image.asset(
                                          "assets/images/" +
                                              imageUrl3 +
                                              ".webp",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                    // text of imagename1
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 36, left: 16, right: 20),
                                      child: Text(
                                        name3,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 16,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 54, top: 54),
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          color: Color(0xff576066),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 2,
                                                spreadRadius: 1,
                                                offset: const Offset(0, 0),
                                                color: Color(0xff576066)
                                                    .withOpacity(0.4)),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BurgerItmes extends StatelessWidget {
  const BurgerItmes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BurgerAddEditItms(
            imageUrl: "egg rice",
            name: "Egg chilli",
            placeimageUrl: "shop",
            place: "Visakhapatnam",
            timeimageUrl: "time2",
            time: "7am-10pm",
            pricetimeUrl: "price",
            price: "399",
            rating: "3.2",
            reviews: "1,250 reviews",
            aboutProduct:
                "Egg Chilli is a popular Indo-chinese appetizer made by tossing fried chicken in spicy hot chilli sauce",
            imageUrl1: "chilli",
            name1: "Chilli",
            imageUrl2: "chesse",
            name2: "Chesse",
            imageUrl3: "onion",
            name3: "Onion")
      ],
    );
  }
}
