import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastapp/PageView/podcast_tab_screen.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../custom/text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomTextField(
              hintText: "search",
              alternatePrefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ).py(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Search",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ).onTap(() {
                  Get.to(PodcastTabScreen());
                }),
                Text(
                  "clear all",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )
              ],
            ).py(10),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1 / 8,
                child: "No history".text.make().centered())
          ],
        ).py(24).px(24),
      ),
    );
  }
}
