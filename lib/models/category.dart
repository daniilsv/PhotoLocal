import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {
  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'code')
  String get code;

  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;

  static Serializer<Category> get serializer => _$categorySerializer;
}

///
///lovestory
///
