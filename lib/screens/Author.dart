import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:podcastapp/custom/queue_section.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:podcastapp/screens/Episode.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/Filter_sheet.dart';
import '../custom/author_section.dart';
import '../custom/btn.dart';
import '../custom/button.dart';
import '../custom/customAppBar.dart';
import '../custom/custom_play_btn.dart';
import 'history_screen.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {},
          // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          trailing: GestureDetector(
              // onTap: () {
              //   Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             HistoryScreen()), // Replace NextScreen with your actual screen
              //   );
              // },
              child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Author",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 100, width: 100,
                      // height: Get.height * 1 / 6.8,
                      // width: Get.width * 0.33,
                      height: Get.height * 0.13,
                      width: Get.width * 0.28,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/authorimage.png"),
                              fit: BoxFit.cover)),
                    ).pOnly(right: 16),
                    Container(
                        height: Get.height * 0.13,
                        width: Get.width * 0.6,
                        child: Row(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 170,
                                    child: Text("The Breakfast Club",
                                        maxLines: 1,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp,
                                        )
                                        // ).pOnly(bottom: 18),
                                        ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "1,285 Podcast",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: Color(0xFF616161)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomPlayBtn(
                                        onTap: () {},
                                        bgColor: Color(0xff9610FF),
                                        borderColor: Color(0xff9610FF),
                                        borderWidth: 0,
                                        height: 30,
                                        icon: Icons.add,
                                        iconColor: Colors.white,
                                        radius: 20,
                                        txt: "Subscribe",
                                        txtColor: Colors.white,
                                        width: 90,
                                      ),
                                      SpringWidget(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                                "assets/svg/world.svg")
                                            .px(20),
                                      ),
                                      SpringWidget(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                                "assets/svg/share.svg")
                                            .px(10),
                                      ),
                                    ],
                                  )
                                ]),
                          ],
                        )),
                  ]),
            ),
            SizedBox(height: 24),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, view more..."),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1,258 Episodes",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                SpringWidget(
                  onTap: () {
                    ShowModalFilterSheet(context);
                  },
                  child: SvgPicture.asset("assets/svg/filter.svg").px(10),
                ),
              ],
            ),
            SizedBox(
              child: Divider(
                color: Colors.grey[333],
                thickness: 0.7,
              ),
              width: size.width * 0.9,
            ).py(24),
            Column(
              children: [
                AuthorSection(),
                AuthorSection(),
                AuthorSection(),
                AuthorSection(),
                AuthorSection(),
                AuthorSection()
              ],
            )
          ],
        ).px(15).py(30),
      ),
    );
  }
}
