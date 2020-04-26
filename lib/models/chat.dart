import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat.g.dart';

abstract class Chat implements Built<Chat, ChatBuilder> {
  Chat._();

  factory Chat([updates(ChatBuilder b)]) = _$Chat;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'photographer_id')
  String get photographerId;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  String get userId;

  static Serializer<Chat> get serializer => _$chatSerializer;
}
