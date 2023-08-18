import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:podcastapp/custom/custom_play_btn.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/author_section.dart';
import '../custom/customAppBar.dart';
import '../custom/springWidget.dart';

class EpisodesScreens extends StatelessWidget {
  const EpisodesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: CustomAppBar(
            leadingOntape: () {
              Navigator.pop(context);
            },
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
              "Episode",
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
                                image: AssetImage(
                                    "assets/images/historyimage.png"),
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
                                        SpringWidget(
                                            onTap: () {},
                                            child: SvgPicture.asset(
                                                "assets/svg/world.svg")),
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
              ).py(22),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "4 Hours ago |  56:43 mins",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.9,
                        child: Text(
                          "1,258: The Sunday Read: ‘Can Virtual Reality Help Ease Chronic Pain?’",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomPlayBtn(
                        onTap: () {},
                        bgColor: Color(0xff9610FF),
                        borderColor: Color(0xff9610FF),
                        borderWidth: 0,
                        height: 30,
                        icon: Icons.play_arrow,
                        iconColor: Colors.white,
                        radius: 20,
                        txt: "Play",
                        txtColor: Colors.white,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SpringWidget(
                          onTap: () {},
                          child: SvgPicture.asset("assets/svg/comment.svg")),
                      SizedBox(
                        width: 30,
                      ),
                      SpringWidget(
                          onTap: () {},
                          child: SvgPicture.asset("assets/svg/arrowdown.svg")),
                      SizedBox(
                        width: 165,
                      ),
                      SpringWidget(
                          onTap: () {},
                          child: SvgPicture.asset("assets/svg/more.svg")),
                    ],
                  ),
                  SizedBox(
                    child: Divider(
                      color: Colors.grey[333],
                      thickness: 0.7,
                    ),
                    width: size.width * 0.9,
                  ).py(22),
                ],
              ),

              // AuthorSection(

              // ),
              // SizedBox(
              //   height: 12,
              // ),
              Container(
                child: Text(
                    "Steve Rambam (@stevenrambam) is the founder and CEO of Pallorium, Inc., a licensed Investigative Agency with offices and affiliates worldwide.What We Discuss with Steve Rambam:Prime bank guarantee fraud: what is it and how does it work?Why is the US a “Garden of Eden” for bad guys in general?How Steve's TV show Nowhere to Hide came to be.Why Steve's business doubled within two years following a bogus arrest.Are there scam lists, and are you on one?And much more...Full show notes and resources can be found here: exampledomain.com/685Like this show? Please leave us a review here --"),
              )
            ],
          ).p(15),
        ));
  }
}
