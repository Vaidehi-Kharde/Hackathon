import 'package:eventease/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginIdController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/EventEase.png'),
                    backgroundColor: Colors.black,
                    radius: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1, vertical: height*0.01),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: loginIdController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Login ID',
                    hintText: 'Enter your login ID',
                    labelStyle: TextStyle(
                      color: Colors.white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff009697),
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1, vertical: height*0.01),
                child: TextField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    controller: passwordController,
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff009697),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String loginId = loginIdController.text;
                  String password = passwordController.text;
                  if (loginId == "BT22CSE037" && password == "bt22cse037")
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>HomeScreen()),
                    );
                  }
                  print('Login ID: $loginId');
                  print('Password: $password');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff009697),
                ),
                child: Text('Login', style: TextStyle( color: Colors.white), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
