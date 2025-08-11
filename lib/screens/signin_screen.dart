import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(244, 241, 187, 1),
        toolbarHeight: MediaQuery.of(context).size.height * 0.035,
      ),
      backgroundColor: Color.fromRGBO(244, 241, 187, 1),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: Container(
                  width: 340,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 155, 193, 188),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontFamily: 'Suwannaphum',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Sign in to ShopCraft",
                          style: TextStyle(fontFamily: 'Suwannaphum'),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Suwannaphum',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(190, 28, 28, 34),
                                  ),
                                  focusColor: Color.fromARGB(255, 237, 106, 90),
                                ),

                                validator: (value1) {
                                  if (value1 != null && value1.contains('@')) {
                                    return null;
                                  }
                                  return 'please enter vaild email';
                                },
                              ),
                            ),

                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Suwannaphum',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(190, 28, 28, 34),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != null && value.length >= 6) {
                                    return null;
                                  }
                                  return 'please enter correct password';
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Welcome Back again!',
                                    style: TextStyle(
                                      fontFamily: 'Suwannaphum',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: Text(
                                    'Account sign-in successfully.',
                                    style: TextStyle(
                                      fontFamily: 'Suwannaphum',
                                      fontSize: 17,
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('close'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color.fromARGB(190, 28, 28, 34),
                            fontFamily: 'Suwannaphum',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
