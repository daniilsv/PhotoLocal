import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';

final List<Category> categories = [
  {
    "name": "Love Story",
    "title": "Love Story",
  },
  {
    "name": "Travel",
    "title": "Travel",
  },
  {
    "name": "Fashion",
    "title": "Fashion",
  },
  {
    "name": "Architecture",
    "title": "Architecture",
  },
  {
    "name": "Art",
    "title": "Art",
  },
  {
    "name": "Portrait",
    "title": "Portrait",
  },
].map((_) => serializers.deserializeWith(Category.serializer, _)).toList();
