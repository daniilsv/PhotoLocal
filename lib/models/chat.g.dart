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
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.photographerId != null) {
      result
        ..add('photographer_id')
        ..add(serializers.serialize(object.photographerId,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'photographer_id':
          result.photographerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final DateTime createdAt;
  @override
  final String photographerId;
  @override
  final String userId;

  factory _$Chat([void Function(ChatBuilder) updates]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._({this.id, this.createdAt, this.photographerId, this.userId})
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
        createdAt == other.createdAt &&
        photographerId == other.photographerId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), createdAt.hashCode),
            photographerId.hashCode),
        userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('photographerId', photographerId)
          ..add('userId', userId))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _photographerId;
  String get photographerId => _$this._photographerId;
  set photographerId(String photographerId) =>
      _$this._photographerId = photographerId;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _photographerId = _$v.photographerId;
      _userId = _$v.userId;
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
            createdAt: createdAt,
            photographerId: photographerId,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
