// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'SignUp.dart';

void showLogInDialog(BuildContext context) {
  bool isPasswordVisible = false;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Animate(
            effects: [FadeEffect(), ScaleEffect()],
            child: Dialog(
              backgroundColor: Color(0xFFB8F3FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xFF554971),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color:Color(0xFF554971),
                        ),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        ),
                        focusColor: Colors.white,
                        suffixIcon : Icon(Icons.email,
                        size: 20,
                        color: Color(0xFF554971),),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color:Color(0xFF554971),
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusColor: Colors.white,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon( isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                size: 20,
                                color: Color(0xFF554971),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          //todo
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color(0xFF554971),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        //todo
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xFFB8F3FF),
                          fontSize: 19,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        backgroundColor: Color(0xFF63768D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xFF554971),
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            showSignUpDialog(context);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 93, 60, 175),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}