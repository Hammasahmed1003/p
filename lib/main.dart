//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:podcastapp/screens/Author.dart';
import 'package:podcastapp/screens/LetYouIn.dart';
import 'package:podcastapp/screens/Library_screen.dart';
import 'package:podcastapp/screens/MainPageView.dart';
import 'package:podcastapp/screens/Profile_screen.dart';
import 'package:podcastapp/screens/downloads.dart';
import 'package:podcastapp/screens/edit_profile.dart';
import 'package:podcastapp/screens/security.dart';
import 'package:podcastapp/screens/splash_screen.dart';

import 'screens/Episode.dart';
import 'screens/Premium_screen.dart';
import 'screens/Queue_screen.dart';
import 'screens/content_screen.dart';
import 'screens/notification.dart';
// import 'package:zalada_app/service/fcm_token.dart';
// import 'package:zalada_app/utiles/multi_language.dart';
// import 'package:zalada_app/utiles/themeData.dart';
// import 'MVC/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
//             translations: Multi_Language(),
//             locale: Locale('en', 'US'),
//             themeMode: ThemeMode.light,
            theme: ThemeData(fontFamily: "poppinsRegular"),
            debugShowCheckedModeBanner: false,
            home: LetYouIn(),
          );
        });
  }
}
