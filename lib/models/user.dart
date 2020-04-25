import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'facebookId')
  String get facebookId;

  @nullable
  @BuiltValueField(wireName: 'name')
  int get name;

  @nullable
  @BuiltValueField(wireName: 'phone')
  int get phone;

  static Serializer<User> get serializer => _$userSerializer;
}
