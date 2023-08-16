import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSection extends StatelessWidget {
  final String title;
  final String prefixIcon;
  final bool showSwitchbtn;
  final Color backgroundcolor;
   final Function()? ontap;


  ProfileSection({
    required this.title,
    required this.prefixIcon,
    required this.showSwitchbtn,
    required this.backgroundcolor, this.ontap,
  });

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: ontap,
        child: ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(prefixIcon)),
          title: Text(
            title,
            style: TextStyle(
                fontSize: 15.sp,
                color: backgroundcolor,
                // color: Theme.of(context).hintColor,
                fontWeight: FontWeight.w800),
          ),
          trailing: showSwitchbtn
              ? Transform.scale(
                  scale: 1.1,
                  child: Switch.adaptive(
                    inactiveTrackColor: Colors.grey[100],
                    activeTrackColor: Color(0xff9610FF),
                    activeColor: Colors.white,
                    value: _isSwitched,
                    onChanged: (value) {
                      _isSwitched:
                      false;
                    },
                  ),
                )

              // switch
              : Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
