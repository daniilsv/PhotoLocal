import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/models/models.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class PhotographInfo extends StatelessWidget {
  const PhotographInfo({Key key, this.photographer}) : super(key: key);
  final Photographer photographer;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        width: MediaQuery.of(context).size.width - 8,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 80,
              height: 80,
              child: PLImage(
                photographer?.picture ?? "",
                fit: BoxFit.cover,
                borderRadius: 8,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .9 - 185,
                      child: AutoSizeText(
                        '${photographer?.name ?? ""}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                          color: PLColors.bg,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
