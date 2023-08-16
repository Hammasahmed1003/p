import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayBtn extends StatefulWidget {
  final VoidCallback onTap;
  final double? width;
  final double? borderWidth;
  final double? height;
  final IconData? icon;
  final String? txt;
  final double? radius;
  final Color? bgColor;
  final Color? borderColor;
  final Color? iconColor;
  final Color? txtColor;
  const CustomPlayBtn({
    super.key,
    required this.onTap,
    this.width,
    this.height,
    this.icon,
    this.txt,
    this.radius,
    this.bgColor,
    this.borderColor,
    this.iconColor,
    this.txtColor,
    this.borderWidth,
  });
  @override
  State<CustomPlayBtn> createState() => _CustomPlayBtnState();
}

class _CustomPlayBtnState extends State<CustomPlayBtn> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onPanDown: (details) {
        if (widget.onTap == null) return;
        setState(() {
          pressed = true;
        });
      },
      onPanEnd: (details) {
        if (widget.onTap == null) return;
        setState(() {
          pressed = false;
        });
      },
      onPanCancel: () {
        if (widget.onTap == null) return;
        setState(() {
          pressed = false;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          // color: widget.bgColor,
          color: pressed ? widget.bgColor?.withOpacity(0.9) : widget.bgColor,
// borderRadius: BorderRadius.all(Radius.circular(32)),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.radius ?? 0),
          ),
          border: Border.all(
              width: widget.borderWidth!, color: widget.borderColor!),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: widget.iconColor,
              size: 18.sp,
            ),
            Text(
              widget.txt!,
              style: TextStyle(color: widget.txtColor, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
