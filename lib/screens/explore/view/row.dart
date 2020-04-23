import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/explore/providers/slider.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'photographer.dart';

class RowSlider extends ViewModelWidget<SliderProvider> {
  RowSlider(this.category);
  final Category category;

  @override
  Widget build(BuildContext context, SliderProvider provider) {
    return Stack(children: [
      CarouselSlider(
        options: CarouselOptions(
          height: double.infinity,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,
        ),
        items: provider.photographers[category.id]
            .map(
              (photographer) => PhotographerView(photographer),
            )
            .toList(),
      ),
      Positioned(
        top: 32,
        left: 0,
        right: 0,
        child: Text(
          category.title,
          style: PLStyle.create(
            color: PLColors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
