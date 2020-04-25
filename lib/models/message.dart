import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {
  Message._();

  factory Message([updates(MessageBuilder b)]) = _$Message;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'message')
  String get message;

  @nullable
  @BuiltValueField(wireName: 'chat_id')
  int get chatId;

  @nullable
  @BuiltValueField(wireName: 'order_id')
  int get orderId;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  int get userId;

  static Serializer<Message> get serializer => _$messageSerializer;
}
