import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcastapp/custom/customAppBar.dart';
import 'package:podcastapp/screens/forget_password.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/button.dart';
import 'Profile_screen.dart';

class SecurityScreen extends StatelessWidget {
  SecurityScreen({super.key});
  bool select = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>
                      ProfileScreen()), // Replace NextScreen with your actual screen
            );
          },
          // trailing: GestureDetector(
          //     onTap: () {}, child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Security",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ).px(20),
                Switch.adaptive(
                  inactiveTrackColor: Colors.grey[100],
                  activeTrackColor: Color(0xff9610FF),
                  activeColor: Colors.white,
                  value: select,
                  onChanged: (value) {
                    // This is called when the user toggles the switch.
                    select:
                    true;
                  },
                ),
              ],
            ).p(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Face ID",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ).px(20),
                Switch.adaptive(
                  inactiveTrackColor: Colors.grey[100],
                  activeTrackColor: Color(0xff9610FF),
                  activeColor: Colors.white,
                  value: select,
                  onChanged: (value) {
                    // This is called when the user toggles the switch.
                    select:
                    true;
                  },
                ),
              ],
            ).p(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bio-Metric ID",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ).px(20),
                Switch.adaptive(
                  inactiveTrackColor: Colors.grey[100],
                  activeTrackColor: Color(0xff9610FF),
                  activeColor: Colors.white,
                  value: select,
                  onChanged: (value) {
                    // This is called when the user toggles the switch.
                    select:
                    true;
                  },
                ),
              ],
            ).p(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Google Authenticator",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ).px(20),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 19,
                  color: Colors.purple,
                ).px(20).py(20)
              ],
            ).p(1),
            Button(
              // txtColor: Colors.black26,
              color: Color(0xffF5E7FF),
              width: size.width * 0.9,
              height: 60,
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           signup()), // Replace NextScreen with your actual screen
                // );
              },
              text: "Change Pin",
              // : Color(0xffF5E7FF),
            ),
            SizedBox(
              height: 11,
            ),
            Button(
              // txtColor: Colors.black26,
              color: Color(0xffF5E7FF),
              width: size.width * 0.9,
              height: 60,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) =>
                          ForgetPassword()), // Replace NextScreen with your actual screen
                );
              },
              text: "Change Password",
              // : Color(0xffF5E7FF),
            ),
          ],
        ),
      ),
    );
  }
}
