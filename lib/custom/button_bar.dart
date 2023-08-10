// import 'package:flutter/material.dart';

// class button_bar extends StatelessWidget {
//   const button_bar(
//       {super.key,
//       required this.width,
//       required this.title,
//       this.color,
//       this.height,
//       this.brodercolor,
//       this.ontap,
//       this.icon});

//   final double width;
//   final Function()? ontap;
//   final Widget? icon;
//   final double? height;
//   final Color? color;
//   final Color? brodercolor;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: ontap,
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 150),
//           height: height ?? 60,
//           width: width,
//           decoration: BoxDecoration(
//               color: Color(0xff9610FF),
//               borderRadius: BorderRadius.circular(30),
//               border: Border.all(color: Color(0xff9610FF))),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               icon ?? Container(),
//               Text(
//                 title,
//                 style: TextStyle(
//                     fontFamily: 'plusjakarta',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color:
//                         brodercolor ?? Theme.of(context).secondaryHeaderColor),
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';

class button_bar extends StatefulWidget {
  const button_bar({
    Key? key,
    required this.width,
    required this.title,
    this.color,
    this.height,
    this.borderColor,
    this.onTap,
    this.icon,
  }) : super(key: key);

  final double width;
  final Function()? onTap;
  final Widget? icon;
  final double? height;
  final Color? color;
  final Color? borderColor;
  final String title;

  @override
  _button_barState createState() => _button_barState();
}

class _button_barState extends State<button_bar> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: widget.onTap,
      child: Ink(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          height: widget.height ?? 60,
          width: widget.width,
          decoration: BoxDecoration(
            color: _isPressed
                ? widget.borderColor
                : widget.color ?? Color(0xff9610FF),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Color(0xff9610FF)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon ?? Container(),
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'plusjakarta',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: widget.borderColor ??
                      Theme.of(context).secondaryHeaderColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
