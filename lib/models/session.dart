import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {
  Session._();

  factory Session([updates(SessionBuilder b)]) = _$Session;

  @nullable
  @BuiltValueField(wireName: 'token')
  String get token;

  @nullable
  @BuiltValueField(wireName: 'photographer')
  Photographer get photographer;

  @nullable
  @BuiltValueField(wireName: 'user')
  User get user;

  static Serializer<Session> get serializer => _$sessionSerializer;
}
