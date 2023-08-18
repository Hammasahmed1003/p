import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentMethodSelection extends StatefulWidget {
  @override
  _PaymentMethodSelectionState createState() => _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState extends State<PaymentMethodSelection> {
  int selectedMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(22),
          ),
          child: ListTile(
            leading: SvgPicture.asset("assets/svg/paypal.svg"),
            title: Text(
              'PayPal',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            trailing: Radio.adaptive(
              activeColor: Colors.purple,
              fillColor: MaterialStateProperty.all<Color>(Color(0xff9610FF)),
              value: 1,
              groupValue: selectedMethod,
              onChanged: (value) {
                setState(() {
                  selectedMethod = value as int;
                });
              },
            ),
          ),
        ).p(10),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(22),
          ),
          child: ListTile(
            leading: SvgPicture.asset("assets/svg/google.svg"),
            title: Text('Google Pay',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)),
            trailing: Radio.adaptive(
              fillColor: MaterialStateProperty.all<Color>(Color(0xff9610FF)),
              activeColor: Colors.purple,
              value: 2,
              groupValue: selectedMethod,
              onChanged: (value) {
                setState(() {
                  selectedMethod = value as int;
                });
              },
            ),
          ),
        ).p(10),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(22),
          ),
          child: ListTile(
            leading: SvgPicture.asset("assets/svg/apple.svg"),
            title: Text('Apple Pay',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)),
            trailing: Radio.adaptive(
              fillColor: MaterialStateProperty.all<Color>(Color(0xff9610FF)),
              activeColor: Colors.purple,
              value: 3,
              groupValue: selectedMethod,
              onChanged: (value) {
                setState(() {
                  selectedMethod = value as int;
                });
              },
            ),
          ),
          
        ).p(10),
      ],
    );
  }
}
