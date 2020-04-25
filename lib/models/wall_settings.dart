import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wall_settings.g.dart';

abstract class WallSettings implements Built<WallSettings, WallSettingsBuilder> {
  WallSettings._();

  factory WallSettings([updates(WallSettingsBuilder b)]) = _$WallSettings;

  @nullable
  @BuiltValueField(wireName: 'wallId')
  int get wallId;

  @nullable
  @BuiltValueField(wireName: 'photoId')
  int get photoId;

  @nullable
  @BuiltValueField(wireName: 'categoryId')
  int get categoryId;

  @nullable
  @BuiltValueField(wireName: 'count')
  int get count;

  static Serializer<WallSettings> get serializer => _$wallSettingsSerializer;
}
