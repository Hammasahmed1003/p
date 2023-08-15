import 'package:flutter/material.dart';
import 'package:podcastapp/custom/otp_box.dart';
import 'package:podcastapp/screens/forget_password.dart';

import '../custom/appBar.dart';
import '../custom/button.dart';
import '../custom/button_bar.dart';
import 'MainPageView.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
         leadingOntape: () {},
        hideDivider: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        leading: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) =>
                    ForgetPassword()), // Replace NextScreen with your actual screen
          );
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Text(
                  "Code has been send to +1234**89",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpBox(),
                    OtpBox(),
                    OtpBox(),
                    OtpBox(),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Resend Code in 55s",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 260,
                ),
                Button(
                  width: size.width * 0.3,
                  height: 60,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              MainPageView()), // Replace NextScreen with your actual screen
                    );
                  },
                  text: "verify",
                  color: Color(0xff9610FF),
                ),
                // button_bar(width: size.width * 0.3, title: "Continue")
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: button_bar(width: size.width * 0.1, title: "verify"),
    );
  }
}
