import 'package:flutter/material.dart';

const List<TrendingProduct> trendingProducts = [
  TrendingProduct(
      name: 'Bread Loaves Family Package',
      image: 'paper_bag.png',
      price: 'GHS 58.00'),
  TrendingProduct(
      name: 'Vegetarian Combo Basket',
      image: 'food_stuff.png',
      price: 'GHS 104.00'),
  TrendingProduct(
      name: 'Nutrient Filled Veggies Pack',
      image: 'orange_paper.png',
      price: 'GHS 71.00'),
  TrendingProduct(
    name: 'Juicy Grape Piece',
    image: 'grapes.png',
    price: 'GHS 9.00',
  ),
  TrendingProduct(
      name: 'Bread Loaves Family Package',
      image: 'paper_bag.png',
      price: 'GHS 58.00'),
  TrendingProduct(
      name: 'Vegetarian Combo Basket',
      image: 'food_stuff.png',
      price: 'GHS 104.00'),
  TrendingProduct(
      name: 'Nutrient Filled Veggies Pack',
      image: 'orange_paper.png',
      price: 'GHS 71.00'),
  TrendingProduct(
    name: 'Juicy Grape Piece',
    image: 'grapes.png',
    price: 'GHS 9.00',
  ),
];

class TrendingProduct extends StatelessWidget {
  final String? name;
  final String? image;
  final String? price;

  const TrendingProduct({
    @required this.name,
    @required this.image,
    @required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.grey),
        ),
        height: 75.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Image.asset(
                'assets/images/$image',
                height: 40.0,
                width: 60.0,
              ),
            ),
            const SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$name'),
                const SizedBox(height: 15.0),
                Text(
                  '$price',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
