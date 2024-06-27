// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'SignIn.dart';
import 'package:flutter/material.dart';



class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                      color: Color(0xFF554971),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Explore tailored bursaries and get \n  professional guidance on your applications.\n Start achieving your dreams now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF554971),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: (){
                      showLogInDialog(context);//from aign in dart
                  }, child: Text("Get Started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF554971)
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                    backgroundColor: Color(0xFFB8F3FF),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                  ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
