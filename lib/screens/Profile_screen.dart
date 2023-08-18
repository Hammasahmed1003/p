import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/bottom_sheet.dart';
import 'package:podcastapp/custom/profile_sections.dart';
import 'package:podcastapp/screens/Payment_screen.dart';
import 'package:podcastapp/screens/Premium_screen.dart';
import 'package:podcastapp/screens/content_screen.dart';
import 'package:podcastapp/screens/downloads.dart';
import 'package:podcastapp/screens/edit_profile.dart';
import 'package:podcastapp/screens/notification.dart';
import 'package:podcastapp/screens/security.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/btn.dart';
import '../custom/button.dart';
import '../custom/customAppBar.dart';
import '../custom/springWidget.dart';
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
        physics: BouncingScrollPhysics(),
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
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "26",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ).px(65),
                  Text(
                    "26+",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ).px(35),
                  Text(
                    "26",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ).px(48),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Subscribers",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ).px(15),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "Listen Hours",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "Subscribed",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            PremiumScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff9610FF),
                      borderRadius: BorderRadius.circular(32)),
                  width: 360,
                  height: 161,
                  // child: Text(
                  //   "Enjoy All benefits",
                  // ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            EditProfileScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: ProfileSection(
                    prefixIcon: "assets/svg/person.svg",
                    title: "Edit Profile",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            NotificationScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: ProfileSection(
                    prefixIcon: "assets/svg/notification.svg",
                    title: "Notification",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            DownloadScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: ProfileSection(
                    ontap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                DownloadScreen()), // Replace NextScreen with your actual screen
                      );
                    },
                    prefixIcon: "assets/svg/save.svg",
                    title: "DownLoads",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            ContentScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: ProfileSection(
                    ontap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                ContentScreen()), // Replace NextScreen with your actual screen
                      );
                    },
                    prefixIcon: "assets/svg/content.svg",
                    title: "Content Setting",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            SecurityScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: ProfileSection(
                    ontap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                SecurityScreen()), // Replace NextScreen with your actual screen
                      );
                    },
                    prefixIcon: "assets/svg/security.svg",
                    title: "Security",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {},
                child: ProfileSection(
                    prefixIcon: "assets/svg/lang.svg",
                    title: "Language",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              ProfileSection(
                  prefixIcon: "assets/svg/dark.svg",
                  title: "Dark Mode",
                  showSwitchbtn: true,
                  backgroundcolor: Colors.black),
              SpringWidget(
                onTap: () {},
                child: ProfileSection(
                    prefixIcon: "assets/svg/help.svg",
                    title: "Help Center",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.black),
              ),
              SpringWidget(
                onTap: () {
                  ShowModalSheet(context);
                },
                child: ProfileSection(
                    prefixIcon: "assets/svg/logout.svg",
                    title: "Logout",
                    showSwitchbtn: false,
                    backgroundcolor: Colors.red),
              ),
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
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SmallRoundButton(

                    //   onTap: () {}, child: Text("Continue")),
                    RoundButton(
                      width: size.width * 0.3,
                      height: 60,
                      // disabled: true,
                      // loading: true,
                      // gradient: true,
                      textColor: Color(0xff9610FF),
                      backgroundColor: Color(0xffF5E7FF),
                      title: "Continue",
                      onTap: () {},
                    ),
                    // Button(
                    //   width: size.width * 0.4,
                    //   height: 60,
                    //   onPressed: () {
                    //     // Navigator.of(context).pushReplacement(
                    //     //   MaterialPageRoute(
                    //     //       builder: (context) =>
                    //     //           OtpScreen()), // Replace NextScreen with your actual screen
                    //     // );
                    //   },
                    //   text: "Continue",
                    //   color: Color(0xffF5E7FF),
                    // ),
                    // RoundButton(
                    //   // width: size.width * 0.4,
                    //   width: size.width * 0.3,

                    //   height: 60,
                    //   // disabled: true,
                    //   // loading: true,
                    //   // gradient: true,
                    //   textColor: Colors.white,
                    //   backgroundColor: Color(0xff9610FF),
                    //   title: "Yes, Logout",
                    //   onTap: () {},
                    // ),
                    Button(
                      width: size.width * 0.3,
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
