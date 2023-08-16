import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class SubsSection extends StatelessWidget {
  const SubsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
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
                        image: AssetImage("assets/images/Tedtalks.png"),
                        fit: BoxFit.cover)),
              ).pOnly(right: 16),
              Container(
                  height: Get.height * 0.10,
                  width: Get.width * 0.4,
                  child: Row(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ted Talks Daily",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                )
                                // ).pOnly(bottom: 18),
                                ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "789 Podcasts",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Color(0xFF616161)),
                            ),
                          ]),
                    ],
                  )),
            ]),
      ),
    );
    ;
  }
}
