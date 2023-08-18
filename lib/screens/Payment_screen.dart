import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcastapp/custom/payment_section.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/btn.dart';
import '../custom/customAppBar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: CustomAppBar(
            leadingOntape: () {
              Navigator.pop(context);
            },

            // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
            trailing:
                GestureDetector(child: SvgPicture.asset("assets/svg/scan.svg")),
            hideDivider: true,
            title: Text(
              "Payment",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )),
        body: Column(
          children: [
            Text(
              "Select the payment method method you want to use",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ).p(20),
            PaymentMethodSelection().p(10),
            SizedBox(
              height: 20,
            ),
            RoundButton(
                width: size.width,
                textColor: Color(0xff9610FF),
                backgroundColor: Color(0xffF5E7FF),
                height: size.height / 14,
                title: "Add New Payment",
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (context) =>
                  //           MainPageView()), // Replace NextScreen with your actual screen
                  // );
                }),
            SizedBox(
              height: 190,
            ),
            RoundButton(
                width: size.width * 0.3,
                textColor: Colors.white,
                backgroundColor: Color(0xff9610FF),
                height: size.height / 14,
                title: "Continue",
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (context) =>
                  //           MainPageView()), // Replace NextScreen with your actual screen
                  // );
                }),
          ],
        ));
  }
}
