import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/customAppBar.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:podcastapp/screens/Payment_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        hideDivider: true,
        title: Text(""),
        leadingOntape: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Center(
                child: Text(
                  "Subscribe to Premium",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9610FF)),
                ),
              ).py(20),
              Text(
                "Enjoy listening podcast with better audio quality, without restrictions, and without ads.",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ).px(25),
              SpringWidget(
                onTap: () {},
                child: SpringWidget(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              PaymentScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff9610FF),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.white,
                          ),
                          height: size.height / 3,
                          width: size.width / 1.2,
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/svg/crown.svg"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "  \$  9.99",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text("/ Month"),
                                ],
                              ).py(11),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_rounded,
                                    color: Color(0xff9610FF),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("Listening with better audio quality"),
                                ],
                              ).px(20),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_rounded,
                                    color: Color(0xff9610FF),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("Listening without restrictions & ads"),
                                ],
                              ).px(20).py(10),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_rounded,
                                    color: Color(0xff9610FF),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("Early access & bonus episodes"),
                                ],
                              ).px(20)
                            ],
                          ).py(10))
                      .py(10),
                ),
              ),
              SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            PaymentScreen()), // Replace NextScreen with your actual screen
                  );
                },
                child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff9610FF),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white,
                        ),
                        height: size.height / 3,
                        width: size.width / 1.2,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/svg/crown.svg"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "  \$  9.99",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text("/ Month"),
                              ],
                            ).py(11),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_rounded,
                                  color: Color(0xff9610FF),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text("Listening with better audio quality"),
                              ],
                            ).px(20),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_rounded,
                                  color: Color(0xff9610FF),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text("Listening without restrictions & ads"),
                              ],
                            ).px(20).py(10),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_rounded,
                                  color: Color(0xff9610FF),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text("Early access & bonus episodes"),
                              ],
                            ).px(20)
                          ],
                        ).py(10))
                    .py(10),
              )
            ]),
      ),
    );
  }
}
