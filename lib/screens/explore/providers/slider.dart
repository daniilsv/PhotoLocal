import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';

final List<String> _imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class SliderProvider extends ChangeNotifier {
  SliderProvider() {
    mock();
  }

  CarouselController sliderController;
  Map<Category, CarouselController> categorySliderControllers = {};

  List<Category> categories = [];
  Map<int, List<Photographer>> photographers = {};
  Map<int, List<Photo>> photos = {};

  mock() {
    categories = [
      Category()
        ..id = 1
        ..title = "Свадебные",
      Category()
        ..id = 2
        ..title = "Портрет",
      Category()
        ..id = 3
        ..title = "Индустриальные",
    ];

    photographers = {
      1: [
        Photographer()
          ..id = 1
          ..name = "Илья",
        Photographer()
          ..id = 2
          ..name = "Богдан",
        Photographer()
          ..id = 3
          ..name = "Филипп",
      ],
      2: [
        Photographer()
          ..id = 4
          ..name = "Илья",
        Photographer()
          ..id = 3
          ..name = "Богдан",
        Photographer()
          ..id = 2
          ..name = "Филипп",
      ],
      3: [
        Photographer()
          ..id = 3
          ..name = "Илья",
        Photographer()
          ..id = 4
          ..name = "Богдан",
        Photographer()
          ..id = 1
          ..name = "Филипп",
      ],
    };

    photos = {
      1: [
        Photo()
          ..id = 1
          ..url = _imgList[0],
        Photo()
          ..id = 2
          ..url = _imgList[1],
      ],
      2: [
        Photo()
          ..id = 3
          ..url = _imgList[2],
      ],
      3: [
        Photo()
          ..id = 4
          ..url = _imgList[3],
        Photo()
          ..id = 5
          ..url = _imgList[4],
      ],
      4: [
        Photo()
          ..id = 6
          ..url = _imgList[5],
      ],
    };
  }
}
