import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/notification_section.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/customAppBar.dart';
import 'MainPageView.dart';
import 'Profile_screen.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  bool select = true;

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
          // trailing: GestureDetector(
          //     onTap: () {}, child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Downloads",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 24),
              child: Text(
                "Global Setting",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Auto Download New Episode",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Download only if Connected to Wi-Fi",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
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
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 19,
              ),
              subtitle: Text(
                "After 7 Day",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
              title: Text(
                "Remove completed Episodes",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 19,
              ),
              subtitle: Text(
                "After 30 Day",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
              title: Text(
                "Remove Unfinished Episodes",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 24),
              child: Text(
                "Your Subscriptions",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
            NotificationSection().p(10),
          ],
        ),
      ),
    );
  }
}
