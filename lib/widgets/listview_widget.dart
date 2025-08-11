import 'package:flutter/material.dart';
import '../widgets/offer_card_widget.dart';

class listViewWidget extends StatefulWidget {
  const listViewWidget({super.key});

  @override
  State<listViewWidget> createState() => _listViewWidgetState();
}

class _listViewWidgetState extends State<listViewWidget> {
  var offers = [
    {
      'offerImg': 'assets/images/electronics_offer.jpg',
      'offerTitle': '50% Off Electronics',
      'description': 'Limited time offer on all tech gadgets',
      'buttonText': '50% OFF',
    },
    {
      'offerImg': 'assets/images/free_shipping_offer.jpg',
      'offerTitle': 'Free Shipping Weekend',
      'description': 'No delivery charges on orders above \$50',
      'buttonText': 'FREE SHIP',
    },
    {
      'offerImg': 'assets/images/buy2_get1_free_offer.jpg',
      'offerTitle': 'Buy 2 Get 1 Free',
      'description': 'Limited time offer on all tech gadgets',
      'buttonText': '50% OFF',
    },
    {
      'offerImg': 'assets/images/student_dicount_offer.jpg',
      'offerTitle': 'Student Discount',
      'description': 'Extra 20% off with valid student ID',
      'buttonText': '20% OFF',
    },
    {
      'offerImg': 'assets/images/bundel_offer.jpg',
      'offerTitle': 'Bundle Deals',
      'description': 'Save more when you buy complete setups',
      'buttonText': 'BUNDLE',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          "Hot Offers 🔥",
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Color.fromARGB(255, 28, 28, 34),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: offers.length,
            itemBuilder: (BuildContext context, int index) {
              final offer = offers[index];
              return offersCard(
                offerImg: offer['offerImg']!,
                offerTitle: offer['offerTitle']!,
                description: offer['description']!,
                buttonText: offer['buttonText']!,
              );
            },
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
