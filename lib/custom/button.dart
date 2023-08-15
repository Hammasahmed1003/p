import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      @required this.color,
      required this.text,
      @required this.onPressed,
      this.height,
      required this.width})
      : super(key: key);

  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // width: widget.width,
      // margin: const EdgeInsets.all(25),
      // width: double.infinity,
      decoration: this.onPressed != null
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: this.color!.withOpacity(0.1),

                  // blurRadius: 10,
                  // offset: Offset(0, 0)
                ),
                BoxShadow(
                  color: this.color!.withOpacity(0.1),
                  blurRadius: 13,
                  // offset: Offset(0, 0)
                )
              ],
            )
          : null,
      child: MaterialButton(
        onPressed: this.onPressed,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        color: this.color,
        disabledElevation: 0,
        disabledColor: Get.theme.focusColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
    );
  }
}
