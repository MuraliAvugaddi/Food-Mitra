import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodsWidget extends StatefulWidget {
  const PopularFoodsWidget({super.key});

  @override
  State<PopularFoodsWidget> createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Color(0xffFAFAFA),
      child: const PopularFoodIteams(),
    );
  }
}

class PopularFoodsTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String price;
  final String slug;

  PopularFoodsTiles({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.1),
                    spreadRadius: -3,
                    blurRadius: 0.3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Card(
                color: Colors.white,
                elevation: 0, // Remove the default elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.only(right: 6, top: 6),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xfffae3e8),
                                      blurRadius: 25,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                              child: Image.asset(
                                'assets/images/' + imageUrl + '.png',
                                height: 140,
                                width: 130,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.only(left: 6, top: 6),
                            child: Text(
                              name,
                              style: const TextStyle(
                                color: Color(0xff6e6e71),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(right: 6, top: 6),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 25,
                                    color: Color(0xfffae3e2),
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.near_me,
                                color: Colors.redAccent,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding:
                            const EdgeInsets.only(left: 6, top: 6, right: 6),
                        child: Text(
                          " ₹ ${price}",
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFoodIteams extends StatelessWidget {
  const PopularFoodIteams({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PopularFoodsTiles(
          name: "Kadhai Chicken",
          imageUrl: 'ic_popular_food_4',
          rating: '4.9',
          price: '159',
          slug: '',
        ),
        PopularFoodsTiles(
          name: "Veggie Black",
          imageUrl: "ic_popular_food_5",
          rating: '4.2',
          price: '199',
          slug: '',
        ),
        PopularFoodsTiles(
          name: "Veggie Black",
          imageUrl: "ic_popular_food_1",
          rating: '4.8',
          price: '179',
          slug: '',
        ),
        PopularFoodsTiles(
          name: "Chicken Dum",
          imageUrl: 'ic_popular_food_3',
          rating: '4.2',
          price: '200',
          slug: '',
        ),
      ],
    );
  }
}
