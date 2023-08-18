import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:podcastapp/custom/spring_widget.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(18)),
      height: 61,
      width: 70,
      child: Center(
        child: TextFormField(
          // controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
