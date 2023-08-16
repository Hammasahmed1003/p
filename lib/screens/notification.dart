import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/customAppBar.dart';
import '../custom/notification_section.dart';
import 'MainPageView.dart';
import 'Profile_screen.dart';
import 'edit_profile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>
                      MainPageView()), // Replace NextScreen with your actual screen
            );
          },
          // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          // trailing: GestureDetector(
          //     child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Notification",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 10),
              child: Text(
                "Your Subscriptions",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
            NotificationSection(),
          ],
        ).py(10).px(15),
      ),
    );
  }
}
