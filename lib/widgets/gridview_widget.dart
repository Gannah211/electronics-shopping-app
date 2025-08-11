import 'package:flutter/material.dart';
import '../widgets/shopping_card_widget.dart';

class gridViewWidget extends StatefulWidget {
  const gridViewWidget({super.key});

  @override
  State<gridViewWidget> createState() => _gridViewWidgetState();
}

class _gridViewWidgetState extends State<gridViewWidget> {
  List<Map<String, String>> products = [
    {
      'Title': 'MacBook Pro 16',
      'img': 'assets/images/macbook pro16.jpg',
      'price': '\$2.399',
    },
    {
      'Title': 'Wireless Headphones',
      'img': 'assets/images/headphones.jpg',
      'price': '\$299',
    },
    {
      'Title': 'Smart Watch',
      'img': 'assets/images/smartWatch.jpg',
      'price': '\$399',
    },
    {
      'Title': 'Premium Keyboard',
      'img': 'assets/images/keyboard.jpg',
      'price': '\$129',
    },
    {'Title': 'Mouse', 'img': 'assets/images/mouse.jpg', 'price': '\$199'},
    {'Title': 'Speakers', 'img': 'assets/images/speakers.jpg', 'price': '\$79'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          "Shop Our Collection",
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Color.fromARGB(255, 28, 28, 34),
          ),
        ),
        SizedBox(height: 10),

        GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: products
              .map(
                (product) => shoppingCard(
                  title: product['Title']!,
                  ImageFromAssets: product['img']!,
                  price: product['price'] ?? "\$0.0",
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
