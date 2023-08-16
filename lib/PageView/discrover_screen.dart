import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:podcastapp/PageView/search_screen.dart';

import 'package:podcastapp/custom/image_widget.dart';
import 'package:podcastapp/custom/text_field.dart';
import 'package:podcastapp/dummydata/dummydata.dart';
import 'package:podcastapp/models/podcast_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/appBar.dart';
import '../custom/customAppBar.dart';
import '../custom/custom_listtile.dart';

class DicoverPage extends StatefulWidget {
  DicoverPage({super.key});

  @override
  State<DicoverPage> createState() => _DicoverPageState();
}

class _DicoverPageState extends State<DicoverPage> {
  @override
  Widget build(BuildContext context) {
    print(DummyData.list);
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {},
          leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          trailing: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset("assets/svg/recenticon.svg")),
          hideDivider: true,
          title: Text(
            "Discover",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              hintText: "search",
              alternatePrefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              ontap: () {
                Get.to(() => SearchScreen());
              },
            ).py(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular And Trending Author",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )
              ],
            ).py(10),
            SizedBox(
              width: double.infinity,
              height: Get.height * 1 / 9,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ImageCard();
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "More Listened Broadcast",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )
              ],
            ).py(12),
            SizedBox(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: DummyData.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: ListTileWidget(
                          index: index,
                          subTile: "Plant Money",
                          title: "${DummyData.list[index].title}",
                          time: " 47:55 mins",
                          url: "${DummyData.list[index].coverImageUrl}",
                        ));
                  }),
            )
          ],
        ).px(24),
      ),
    );
  }
}
////  changes

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageWidget(
      height: Get.height * 0.9,
      width: Get.width * 0.26,
      imageUrl:
          "https://media.istockphoto.com/id/1465571269/photo/empty-podcast-studio.jpg?s=2048x2048&w=is&k=20&c=qaVN4jqMzYeNR4XNSusjjO6JmJnUNyz48xhpRP4PSZc=",
    ).pOnly(right: 5);
  }
}
