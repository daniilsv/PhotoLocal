import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:photolocal/theme/photo_local_icons.dart';
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
  int page = 0;

  @override
  void initState() {
    controller = PageController(initialPage: widget.index);
    controller.addListener(() {
      if (page != controller.page.floor()) {
        page = controller.page.floor();
        setState(() {});
      }
    });
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
            iconTheme: IconThemeData(color: PLColors.white),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: PLColors.bg,
            child: Column(children: [
              Expanded(
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
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
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DSC_1337.jpeg",
                          style: PLStyle.text.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Анастасия Караулова",
                          style: PLStyle.secondary.copyWith(
                            color: Color(0xFFA0A0A0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${page + 1} из ${widget.images.length}",
                          style: PLStyle.text.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "С обработкой",
                          style: PLStyle.secondary.copyWith(
                            color: Color(0xFFA0A0A0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
