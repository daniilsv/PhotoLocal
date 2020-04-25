import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/global/utils.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/providers/location.dart';
import 'package:photolocal/screens/image/index.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class ExtendedPhotographInfo extends StatelessWidget {
  const ExtendedPhotographInfo({
    Key key,
    @required this.photographer,
    @required this.height,
  }) : super(key: key);
  final Photographer photographer;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 2,
                      height: 2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: PLColors.bg.withOpacity(.7),
                      ),
                    ),
                    Text(
                      calculateDistance(),
                      style: GoogleFonts.ubuntu(
                        color: PLColors.bg.withOpacity(.7),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ...List.generate(
                  1,
                  (index) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (c) => ImagePreview(
                          images: [photographer.picture],
                          index: index,
                        ),
                      ),
                    ),
                    child: Container(
                      height: 140,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Hero(
                        tag: photographer.picture,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: PLImage(
                            photographer.picture,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Услуги',
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    color: PLColors.bg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String calculateDistance() {
    double distance = Utils.calculateDistance(
      LocationProvider().position,
      LatLng(
        photographer.liveLocation.latitude,
        photographer.liveLocation.longitude,
      ),
    );
    if (distance < 1)
      return '${(distance * 1000).floor().toString()} м';
    else
      return '${distance.toStringAsFixed(2)} км';
  }
}
