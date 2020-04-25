import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'chat_item.g.dart';

abstract class ChatItem implements Built<ChatItem, ChatItemBuilder> {
  ChatItem._();

  factory ChatItem([updates(ChatItemBuilder b)]) = _$ChatItem;

  @nullable
  @BuiltValueField(wireName: 'chat')
  Chat get chat;

  @nullable
  @BuiltValueField(wireName: 'photographer')
  Photographer get photographer;

  @nullable
  @BuiltValueField(wireName: 'lastMessage')
  Message get lastMessage;

  static Serializer<ChatItem> get serializer => _$chatItemSerializer;
}
