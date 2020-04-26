import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';

final List<Category> categories = [
  {"id": 1, "name": "Portrait", "ordering": 1},
  {"id": 2, "name": "Love Story", "ordering": 2},
  {"id": 3, "name": "Art", "ordering": 3},
  {"id": 4, "name": "Architecture", "ordering": 4},
  {"id": 5, "name": "Fashion", "ordering": 5},
  {"id": 6, "name": "Travel", "ordering": 6}
].map((_) => serializers.deserializeWith(Category.serializer, _)).toList();
