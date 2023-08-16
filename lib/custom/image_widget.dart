
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  const ImageWidget({required this.imageUrl, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? Image.asset(
            'assets/images/fblogo.png',
            height: height,
            width: width,
            fit: BoxFit.fill,
          )
        : ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: height,
              width: width,
              fit: BoxFit.fill,
              placeholder: (context, url) => Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SpinKitFadingCircle(
                        color: Theme.of(context).primaryColor,
                        size: 50.0,
                        duration: const Duration(seconds: 2),
                      ),
                    ),
                  ),
              errorWidget: (context, url, error) => Image.asset(
                    'assets/images/fblogo',
                    height: height,
                    width: width,
                    fit: BoxFit.fill,
                  )),
        );
  }
}
