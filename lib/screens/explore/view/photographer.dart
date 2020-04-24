import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/explore/providers/slider.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'photo.dart';

class PhotographerView extends ViewModelWidget<SliderProvider> {
  PhotographerView(this.photographer);
  final Photographer photographer;

  @override
  Widget build(BuildContext context, SliderProvider provider) {
    String photo = photographer.photos.first;
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
          borderRadius: PLBorders.all12,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              PhotoView(photo),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    photographer.name,
                    style: PLStyle.subheader,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
