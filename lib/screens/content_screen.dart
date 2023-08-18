import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/customAppBar.dart';
import 'MainPageView.dart';
import 'Profile_screen.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({super.key});
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {
            Navigator.pop(context);
          },
          // trailing: GestureDetector(
          //     onTap: () {}, child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Content Setting",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filter Mature Content",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
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
              "AutoPlay",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
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
              "Automatically Clear Cache",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
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
      ]),
    );
  }
}
