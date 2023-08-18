import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SmallLoader extends StatelessWidget {
  const SmallLoader({
    Key? key,
    this.adaptive = false,
    this.color,
  }) : super(key: key);
  final bool adaptive;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    // var darkThemeProvider = Provider.of<DarkThemeProvider>(context);
    return adaptive
        ? Platform.isIOS
            ? CupertinoActivityIndicator(
                // color: color ?? darkThemeProvider.colorIcon,
                )
            : SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  // valueColor: AlwaysStoppedAnimation<Color>(
                  //     // color ?? darkThemeProvider.colorIcon
                  //     ),
                ),
              )
        : Center(
            child: SpinKitRotatingCircle(
              // color: Constants.colorPrimary,
              size: 20,
            ),
          );
  }
}
