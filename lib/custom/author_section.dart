import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:podcastapp/screens/Episode.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_play_btn.dart';

class AuthorSection extends StatefulWidget {
  const AuthorSection({super.key, });

  @override
  State<AuthorSection> createState() => _AuthorSectionState();
}

class _AuthorSectionState extends State<AuthorSection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Text(
              "4 Hours ago |  56:43 mins",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
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
              child: SpringWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            EpisodesScreens()), // Replace NextScreen with your actual screen
                  );
                },
                child: Text(
                  "1,258: The Sunday Read: ‘Can Virtual Reality Help Ease Chronic Pain?’",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
                ),
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
                onTap: () {}, child: SvgPicture.asset("assets/svg/more.svg")),
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
    );
  }
}
