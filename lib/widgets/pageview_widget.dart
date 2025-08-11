import 'package:flutter/material.dart';

class pageViewElement extends StatefulWidget {
  const pageViewElement({super.key});

  @override
  State<pageViewElement> createState() => _pageViewElementState();
}

class _pageViewElementState extends State<pageViewElement> {
  final List<String> _images = [
    'assets/images/slide_laptop.jpg',
    'assets/images/slide_keyboard.jpg',
    'assets/images/slide_headphone.jpg',
  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          "Featured Products",
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Color.fromARGB(255, 28, 28, 34),
          ),
        ),
        SizedBox(
          height: 250,
          // width: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              itemCount: _images.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(width: 2.0, color: Colors.transparent),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(_images[index], fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Container(
          width: 20,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPageIndex == i
                ? Color.fromARGB(255, 237, 106, 90)
                : Colors.grey,
          ),
        ),
      );
    }

    return indicators;
  }
}
