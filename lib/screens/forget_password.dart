import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastapp/custom/button_bar.dart';
import 'package:podcastapp/custom/contact_option_section.dart';
import 'package:podcastapp/screens/Otp_screen.dart';
import 'package:podcastapp/screens/login.dart';
import 'package:podcastapp/screens/new_password_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/appBar.dart';
import '../custom/button.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  RxBool Select_sms = false.obs;

  RxBool Select_email = false.obs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(leadingOntape: (){},
        hideDivider: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        leading: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) =>
                    login()), // Replace NextScreen with your actual screen
          );
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/images/forgotpassword.png',
                  width: 276,
                  height: 250,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Select which contact details should we use to reset your password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ).px(20),
              SizedBox(
                height: 24,
              ),
              Obx(() => GestureDetector(
                  onTap: () {
                    Select_sms.value = !Select_sms.value;
                    Select_email.value = false;
                  },
                  child: ContactOptionSection(
                      images: Image.asset("assets/images/smsicon.png"),
                      label: " via SMS",
                      hintText: "+111***99",
                      selected: Select_sms.value))),
              SizedBox(
                height: 24,
              ),
              Obx(() => GestureDetector(
                  onTap: () {
                    Select_sms.value = false;
                    Select_email.value = !Select_email.value;
                  },
                  child: ContactOptionSection(
                      images: Image.asset("assets/images/smsicon.png"),
                      label: " via Email",
                      hintText: "and***ley@yourdomain",
                      selected: Select_email.value))),
              SizedBox(
                height: 26,
              ),
              Button(
                width: size.width * 0.3,
                height: 60,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) =>
                            NewPassword()), // Replace NextScreen with your actual screen
                  );
                },
                text: "Continue",
                color: Color(0xff9610FF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
