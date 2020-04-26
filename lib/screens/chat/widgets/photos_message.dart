import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/image/index.dart';
import 'package:photolocal/theme/theme.dart';

class PhotosMessage extends StatefulWidget {
  PhotosMessage(
    this.photographer, {
    Key key,
    this.withEdit,
    this.withoutEdit,
    this.withDetalEdit,
  }) : super(key: key);
  final Photographer photographer;
  final List<String> withEdit;
  final List<String> withoutEdit;
  final List<String> withDetalEdit;

  @override
  _PhotosMessageState createState() => _PhotosMessageState();
}

class _PhotosMessageState extends State<PhotosMessage> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4).add(EdgeInsets.only(right: 30)),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: PLBorders.all16,
        border: Border.all(color: Color(0xFF979797), width: 0.5),
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Ура! ${widget.photographer.name} прислала фото со съёмки. Скорее смотреть их:",
            style: PLStyle.subheader,
          ),
          SizedBox(height: 25),
          if (widget.withEdit?.isNotEmpty != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "С обработкой:",
                  style: PLStyle.text.copyWith(color: Color(0xFF959595)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(
                      widget.withEdit.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (_) => ImagePreview(
                                heroEnding: "withEdit",
                                images: widget.withEdit,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.withEdit[index] + "withEdit",
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            height: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.5),
                              child: PLImage(
                                widget.withEdit[index],
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          SizedBox(height: 25),
          if (widget.withoutEdit?.isNotEmpty != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Без обработки:",
                  style: PLStyle.text.copyWith(color: Color(0xFF959595)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(
                      widget.withoutEdit.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (_) => ImagePreview(
                                heroEnding: "withoutEdit",
                                images: widget.withoutEdit,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.withoutEdit[index] + "withoutEdit",
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            height: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.5),
                              child: PLImage(
                                widget.withoutEdit[index],
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          SizedBox(height: 25),
          if (widget.withDetalEdit?.isNotEmpty != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "В детальной обработке:",
                  style: PLStyle.text.copyWith(color: Color(0xFF959595)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: List.generate(
                      widget.withDetalEdit.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (_) => ImagePreview(
                                heroEnding: "withDetalEdit",
                                images: widget.withDetalEdit,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.withDetalEdit[index] + "withDetalEdit",
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            height: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.5),
                              child: PLImage(
                                widget.withDetalEdit[index],
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(height: 12),
          Center(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (!tapped) {
                  tapped = true;
                  setState(() {});
                  Future.delayed(Duration(seconds: 3), () {
                    tapped = false;
                    setState(() {});
                  });
                }
              },
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  "Копировать ссылку на .zip",
                  style: PLStyle.subheader.copyWith(
                    color: PLColors.accent.withOpacity(
                      tapped ? 0.4 : 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
