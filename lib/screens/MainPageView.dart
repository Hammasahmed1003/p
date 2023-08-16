// import 'package:flutter_svg/svg.dart';
// import 'package:flutter/material.dart';
// import 'package:podcastapp/screens/BottomNavigation.dart';
// import 'package:podcastapp/screens/login.dart';
// import 'package:podcastapp/screens/signup_screen.dart';
// import 'package:podcastapp/screens/splash_screen.dart';

// class MainPageView extends StatefulWidget {
//   final int? initialIndex;
//   MainPageView({this.initialIndex});
//   @override
//   _MainPageViewState createState() => _MainPageViewState();
// }

// class _MainPageViewState extends State<MainPageView> {
//   int _currentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       _currentIndex = widget.initialIndex ?? _currentIndex;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ButtonNavigation(
//           tabChanged: _buildPage(_currentIndex), backgroundColor: Colors.white),
//       // bottomNavigationBar: ButtonNavigation(
//       //     tabChanged: _buildPage(_currentIndex), backgroundColor: Colors.white),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   currentIndex: _currentIndex,
//       //   selectedIconTheme: IconThemeData(color: Theme.of(context).hoverColor),
//       //   unselectedIconTheme:
//       //       IconThemeData(color: Theme.of(context).disabledColor),
//       //   selectedItemColor: Theme.of(context).hoverColor,
//       //   unselectedItemColor: Theme.of(context).disabledColor,
//       //   selectedLabelStyle: TextStyle(
//       //       fontFamily: 'plusjakarta',
//       //       color: Theme.of(context).hoverColor,
//       //       fontWeight: FontWeight.w700,
//       //       fontSize: 13),
//       //   unselectedLabelStyle: TextStyle(
//       //       fontFamily: 'plusjakarta',
//       //       color: Theme.of(context).disabledColor,
//       //       fontWeight: FontWeight.normal,
//       //       fontSize: 12),
//       //   onTap: (index) {
//       //     setState(() {
//       //       _currentIndex = index;
//       //     });
//       //   },
//       //   type: BottomNavigationBarType.fixed, // To show all labels
//       //   items: [
//       //     BottomNavigationBarItem(
//       //       icon: Padding(
//       //         padding: const EdgeInsets.all(8.0),
//       //         child: _currentIndex == 0
//       //             ? SvgPicture.asset(
//       //                 "assets/svg/homebg.svg",
//       //                 height: 18,
//       //                 width: 18,
//       //               )
//       //             : SvgPicture.asset(
//       //                 "assets/svg/home.svg",
//       //                 height: 18,
//       //                 width: 18,
//       //                 color: Theme.of(context).disabledColor,
//       //               ),
//       //       ),
//       //       label: 'home'.tr,
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Padding(
//       //         padding: const EdgeInsets.all(8.0),
//       //         child: _currentIndex == 1
//       //             ? SvgPicture.asset(
//       //                 "assets/svg/searchbg.svg",
//       //                 height: 20,
//       //                 width: 20,
//       //               )
//       //             : SvgPicture.asset(
//       //                 "assets/svg/brower.svg",
//       //                 height: 17,
//       //                 width: 17,
//       //                 color: Theme.of(context).disabledColor,
//       //               ),
//       //       ),
//       //       label: 'explore'.tr,
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Padding(
//       //         padding: const EdgeInsets.all(8.0),
//       //         child: _currentIndex == 2
//       //             ? SvgPicture.asset(
//       //                 "assets/svg/wishlistbg.svg",
//       //                 height: 20,
//       //                 width: 20,
//       //               )
//       //             : SvgPicture.asset(
//       //                 "assets/svg/wishlist.svg",
//       //                 height: 20,
//       //                 width: 20,
//       //                 color: Theme.of(context).disabledColor,
//       //               ),
//       //       ),
//       //       label: 'live'.tr,
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Padding(
//       //         padding: const EdgeInsets.all(8.0),
//       //         child: _currentIndex == 3
//       //             ? SvgPicture.asset(
//       //                 "assets/svg/cartbg.svg",
//       //                 height: 22,
//       //                 width: 22,
//       //               )
//       //             : SvgPicture.asset(
//       //                 "assets/svg/cart.svg",
//       //                 height: 22,
//       //                 width: 22,
//       //                 color: Theme.of(context).disabledColor,
//       //               ),
//       //       ),
//       //       label: 'cart'.tr,
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Padding(
//       //         padding: const EdgeInsets.all(8.0),
//       //         child: _currentIndex == 4
//       //             ? SvgPicture.asset(
//       //                 "assets/svg/profilebg.svg",
//       //                 height: 20,
//       //                 width: 20,
//       //               )
//       //             : SvgPicture.asset(
//       //                 "assets/svg/profile.svg",
//       //                 height: 20,
//       //                 width: 20,
//       //                 color: Theme.of(context).disabledColor,
//       //               ),
//       //       ),
//       //       label: 'Profile',
//       //     ),
//       //   ],
//       // ),
//     );
//   }

//   // final cartController = Get.put(cart_Controller());
//   _buildPage(int index) {
//     // You can return different widgets/screens based on the index
//     switch (index) {
//       case 0:
//         return login();
//       case 1:
//         return splash_screen();
//       case 2:
//         return splash_screen();
//       case 3:
//         return signup();
//       // case 4:
//       //   return Profile_Screen();
//       default:
//         return login();
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:podcastapp/screens/Library_screen.dart';
import 'package:podcastapp/screens/login.dart';
import 'package:podcastapp/screens/signup_screen.dart';
import 'package:podcastapp/screens/splash_screen.dart';

import '../PageView/discrover_screen.dart';
import 'BottomNavigation.dart';

class MainPageView extends StatefulWidget {
  final int? initialIndex;
  MainPageView({this.initialIndex});
  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  static const List<Widget> _widgetOptions = <Widget>[
    login(),
    signup(),
    splash_screen(),
  ];

  @override
  void initState() {
    super.initState();
    // setState(() {
    //   _currentIndex = widget.initialIndex ?? _currentIndex;
    // });
  }

  void _onTabChanged(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
      _pageController.jumpToPage(_currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          login(),
          DicoverPage(),
          LibraryScreen(),
          login(),
        ],
      ),
      bottomNavigationBar: ButtonNavigation(
        tabChanged: _onTabChanged, // Pass the callback function here
        backgroundColor: Colors.white,
      ),
      // ...
    );
  }

  // ...
}
