import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';

final List<Category> categories = [
  {
    "name": "Love Story",
  },
  {
    "name": "Travel",
  },
  {
    "name": "Fashion",
  },
  {
    "name": "Architecture",
  },
  {
    "name": "Art",
  },
  {
    "name": "Portrait",
  },
].map((_) => serializers.deserializeWith(Category.serializer, _)).toList();
