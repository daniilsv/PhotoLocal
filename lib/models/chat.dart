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
  @BuiltValueField(wireName: 'chatId')
  String get chatId;

  @nullable
  @BuiltValueField(wireName: 'ownerUserId')
  int get ownerUserId;

  @nullable
  @BuiltValueField(wireName: 'orderId')
  int get orderId;

  @nullable
  @BuiltValueField(wireName: 'message')
  String get message;

  @nullable
  @BuiltValueField(wireName: 'createdAt')
  DateTime get createdAt;

  static Serializer<Chat> get serializer => _$chatSerializer;
}
