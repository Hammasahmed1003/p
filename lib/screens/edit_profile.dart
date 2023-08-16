import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:podcastapp/custom/appBar.dart';
import 'package:podcastapp/custom/customAppBar.dart';
import 'package:podcastapp/screens/MainPageView.dart';
import 'package:podcastapp/screens/Profile_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

import '../custom/button.dart';

import '../custom/text_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final gendercontroller = SingleValueDropDownController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
          leadingOntape: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) => MainPageView(
                        initialIndex: 3,
                      )), // Replace NextScreen with your actual screen
            );
          },
          // leadingIcon: SvgPicture.asset("assets/svg/libmic.svg"),
          // trailing: GestureDetector(
          //     child: SvgPicture.asset("assets/svg/showmore.svg")),
          hideDivider: true,
          title: Text(
            "Edit Profile",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: "Andrew Ainsley",
            ),
            CustomTextField(
              hintText: "Andrew",
            ),
            CustomTextField(
              hintText: "23/11/33",
              defaultSuffixIcon: Image.asset(
                'assets/images/date.png',
              ),
            ),
            CustomTextField(
              hintText: "Andrewainsley@yourdomain.com",
              defaultSuffixIcon: Image.asset(
                'assets/images/email.png',
              ),
            ),
            SizedBox(
              height: 11,
            ),
            // IntlPhoneField(
            //   decoration: InputDecoration(
            //     filled: true,
            //     // fillColor: Colors.grey[200],
            //     hintText: 'Phone Number',
            //     enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide.none,
            //         borderRadius: BorderRadius.circular(20)),
            //     focusedBorder: OutlineInputBorder(
            //         borderSide: const BorderSide(
            //           color: Colors.purple,
            //         ),
            //         borderRadius: BorderRadius.circular(20)),
            //   ),
            //   initialCountryCode: 'PK',
            //   onChanged: (phone) {
            //     print(phone.completeNumber);
            //   },
            // ).pOnly(bottom: 20),
            IntlPhoneField(
              decoration: InputDecoration(
                focusColor: Color(0xff9610FF),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        width: 1, color: Colors.grey.withOpacity(0.1))),
                hintText: "111-222-333",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(width: 1, color: Colors.grey.withOpacity(0.2)),
                ),
              ),
              initialCountryCode: 'PK',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            DropDownTextField(
              textFieldDecoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "select Gender",
              ),
              controller: gendercontroller,
              dropDownList: [
                DropDownValueModel(
                  name: 'Male',
                  value: "Male ",
                ),
                DropDownValueModel(
                  name: 'Female',
                  value: "Female ",
                ),
                DropDownValueModel(
                  name: 'Not Specified',
                  value: "Not Specified ",
                ),
              ],
            ).py(11),
            SizedBox(
              height: 20,
            ),
            Button(
              width: size.width * 0.3,
              height: 60,
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           MainPageView()), // Replace NextScreen with your actual screen
                // );
              },
              text: "Update",
              color: Color(0xff9610FF),
            ).py(30),
          ],
        ).p(20),
      ),
    );
  }
}
