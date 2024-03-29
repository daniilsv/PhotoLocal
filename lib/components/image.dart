import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

/// Image widget with placeholder.
/// Wrap around CachedNetworkImage with Shimmer placeholder.
/// Display image from given [url]. Example: [PLImage('https://your_image.png')]
/// You can manually configure heigth of Image([heigth]), width od Image([width]) and circular border radius([borderRadius])
/// {@category Widgets}
class PLImage extends StatelessWidget {
  final double height;
  final double width;
  final dynamic borderRadius;
  final String url;
  final BoxFit fit;
  final Color color;
  const PLImage(
    this.url, {
    Key key,
    this.height,
    this.width,
    this.borderRadius = 0,
    this.fit = BoxFit.cover,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius != null
          ? borderRadius is BorderRadius
              ? borderRadius
              : BorderRadius.circular((borderRadius as num).toDouble())
          : null,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        height: height,
        width: width,
        color: color,
        errorWidget: (context, str, obj) => Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 4),
          alignment: Alignment.center,
          color: PLColors.primary,
          child: Text(
            "Не удалось загрузить изображение",
            style: PLStyle.text,
            textAlign: TextAlign.center,
          ),
        ),
        placeholder: (context, url) => Container(
          height: height,
          width: width,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              borderRadius: borderRadius != null
                  ? borderRadius is BorderRadius
                      ? borderRadius
                      : BorderRadius.circular((borderRadius as num).toDouble())
                  : null),
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey[100],
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
