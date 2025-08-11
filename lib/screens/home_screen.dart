import 'package:flutter/material.dart';
import '../widgets/pageview_widget.dart';
import '../widgets/gridview_widget.dart';
import '../widgets/listview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 241, 187, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 92, 164, 169),
        title: Text(
          "Our Products",
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromARGB(255, 28, 28, 34),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [pageViewElement(), gridViewWidget(), listViewWidget()],
        ),
      ),
    );
  }
}
