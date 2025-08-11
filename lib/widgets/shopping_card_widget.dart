import 'package:flutter/material.dart';

class shoppingCard extends StatelessWidget {
  final String ImageFromAssets;
  final String title;
  final String price;
  const shoppingCard({
    super.key,
    required this.ImageFromAssets,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 124,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8.0),
                  ),
                  child: Image.asset(ImageFromAssets, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 8,
                right: 1,
                child: Container(
                  height: 30,
                  // padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 106, 90),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text("Item added to the cart"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Suwannaphum',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Suwannaphum',
                color: Color.fromARGB(255, 237, 106, 90),
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
