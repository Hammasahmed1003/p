import 'package:flutter/material.dart';
import 'package:podcastapp/PageView/tab1_view.dart';
import 'package:podcastapp/PageView/tab2_view.dart';



import 'package:velocity_x/velocity_x.dart';

import '../../custom/text_field.dart';

class PodcastTabScreen extends StatefulWidget {
  const PodcastTabScreen({super.key});

  @override
  State<PodcastTabScreen> createState() => _PodcastTabScreenState();
}

class _PodcastTabScreenState extends State<PodcastTabScreen> {
  final List<Tab> tabs = [
    const Tab(
      child: Text(
        "Podcasts",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
    const Tab(
      // ),
      child: Text(
        "Author",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
          body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextField(
              hintText: "search",
              alternatePrefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ).pOnly(bottom: 10),
            TabBar(
                labelColor: Colors.purple,
                indicatorColor: Colors.purple,
                unselectedLabelColor: Colors.grey,
                tabs: tabs),
            const Expanded(
              child: TabBarView(children: [
                Center(child: FirstTabView()),
                Center(child: SecondTebView()),
              ]),
            )
          ],
        ).py(24).px(24),
      )),
    );
  }
}
