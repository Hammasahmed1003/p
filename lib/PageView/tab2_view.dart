import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/subs_section.dart';

class SecondTebView extends StatelessWidget {
  const SecondTebView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(child: SubsSection()).py(8);
        });
  }
}
