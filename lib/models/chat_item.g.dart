// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatItem> _$chatItemSerializer = new _$ChatItemSerializer();

class _$ChatItemSerializer implements StructuredSerializer<ChatItem> {
  @override
  final Iterable<Type> types = const [ChatItem, _$ChatItem];
  @override
  final String wireName = 'ChatItem';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.chat != null) {
      result
        ..add('chat')
        ..add(serializers.serialize(object.chat,
            specifiedType: const FullType(Chat)));
    }
    if (object.lastMessage != null) {
      result
        ..add('lastMessage')
        ..add(serializers.serialize(object.lastMessage,
            specifiedType: const FullType(Message)));
    }
    return result;
  }

  @override
  ChatItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chat':
          result.chat.replace(serializers.deserialize(value,
              specifiedType: const FullType(Chat)) as Chat);
          break;
        case 'lastMessage':
          result.lastMessage.replace(serializers.deserialize(value,
              specifiedType: const FullType(Message)) as Message);
          break;
      }
    }

    return result.build();
  }
}

class _$ChatItem extends ChatItem {
  @override
  final Chat chat;
  @override
  final Message lastMessage;

  factory _$ChatItem([void Function(ChatItemBuilder) updates]) =>
      (new ChatItemBuilder()..update(updates)).build();

  _$ChatItem._({this.chat, this.lastMessage}) : super._();

  @override
  ChatItem rebuild(void Function(ChatItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatItemBuilder toBuilder() => new ChatItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatItem &&
        chat == other.chat &&
        lastMessage == other.lastMessage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chat.hashCode), lastMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatItem')
          ..add('chat', chat)
          ..add('lastMessage', lastMessage))
        .toString();
  }
}

class ChatItemBuilder implements Builder<ChatItem, ChatItemBuilder> {
  _$ChatItem _$v;

  ChatBuilder _chat;
  ChatBuilder get chat => _$this._chat ??= new ChatBuilder();
  set chat(ChatBuilder chat) => _$this._chat = chat;

  MessageBuilder _lastMessage;
  MessageBuilder get lastMessage =>
      _$this._lastMessage ??= new MessageBuilder();
  set lastMessage(MessageBuilder lastMessage) =>
      _$this._lastMessage = lastMessage;

  ChatItemBuilder();

  ChatItemBuilder get _$this {
    if (_$v != null) {
      _chat = _$v.chat?.toBuilder();
      _lastMessage = _$v.lastMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatItem;
  }

  @override
  void update(void Function(ChatItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatItem build() {
    _$ChatItem _$result;
    try {
      _$result = _$v ??
          new _$ChatItem._(
              chat: _chat?.build(), lastMessage: _lastMessage?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chat';
        _chat?.build();
        _$failedField = 'lastMessage';
        _lastMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChatItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
