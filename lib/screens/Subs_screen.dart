import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:podcastapp/custom/subs_section.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/custom_play_btn.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SubsSection()),
          );
        });
  }
}
