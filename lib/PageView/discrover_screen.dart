import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/customAppBar.dart';
import '../custom/custom_listtile.dart';

class DicoverPage extends StatelessWidget {
  const DicoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingOntape: () {},
        leadingIcon: SvgPicture.asset("assets/gifs/mike.svg"),
        title: const Text(
          "Discover",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Popular And Trending Author",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
            children: const [
              Text(
                "More Listened Broadcast",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTileWidget());
                }),
          )
        ],
      ).px(12),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 1 / 8,
      width: Get.width * 1 / 4.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1465571269/photo/empty-podcast-studio.jpg?s=2048x2048&w=is&k=20&c=qaVN4jqMzYeNR4XNSusjjO6JmJnUNyz48xhpRP4PSZc="),
              fit: BoxFit.cover)),
    ).px(5);
  }
}
