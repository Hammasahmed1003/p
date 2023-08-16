import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/bottom_sheet.dart';
import 'package:podcastapp/custom/profile_sections.dart';
import 'package:podcastapp/screens/content_screen.dart';
import 'package:podcastapp/screens/downloads.dart';
import 'package:podcastapp/screens/edit_profile.dart';
import 'package:podcastapp/screens/notification.dart';
import 'package:podcastapp/screens/security.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/button.dart';
import '../custom/customAppBar.dart';
import 'BottomNavigation.dart';
import 'Otp_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          // leadingOntape: () {},

          trailing: GestureDetector(
              onTap: () {}, child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Profile",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 66,
                child: Image.asset("assets/images/profileimage.png"),
              ).py(33),
              Text(
                "Andrew Ainsley",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "Andrewainsley@yourdomain.com",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ).py(17),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "26",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "26+",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "26",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Subscribers",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Listen Hours",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Subscribed",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff9610FF),
                    borderRadius: BorderRadius.circular(32)),
                width: 360,
                height: 161,
                // child: Text(
                //   "Enjoy All benefits",
                // ),
              ),
              SizedBox(
                height: 15,
              ),
              ProfileSection(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              EditProfileScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  prefixIcon: "assets/svg/person.svg",
                  title: "Edit Profile",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              NotificationScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  prefixIcon: "assets/svg/notification.svg",
                  title: "Notification",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              DownloadScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  prefixIcon: "assets/svg/save.svg",
                  title: "DownLoads",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              ContentScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  prefixIcon: "assets/svg/content.svg",
                  title: "Content Setting",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              SecurityScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  prefixIcon: "assets/svg/security.svg",
                  title: "Security",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  prefixIcon: "assets/svg/lang.svg",
                  title: "Language",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  prefixIcon: "assets/svg/dark.svg",
                  title: "Dark Mode",
                  showSwitchbtn: true,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  prefixIcon: "assets/svg/help.svg",
                  title: "Help Center",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.black),
              ProfileSection(
                  ontap: () {
                    ShowModalSheet(context);
                  },
                  prefixIcon: "assets/svg/logout.svg",
                  title: "Logout",
                  showSwitchbtn: false,
                  backgroundcolor: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

Future ShowModalSheet(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => Container(
            height: 210,
            child: Column(
              children: [
                Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ).py(29),
                Text(
                  "Are You Sure you want to logout ?",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      width: size.width * 0.4,
                      height: 60,
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           OtpScreen()), // Replace NextScreen with your actual screen
                        // );
                      },
                      text: "Continue",
                      color: Color(0xffF5E7FF),
                    ),
                    Button(
                      width: size.width * 0.4,
                      height: 60,
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           OtpScreen()), // Replace NextScreen with your actual screen
                        // );
                      },
                      text: "Yes, Logout",
                      color: Color(0xff9610FF),
                    ),
                  ],
                )
              ],
            ),
          ));
}
