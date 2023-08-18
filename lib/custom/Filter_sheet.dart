import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcastapp/custom/btn.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:velocity_x/velocity_x.dart';

import 'button.dart';

Future ShowModalFilterSheet(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => Container(
            // height: 1200,
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Text(
                      "Sort & Filter ",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ).py(22),
                    SizedBox(
                      child: Divider(
                        color: Colors.grey[333],
                        thickness: 0.7,
                      ),
                      width: size.width * 0.9,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sort",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ).px(20).py(10),
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SpringWidget(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.white
                            ),
                            width: size.width,
                            height: 50,
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Newest First",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ).px(20),
                        ),
                        SpringWidget(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.white
                            ),
                            width: size.width,
                            height: 50,
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Oldest First",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ).px(20),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " Filter ",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ).px(20).py(16),
                          ],
                        ),
                        SpringWidget(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.white
                            ),
                            width: size.width,
                            height: 50,
                            child: Row(
                              children: [
                                Icon(Icons.remove_red_eye_outlined),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Hide Complete Episodes",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ).px(20),
                        ),
                        SizedBox(
                          height: 11,
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
                              title: "Reset",
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
                              text: "Done",
                              color: Color(0xff9610FF),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ).py(20)),
          ));
}
