import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcastapp/screens/Queue_screen.dart';
import 'package:podcastapp/screens/history_screen.dart';

import '../custom/customAppBar.dart';
import 'Subs_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final List<Tab> tabs = [
    Tab(
      child: Text(
        "Subscriptions",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    Tab(
      // ),
      child: Text(
        "Queue",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    Tab(
      child: Text(
        "Downloads",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: Scaffold(
          appBar: CustomAppBar(
              leadingOntape: () {},
              leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) =>
                              HistoryScreen()), // Replace NextScreen with your actual screen
                    );
                  },
                  child: SvgPicture.asset("assets/svg/recenticon.svg")),
              hideDivider: true,
              title: Text(
                "My Library",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )),
          body: Column(
            children: [
              TabBar(
                  labelColor: Colors.purple,
                  indicatorColor: Colors.purple,
                  unselectedLabelColor: Colors.grey,
                  tabs: tabs),
              Expanded(
                child: TabBarView(children: [
                  Center(child: SubscriptionsScreen()),
                  Center(child: QueueScreen()),
                  Center(child: QueueScreen()),
                ]),
              )
            ],
          ),
        ));
  }
}
