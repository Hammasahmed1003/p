import 'dart:async';

import 'package:animated/animated.dart';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:podcastapp/screens/login.dart';
import 'package:podcastapp/screens/signup_screen.dart';
import 'package:podcastapp/screens/splash_screen.dart';

class ButtonNavigation extends StatefulWidget {
  // final Function onAdd;
  final Function tabChanged;
  // final Function onJoinCall;
  final Color backgroundColor;

  const ButtonNavigation({
    // required this.onAdd,
    required this.tabChanged,
    // required this.onJoinCall,
    required this.backgroundColor,
  });

  @override
  _ButtonNavigationState createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _selectedIndex = 0;
  ValueNotifier<int> _unseenMessages = ValueNotifier(0);
  late StreamSubscription _inboxSub;

  @override
  // void initState() {
  //   Future.delayed(Duration.zero, () async {
  //     _unseenMessages.value = await DbProvider.getInstance.getUnseenMessages();
  //   });
  //   _inboxSub = eventBus.on<InboxUpdatedBus>().listen((event) async {
  //     _unseenMessages.value = await DbProvider.getInstance.getUnseenMessages();
  //     print("Unseen: ${_unseenMessages.value}");
  //   });
  //   super.initState();
  // }

  @override
  void dispose() {
    _unseenMessages.dispose();
    _inboxSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double bottomInsets = MediaQuery.of(context).viewPadding.bottom;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          systemNavigationBarColor: widget.backgroundColor),
      child: AnimatedContainer(
        padding: EdgeInsets.only(bottom: bottomInsets),
        constraints: BoxConstraints(maxHeight: 65 + bottomInsets),
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
        height: bottomInsets + 65,
        decoration: BoxDecoration(color: widget.backgroundColor),
        child: Row(
          children: [
            createTabButton(
              context,
              title: ("home"),
              icon: "assets/svg/homeIcon.svg",
              inactiveIcon: "assets/svg/homeIcon.svg",
              selected: _selectedIndex == 0,
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  // Get.to(login());
                });
                widget.tabChanged(0);
              },
            ),
            createTabButton(
              context,
              title: ("Discover"),
              icon: "assets/svg/discoverfill.svg",
              inactiveIcon: "assets/svg/discoverIcon.svg",
              selected: _selectedIndex == 1,
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  // Get.to(signup());
                });
                widget.tabChanged(1);
              },
            ),
            createTabButton(
              context,
              title: ("Library"),
              icon: "assets/svg/libfill.svg",
              inactiveIcon: "assets/svg/LibraryIcon.svg",
              selected: _selectedIndex == 2,
              onTap: () async {
                // if (DataStorage.getInstance.currentSession != null) {
                setState(() {
                  _selectedIndex = 2;
                  // Get.to(splash_screen());
                });
                widget.tabChanged(2);
                // } else {
                // widget.onJoinCall();
                // }
              },
            ),
            ValueListenableBuilder<int>(
              valueListenable: _unseenMessages,
              builder: (context, value, child) => createTabButton(
                context,
                title: ("Profile"),
                icon: "assets/svg/fillprofile.svg",
                inactiveIcon: "assets/svg/profileIcon.svg",
                selected: _selectedIndex == 3,
                onTap: () async {
                  // if (DataStorage.getInstance.currentSession != null) {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  widget.tabChanged(3);
                  // } else {
                  // widget.onJoinCall();
                  // }
                },
                badgeCount: value,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createTabButton(
    BuildContext context, {
    required String title,
    required String icon,
    required String inactiveIcon,
    bool selected = false,
    required VoidCallback onTap,
    double size = 25,
    int badgeCount = 0,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AbsorbPointer(
          child: Animated(
            value: selected ? 1 : 0.9,
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 300),
            builder: (context, child, animation) => Transform.scale(
              scale: animation.value,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  badge.Badge(
                    showBadge: badgeCount > 0,
                    badgeContent: Text(
                      badgeCount.toString(),
                      style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    child: SvgPicture.asset(selected ? icon : inactiveIcon,
                        height: size,
                        width: size,
                        color: selected ? Color(0xff9610FF) : Colors.grey[350]),
                  ),
                  const SizedBox(height: 6.5),
                  FittedBox(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            selected ? FontWeight.bold : FontWeight.w500,
                        color: selected ? Color(0xff9610FF) : Colors.grey[350],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createTabButtonWithBadge(
    BuildContext context, {
    required String title,
    required IconData icon,
    bool selected = false,
    Widget? custom,
    required VoidCallback onTap,
    int badgeCount = 0,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AbsorbPointer(
          child: Animated(
            value: selected ? 1 : 0.9,
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 300),
            builder: (context, child, animation) => Transform.scale(
              scale: animation.value,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  custom == null
                      ? Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            fit: StackFit.expand,
                            children: [
                              Icon(icon,
                                  size: 22,
                                  color: selected
                                      ? Colors.black
                                      : Colors.grey[350]),
                              if (badgeCount > 0)
                                Positioned(
                                  bottom: 5,
                                  right: 25,
                                  child: createBadge(badgeCount.toString()),
                                ),
                            ],
                          ),
                        )
                      : custom,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createBadge(String value) {
    return Container(
      constraints: BoxConstraints(maxWidth: 20, maxHeight: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).primaryColor),
      child: Center(
          child: Text(
        value,
        style: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
