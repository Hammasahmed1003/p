import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../custom/custom_listtile.dart';

import '../../dummydata/dummydata.dart';

class FirstTabView extends StatelessWidget {
  const FirstTabView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    return  DummyData.list == null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/notFound.svg',
                ).py(24),
                "Not Found".text.fontWeight(FontWeight.w700).size(24).make(),
                "Sorry, the keyword you entered cannot be found, please check again or search with another keyword."
                    .text
                    .size(18)
                    .align(TextAlign.center)
                    .make()
              ],
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: DummyData.list.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTileWidget(
                      index: index,
                      subTile: "Plant Money",
                      title: DummyData.list[index].title,
                      time: " 47:55 mins",
                      url: DummyData.list[index].coverImageUrl,
                    ));
              }).pOnly(top: 8);
  
  }
}
