import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_play_btn.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
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
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/1465571269/photo/empty-podcast-studio.jpg?s=2048x2048&w=is&k=20&c=qaVN4jqMzYeNR4XNSusjjO6JmJnUNyz48xhpRP4PSZc="),
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
                    bgColor: Colors.purple,
                    borderColor: Colors.purple,
                    borderWidth: 0,
                    height: 30,
                    icon: Icons.play_arrow,
                    iconColor: Colors.white,
                    radius: 20,
                    txt: "play",
                    txtColor: Colors.white,
                    width: 70,
                  ),
                  SvgPicture.asset("assets/gifs/add.svg").px(10),
                  SvgPicture.asset("assets/gifs/arrowdown.svg").px(10),
                  SvgPicture.asset("assets/gifs/more.svg").px(10),
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
