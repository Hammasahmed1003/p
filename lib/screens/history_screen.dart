import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/history_section.dart';
import 'package:podcastapp/screens/Library_screen.dart';
import 'package:podcastapp/screens/MainPageView.dart';

import '../custom/customAppBar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>
                      MainPageView()), // Replace NextScreen with your actual screen
            );
          },
          // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          trailing: GestureDetector(
              child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "History",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          )),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
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
