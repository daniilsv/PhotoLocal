import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';

class SliderProvider extends ChangeNotifier {
  SliderProvider() {
    mock();
  }

  CarouselController sliderController;
  Map<Category, CarouselController> categorySliderControllers = {};

  List<Category> categories = [];
  Map<int, List<Photographer>> photographers = {};

  mock() {

  }
}
