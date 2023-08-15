import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/history_section.dart';

import '../custom/customAppBar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {},
          // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          trailing: SvgPicture.asset("assets/svg/showmore.svg"),
          hideDivider: true,
          title: Text(
            "History",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          )),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: HistorySection()),
              ),
            );
          }),
    );
  }
}
