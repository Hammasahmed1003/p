import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_play_btn.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Get.height * 1 / 7,
          width: Get.width * 1 / 3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage("assets/images/queueimage.png"),
                  fit: BoxFit.cover)),
        ).pOnly(right: 16),
        SizedBox(
          height: Get.height * 0.14,
          width: Get.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "938: Tom Wright  | Tom Wright ",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      // ).pOnly(bottom: 18),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Plant Money   |",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF616161)),
                  ),
                  Text(
                    "   47:55 mins",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF616161)),
                  ),
                ],
                // ).pOnly(bottom: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPlayBtn(
                    onTap: () {},
                    bgColor: Colors.white,
                    borderColor: Colors.purple,
                    borderWidth: 2,
                    height: 35,
                    icon: Icons.play_arrow,
                    iconColor: Colors.purple,
                    radius: 30,
                    txt: "Play",
                    txtColor: Colors.purple,
                    width: 100,
                  ),
                  SvgPicture.asset("assets/svg/tic.svg").px(10),
                  SvgPicture.asset("assets/svg/downloadedicon.svg").px(10),
                  SvgPicture.asset("assets/svg/more.svg").px(10),
                ],
              )
            ],
          ),
        )
      ],
    );
    // ).py(8);
  }
}
