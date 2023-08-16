// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'custom_play_btn.dart';
// import 'image_widget.dart';

// class ListTileWidget extends StatefulWidget {
//   final String url;
//   final String title;
//   final String subTile;
//   // final DateTime time;
//   final String time;
//   final int index;

//   const ListTileWidget({
//     super.key,
//     required this.url,
//     required this.title,
//     required this.subTile,
//     required this.time,
//     required this.index,
//   });

//   @override
//   State<ListTileWidget> createState() => _ListTileWidgetState();
// }

// bool isMenuChecked = false;

// class _ListTileWidgetState extends State<ListTileWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ImageWidget(
//             width: Get.width * 0.29,
//             height: Get.height * 0.14,
//             imageUrl: widget.url),
//         const SizedBox(
//           width: 16,
//         ),
//         Expanded(
//           child: SizedBox(
//             height: Get.height * 0.12,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         widget.title,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w700,
//                           fontSize: 18,
//                         ),
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Flexible(
//                       child: Text(
//                         widget.subTile,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 12,
//                             color: Color(0xFF616161)),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8),
//                       child: Text("|"),
//                     ),
//                     Text(
//                       widget.time,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 12,
//                           color: Color(0xFF616161)),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomPlayBtn(
//                       onTap: () {},
//                       icon: Icons.play_arrow,
//                       iconColor: Colors.white,
//                       txt: "Play",
//                       txtColor: Colors.white,
//                       bgColor: const Color(0xff9610FF),
//                       radius: 100,
//                       borderColor: Colors.transparent,
//                       height: 30,
//                       width: 75,
//                       borderWidth: 1,
//                     ),
//                     SvgPicture.asset(
//                       "assets/svg/add.svg",
//                     ),
//                     SvgPicture.asset(
//                       "assets/svg/arrowdown.svg",
//                     ),
//                     PopupMenuButton(
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(20.0),
//                           bottomRight: Radius.circular(20.0),
//                           topLeft: Radius.circular(20.0),
//                           topRight: Radius.circular(20.0),
//                         ),
//                       ),
//                       position: PopupMenuPosition.under,
//                       child: SvgPicture.asset(
//                         "assets/svg/more.svg",
//                       ),
//                       itemBuilder: (context) => [
//                         const PopupMenuItem(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(Icons.send),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text("Share")
//                             ],
//                           ),
//                         ),
//                         const PopupMenuItem(
//                           height: 0,
//                           // padding: EdgeInsets.zero,
//                           child: Divider(
//                             color: Colors.grey,
//                             height: 0,
//                           ),
//                         ),
//                         PopupMenuItem(
//                           child: Row(
//                             children: [
//                               StatefulBuilder(
//                                 builder: (context, setState) => Checkbox(
//                                   //  activeColor: kLeadingOrangeColor,
//                                   value: isMenuChecked,
//                                   onChanged: (value) => setState(
//                                       () => isMenuChecked = !isMenuChecked),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               const Text('button no'),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
// // ).py(8);
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_play_btn.dart';
import 'image_widget.dart';

class ListTileWidget extends StatefulWidget {
  final String url;
  final String title;
  final String subTile;
  // final DateTime time;
  final String time;
  final int index;

  const ListTileWidget({
    super.key,
    required this.url,
    required this.title,
    required this.subTile,
    required this.time,
    required this.index,
  });

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

bool isMenuChecked = false;

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWidget(
            width: Get.width * 0.33,
            height: Get.height * 0.15,
            imageUrl: widget.url),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: SizedBox(
            height: Get.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        widget.subTile,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Color(0xFF616161)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("|"),
                    ),
                    Text(
                      widget.time,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xFF616161)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPlayBtn(
                      onTap: () {},
                      bgColor: Colors.purple,
                      borderColor: Colors.purple,
                      borderWidth: 0,
                      height: 30,
                      icon: Icons.play_arrow,
                      iconColor: Colors.white,
                      radius: 20,
                      txt: "Play",
                      txtColor: Colors.white,
                      width: 70,
                    ),
                    SvgPicture.asset(
                      "assets/svg/add.svg",
                    ),
                    SvgPicture.asset(
                      "assets/svg/arrowdown.svg",
                    ),
                    PopupMenuButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      position: PopupMenuPosition.under,
                      child: SvgPicture.asset(
                        "assets/svg/more.svg",
                      ),
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.send),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Share")
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          height: 0,
                          // padding: EdgeInsets.zero,
                          child: Divider(
                            color: Colors.grey,
                            height: 0,
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              StatefulBuilder(
                                builder: (context, setState) => Checkbox(
                                  //  activeColor: kLeadingOrangeColor,
                                  value: isMenuChecked,
                                  onChanged: (value) => setState(
                                      () => isMenuChecked = !isMenuChecked),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('button no'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
// ).py(8);
  }
}
