import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:podcastapp/custom/button.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:podcastapp/screens/login.dart';
import 'package:podcastapp/screens/signup_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/appBar.dart';
import '../custom/btn.dart';
// import '../custom/button_bar.dart';

class LetYouIn extends StatelessWidget {
  const LetYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Appbar(
        leadingOntape: () {},
        hideDivider: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/letyouin.png',
                width: 237,
                height: 200,
              ),
              Text(
                "Let's You In",
                style: TextStyle(fontSize: 33.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SpringWidget(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffEEEEEE),
                        width: 1.0, // Set the border width
                      ),
                    ),
                    height: 60,
                    width: size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fblogo.png',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SpringWidget(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffEEEEEE),
                      width: 1.0, // Set the border width
                    ),
                  ),
                  height: 60,
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SpringWidget(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffEEEEEE),
                      width: 1.0, // Set the border width
                    ),
                  ),
                  height: 60,
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/applelogo.png',
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "or ",
                style:
                    TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),

              RoundButton(
                // disabled: true,
                // loading: true,
                // gradient: true,
                textColor: Colors.white,
                backgroundColor: Color(0xff9610FF),
                title: "Login",
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) =>
                            login()), // Replace NextScreen with your actual screen
                  );
                },
                height: 60,
                width: size.width * 1,
              ),

              //

              // Button(
              //   width: size.width * 0.9,
              //   height: 60,
              //   onPressed: () {
              //     Navigator.of(context).pushReplacement(
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               login()), // Replace NextScreen with your actual screen
              //     );
              //   },
              //   text: "Login",
              //   color: Color(0xff9610FF),
              // ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9E9E9E))),
                  SizedBox(
                    width: 6,
                  ),
                  SpringWidget(
                    onTap: () {},
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Color(0xff9610FF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 20,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
