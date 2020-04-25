// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Chat> _$chatSerializer = new _$ChatSerializer();

class _$ChatSerializer implements StructuredSerializer<Chat> {
  @override
  final Iterable<Type> types = const [Chat, _$Chat];
  @override
  final String wireName = 'Chat';

  @override
  Iterable<Object> serialize(Serializers serializers, Chat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.chatId != null) {
      result
        ..add('chatId')
        ..add(serializers.serialize(object.chatId,
            specifiedType: const FullType(String)));
    }
    if (object.ownerUserId != null) {
      result
        ..add('ownerUserId')
        ..add(serializers.serialize(object.ownerUserId,
            specifiedType: const FullType(int)));
    }
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Chat deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chatId':
          result.chatId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ownerUserId':
          result.ownerUserId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Chat extends Chat {
  @override
  final int id;
  @override
  final String chatId;
  @override
  final int ownerUserId;
  @override
  final int orderId;
  @override
  final String message;
  @override
  final DateTime createdAt;

  factory _$Chat([void Function(ChatBuilder) updates]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._(
      {this.id,
      this.chatId,
      this.ownerUserId,
      this.orderId,
      this.message,
      this.createdAt})
      : super._();

  @override
  Chat rebuild(void Function(ChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatBuilder toBuilder() => new ChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
        id == other.id &&
        chatId == other.chatId &&
        ownerUserId == other.ownerUserId &&
        orderId == other.orderId &&
        message == other.message &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), chatId.hashCode),
                    ownerUserId.hashCode),
                orderId.hashCode),
            message.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('id', id)
          ..add('chatId', chatId)
          ..add('ownerUserId', ownerUserId)
          ..add('orderId', orderId)
          ..add('message', message)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _chatId;
  String get chatId => _$this._chatId;
  set chatId(String chatId) => _$this._chatId = chatId;

  int _ownerUserId;
  int get ownerUserId => _$this._ownerUserId;
  set ownerUserId(int ownerUserId) => _$this._ownerUserId = ownerUserId;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _chatId = _$v.chatId;
      _ownerUserId = _$v.ownerUserId;
      _orderId = _$v.orderId;
      _message = _$v.message;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chat;
  }

  @override
  void update(void Function(ChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chat build() {
    final _$result = _$v ??
        new _$Chat._(
            id: id,
            chatId: chatId,
            ownerUserId: ownerUserId,
            orderId: orderId,
            message: message,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
