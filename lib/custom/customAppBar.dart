import 'dart:io';

import 'package:flutter/material.dart';
import 'package:podcastapp/custom/springWidget.dart';
// ignore: depend_on_referenced_packages
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? leadingOntape;
  final Widget? leadingIcon;
  final Widget title;
  final Widget? trailing;
  final bool hideDivider;
  final double height;
  final Color? backgroundColor;
  final Color? leadingColor;

  const CustomAppBar({
    Key? key,
    this.leadingOntape,
    required this.title,
    this.trailing,
    this.hideDivider = false,
    this.height = 60,
    this.backgroundColor,
    this.leadingColor,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      color: backgroundColor,
      child: Column(
        children: [
          Container(
            color: backgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: height,
            child: Stack(
              children: [
                if (leadingOntape != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: leadingIcon == null
                        ? Platform.isIOS
                            ? SpringWidget(
                                onTap: leadingOntape!,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: leadingColor ?? Colors.black,
                                ),
                              )
                            : IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: leadingColor ?? Colors.black,
                                onPressed: leadingOntape,
                              )
                        : leadingIcon,
                  ),
                if (title != null)
                  Align(alignment: Alignment.center, child: title),
                if (trailing != null)
                  Align(alignment: Alignment.centerRight, child: trailing!),
              ],
            ),
          ),
          if (!hideDivider) const Divider(height: 0),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
