import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcastapp/custom/springWidget.dart';
// import 'package:podcastapp/custom/button_bar.dart';
import 'package:podcastapp/custom/text_field.dart';
import 'package:podcastapp/screens/LetYouIn.dart';
import 'package:podcastapp/screens/forget_password.dart';
import 'package:podcastapp/screens/new_password_screen.dart';
import 'package:podcastapp/screens/signup_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/appBar.dart';
import '../custom/btn.dart';
import '../custom/button.dart';
import 'BottomNavigation.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;

    void _toggleCheckbox(newValue) {
      setState(() {
        _isChecked = newValue;
      });
    }

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Appbar(
        leadingOntape: () {},
        leading: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) =>
                    LetYouIn()), // Replace NextScreen with your actual screen
          );
        },
        hideDivider: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Image.asset(
                'assets/images/miclogo.png',
                height: 100,
                width: 100,
              ),
              Text(
                "Login to Your Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 22,
              ),
              CustomTextField(
                hintText: "Email",
                defaultPrefixIcon: Image.asset(
                  'assets/images/emailicon.png',
                ),
                alternatePrefixIcon: Image.asset(
                  'assets/images/emalcolor.png',
                ),
              ).px(24),
              CustomTextField(
                obscureText: true,
                hintText: "Password",
                defaultSuffixIcon: Image.asset(
                  'assets/images/eyedisable.png',
                ),
                alternateSuffixIcon: Image.asset(
                  'assets/images/eyedisable.png',
                ),
                defaultPrefixIcon: Image.asset(
                  'assets/images/passwordicon.png',
                ),
                alternatePrefixIcon: Image.asset(
                  'assets/images/colorpasswordicon.png',
                ),
              ).px(24),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpringWidget(
                    onTap: () {},
                    child: Checkbox(
                      side: BorderSide(color: Color(0xff9610FF), width: 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      checkColor: Colors.purple[500],
                      value: _isChecked,
                      onChanged: _toggleCheckbox,
                    ),
                  ),
                  Text(
                    "Remember me",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  )
                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RoundButton(
                width: size.width * 1.9,
                height: 60,
                // disabled: true,
                // loading: true,
                // gradient: true,
                textColor: Colors.white,
                backgroundColor: Color(0xff9610FF),
                title: "Login",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            signup()), // Replace NextScreen with your actual screen
                  );
                },
              ),
              // Button(
              //   height: 60,
              //   width: size.width * 1.8,
              //   onPressed: () {
              //     Navigator.of(context).pushReplacement(
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               signup()), // Replace NextScreen with your actual screen
              //     );
              //   },
              //   text: "Login",
              //   color: Color(0xff9610FF),
              // ),
              // button_bar(width: size.width * 0.9, title: "Sign up"),
              SizedBox(
                height: 20,
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) =>
                            ForgetPassword()), // Replace NextScreen with your actual screen
                  );
                },
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(
                      color: Color(0xff9610FF),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Divider(
                      color: Colors.grey[333],
                      thickness: 0.7,
                    ),
                    width: size.width / 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.9), fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    child: Divider(
                      color: Colors.grey[333],
                      thickness: 0.7,
                    ),
                    width: size.width / 5,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpringWidget(
                    onTap: () {},
                    child: Container(
                      child: Image.asset('assets/images/fblogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 243, 243),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SpringWidget(
                    onTap: () {},
                    child: Container(
                      child: Image.asset('assets/images/googlelogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 243, 243),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SpringWidget(
                    onTap: () {},
                    child: Container(
                      child: Image.asset('assets/images/applelogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 243, 243),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9E9E9E))),
                  SizedBox(
                    width: 6,
                  ),
                  SpringWidget(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) =>
                                signup()), // Replace NextScreen with your actual screen
                      );
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Color(0xff9610FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
