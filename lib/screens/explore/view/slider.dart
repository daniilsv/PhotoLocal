import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/screens/explore/providers/slider.dart';
import 'package:stacked/stacked.dart';

import 'row.dart';

class SliderView extends ViewModelWidget<SliderProvider> {
  @override
  Widget build(BuildContext context, SliderProvider provider) {
    return CarouselSlider(
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
      ),
      items: provider.categories
          .map(
            (category) => RowSlider(category),
          )
          .toList(),
    );
  }
}
