// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Favorite> _$favoriteSerializer = new _$FavoriteSerializer();

class _$FavoriteSerializer implements StructuredSerializer<Favorite> {
  @override
  final Iterable<Type> types = const [Favorite, _$Favorite];
  @override
  final String wireName = 'Favorite';

  @override
  Iterable<Object> serialize(Serializers serializers, Favorite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.photographerId != null) {
      result
        ..add('photographerId')
        ..add(serializers.serialize(object.photographerId,
            specifiedType: const FullType(int)));
    }
    if (object.photoId != null) {
      result
        ..add('photoId')
        ..add(serializers.serialize(object.photoId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Favorite deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photographerId':
          result.photographerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photoId':
          result.photoId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Favorite extends Favorite {
  @override
  final int userId;
  @override
  final int photographerId;
  @override
  final int photoId;

  factory _$Favorite([void Function(FavoriteBuilder) updates]) =>
      (new FavoriteBuilder()..update(updates)).build();

  _$Favorite._({this.userId, this.photographerId, this.photoId}) : super._();

  @override
  Favorite rebuild(void Function(FavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteBuilder toBuilder() => new FavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Favorite &&
        userId == other.userId &&
        photographerId == other.photographerId &&
        photoId == other.photoId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, userId.hashCode), photographerId.hashCode),
        photoId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Favorite')
          ..add('userId', userId)
          ..add('photographerId', photographerId)
          ..add('photoId', photoId))
        .toString();
  }
}

class FavoriteBuilder implements Builder<Favorite, FavoriteBuilder> {
  _$Favorite _$v;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _photographerId;
  int get photographerId => _$this._photographerId;
  set photographerId(int photographerId) =>
      _$this._photographerId = photographerId;

  int _photoId;
  int get photoId => _$this._photoId;
  set photoId(int photoId) => _$this._photoId = photoId;

  FavoriteBuilder();

  FavoriteBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _photographerId = _$v.photographerId;
      _photoId = _$v.photoId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Favorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Favorite;
  }

  @override
  void update(void Function(FavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Favorite build() {
    final _$result = _$v ??
        new _$Favorite._(
            userId: userId, photographerId: photographerId, photoId: photoId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
