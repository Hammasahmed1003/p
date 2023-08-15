import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastapp/screens/LetYouIn.dart';
import 'package:podcastapp/screens/On_boarding.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {
      // Navigate to the desired page here
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                OnboardingScreen()), // Replace NextScreen with your actual screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/miclogo.png'),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "WeTalk",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 48),
            )
          ],
        ),
      ),
    );
  }
}
