import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

part 'wall.g.dart';

abstract class Wall implements Built<Wall, WallBuilder> {
  Wall._();

  factory Wall([updates(WallBuilder b)]) = _$Wall;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'userId')
  int get userId;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'categories')
  BuiltList<int> get categories;

  static Serializer<Wall> get serializer => _$wallSerializer;
}
