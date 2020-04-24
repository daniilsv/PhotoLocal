import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/explore/providers/slider.dart';
import 'package:stacked/stacked.dart';

class PhotoView extends ViewModelWidget<SliderProvider> {
  PhotoView(this.photoUrl);
  final String photoUrl;

  @override
  Widget build(BuildContext context, SliderProvider provider) {
    return PLImage(
      photoUrl,
      fit: BoxFit.cover,
      borderRadius: 24,
    );
  }
}
