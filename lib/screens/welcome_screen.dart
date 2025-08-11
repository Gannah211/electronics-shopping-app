import 'package:flutter/material.dart';
import 'package:shopping_app/screens/sign_up_screen.dart';
import '../screens/signin_screen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 241, 187, 0.562),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.3,
        backgroundColor: Color.fromRGBO(244, 241, 187, 1),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Row(
              children: [
                SizedBox(width: 25),

                Text(
                  "Shopping center",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Suwannaphum',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 70),
                Text(
                  'Your Premium Shopping Experience',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(190, 28, 28, 34),
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  child: Image.network(
                    "https://images.pexels.com/photos/5076511/pexels-photo-5076511.jpeg",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.44,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Image.asset(
                    'assets/images/offlinepicture.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.44,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.17),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 28, 28, 34),
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 28, 28, 34),
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.bold,
                    ),
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
