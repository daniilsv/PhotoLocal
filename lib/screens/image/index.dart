import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

class ImagePreview extends StatefulWidget {
  const ImagePreview({Key key, this.images, this.index, this.heroEnding = ""}) : super(key: key);
  final List<String> images;
  final String heroEnding;
  final int index;

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PLColors.bg,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: PLColors.bg,
            iconTheme: IconThemeData(color: PLColors.bg),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: PLColors.bg,
            child: PhotoViewGallery.builder(
              pageController: controller,
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: CachedNetworkImageProvider(widget.images[index]),
                  initialScale: PhotoViewComputedScale.contained * 0.9,
                  heroAttributes: PhotoViewHeroAttributes(tag: "${widget.images[index]}${widget.heroEnding ?? ""}"),
                );
              },
              backgroundDecoration: BoxDecoration(color: PLColors.bg),
              itemCount: widget.images.length,
              loadingBuilder: (context, url) => Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.grey[100],
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                    ),
                  ),
                ),
              ),
              //  backgroundDecoration: BoxDecoration(),
            ),
          ),
        ),
      ),
    );
  }
}
