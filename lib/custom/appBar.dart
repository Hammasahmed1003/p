import 'dart:io';

import 'package:flutter/material.dart';
import 'package:podcastapp/custom/springWidget.dart';
import 'package:velocity_x/velocity_x.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? leading;
  final Widget? title;
  final Widget? trailing;
  final bool hideDivider;
  final double height;
  final Color? backgroundColor;
  final Color? leadingColor;

  const Appbar({
    Key? key,
    this.leading,
    this.title,
    this.trailing,
    this.hideDivider = false,
    this.height = 60,
    this.backgroundColor,
    this.leadingColor,
    required Null Function() leadingOntape,
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
                if (leading != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Platform.isIOS
                        ? SpringWidget(
                            onTap: leading!,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: leadingColor ?? Colors.black,
                            ),
                          )
                        : IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            color: leadingColor ?? Colors.black,
                            onPressed: leading,
                          ),
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
