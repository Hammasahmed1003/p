import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcastapp/custom/appBar.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:podcastapp/screens/Otp_screen.dart';
import 'package:podcastapp/screens/forget_password.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom/btn.dart';
import '../custom/button.dart';
// import '../custom/button_bar.dart';
import '../custom/text_field.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;

    void _toggleCheckbox(newValue) {
      setState(() {
        _isChecked = newValue;
      });
    }

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Appbar(
        leadingOntape: () {},
        hideDivider: true,
        title: Text(
          "Create New Password",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        leading: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) =>
                    ForgetPassword()), // Replace NextScreen with your actual screen
          );
        },
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/newpasswordimage.png',
                width: 276,
                height: 250,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Create Your New Password",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ).pOnly(right: 80),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              obscureText: true,
              hintText: "New Password",
              defaultPrefixIcon: Image.asset(
                'assets/images/emailicon.png',
              ),
              alternatePrefixIcon: Image.asset(
                'assets/images/emalcolor.png',
              ),
              defaultSuffixIcon: Image.asset(
                'assets/images/eyedisable.png',
              ),
              alternateSuffixIcon: Image.asset(
                'assets/images/eyedisable.png',
              ),
            ).px(24),
            SizedBox(
              height: 5,
            ),
            CustomTextField(
              obscureText: true,
              hintText: "New Password",
              defaultPrefixIcon: Image.asset(
                'assets/images/passwordicon.png',
              ),
              alternatePrefixIcon: Image.asset(
                'assets/images/passwordicon.png',
              ),
              defaultSuffixIcon: Image.asset(
                'assets/images/eyedisable.png',
              ),
            ).px(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpringWidget(
                  onTap: () {},
                  child: Checkbox(
                    side: BorderSide(color: Color(0xff9610FF), width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    checkColor: Colors.purple[500],
                    value: _isChecked,
                    onChanged: _toggleCheckbox,
                  ),
                ),
                Text(
                  "Remember me",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),

                // ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            RoundButton(
                width: size.width * 0.3,
                textColor: Colors.white,
                backgroundColor: Color(0xff9610FF),
                height: 60,
                title: "Continue",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            OtpScreen()), // Replace NextScreen with your actual screen
                  );
                })
            // Button(
            //   width: size.width * 0.3,
            //   height: 60,
            //   onPressed: () {
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //           builder: (context) =>
            //               OtpScreen()), // Replace NextScreen with your actual screen
            //     );
            //   },
            //   text: "Continue",
            //   color: Color(0xff9610FF),
            // ),
            // button_bar(width: size.width * 0.3, title: "Continue")
          ]),
        ),
      ),
    );
  }
}
