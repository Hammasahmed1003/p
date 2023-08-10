import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:podcastapp/custom/button_bar.dart';
import 'package:podcastapp/custom/text_field.dart';
import 'package:podcastapp/screens/BottomNavigation.dart';
import 'package:podcastapp/screens/MainPageView.dart';
import 'package:podcastapp/screens/login.dart';

import '../custom/appBar.dart';

class signup extends StatefulWidget {
  const signup({super.key});
  static const routeName = "/signup";
  static void start(BuildContext context) {
    if (Platform.isIOS) {
      Navigator.of(context)
          .push(CupertinoPageRoute(builder: (ctx) => signup()));
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => signup()));
    }
  }

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;

    void _toggleCheckbox(newValue) {
      setState(() {
        _isChecked = newValue;
      });
    }

    final size = MediaQuery.of(context).size;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        appBar: CustomAppBar(
          leading: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>
                      login()), // Replace NextScreen with your actual screen
            );
          },
          hideDivider: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/miclogo.png',
                  height: 100,
                  width: 100,
                ),
                const Text(
                  "Create your Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hintText: "Email",
                  defaultPrefixIcon: Image.asset(
                    'assets/images/emailicon.png',
                  ),
                  alternatePrefixIcon: Image.asset(
                    'assets/images/emalcolor.png',
                  ),
                ),
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
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.purple,
                    //       width: 2.0,
                    //     ),
                    // borderRadius: BorderRadius.circular(8.0),
                    // ),
                    // padding: EdgeInsets.all(10.0),
                    // child:
                    Checkbox(
                      side: BorderSide(color: Color(0xff9610FF), width: 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      checkColor: Colors.purple[500],
                      value: _isChecked,
                      onChanged: _toggleCheckbox,
                    ),
                    const Text(
                      "Remember me",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    )
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                button_bar(
                  width: size.width * 0.9,
                  title: "Sign up",
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              MainPageView()), // Replace NextScreen with your actual screen
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Divider(
                        color: Theme.of(context).hintColor.withOpacity(0.3),
                        thickness: 0.7,
                      ),
                      width: size.width / 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(
                            color: Theme.of(context).hintColor, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      child: Divider(
                        color: Theme.of(context).hintColor.withOpacity(0.3),
                        thickness: 0.7,
                      ),
                      width: size.width / 5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset('assets/images/fblogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/googlelogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/images/applelogo.png'),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9E9E9E))),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            color: Color(0xff9610FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
