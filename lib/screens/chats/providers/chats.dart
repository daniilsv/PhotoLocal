import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:photolocal/api/api.dart';
import 'package:photolocal/mock/photographers.dart' as mock;
import 'package:photolocal/models/models.dart';

class Order {
  DateTime time;
}

class ChatsProvider extends ChangeNotifier {
  ChatsProvider() {
    this.photographers = mock.photographers;
  }
  List<Photographer> photographers = [];
}
