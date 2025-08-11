import 'package:flutter/material.dart';

class offersCard extends StatelessWidget {
  final String offerImg;
  final String offerTitle;
  final String description;
  final String buttonText;
  const offersCard({
    super.key,
    required this.buttonText,
    required this.offerTitle,
    required this.description,
    required this.offerImg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          SizedBox(
            height: 124,
            width: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8.0),
              ),
              child: Image.asset(offerImg, fit: BoxFit.cover),
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    offerTitle,
                    style: TextStyle(
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 28, 28, 34),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Suwannaphum',
                      fontSize: 12,
                      color: Color.fromARGB(255, 28, 28, 34),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 237, 106, 90),
              ),
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Color.fromARGB(255, 28, 28, 34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
