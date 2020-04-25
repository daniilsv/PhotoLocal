// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WallSettings> _$wallSettingsSerializer =
    new _$WallSettingsSerializer();

class _$WallSettingsSerializer implements StructuredSerializer<WallSettings> {
  @override
  final Iterable<Type> types = const [WallSettings, _$WallSettings];
  @override
  final String wireName = 'WallSettings';

  @override
  Iterable<Object> serialize(Serializers serializers, WallSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.wallId != null) {
      result
        ..add('wallId')
        ..add(serializers.serialize(object.wallId,
            specifiedType: const FullType(int)));
    }
    if (object.photoId != null) {
      result
        ..add('photoId')
        ..add(serializers.serialize(object.photoId,
            specifiedType: const FullType(int)));
    }
    if (object.categoryId != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WallSettings deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WallSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'wallId':
          result.wallId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photoId':
          result.photoId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WallSettings extends WallSettings {
  @override
  final int wallId;
  @override
  final int photoId;
  @override
  final int categoryId;
  @override
  final int count;

  factory _$WallSettings([void Function(WallSettingsBuilder) updates]) =>
      (new WallSettingsBuilder()..update(updates)).build();

  _$WallSettings._({this.wallId, this.photoId, this.categoryId, this.count})
      : super._();

  @override
  WallSettings rebuild(void Function(WallSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WallSettingsBuilder toBuilder() => new WallSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WallSettings &&
        wallId == other.wallId &&
        photoId == other.photoId &&
        categoryId == other.categoryId &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, wallId.hashCode), photoId.hashCode),
            categoryId.hashCode),
        count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WallSettings')
          ..add('wallId', wallId)
          ..add('photoId', photoId)
          ..add('categoryId', categoryId)
          ..add('count', count))
        .toString();
  }
}

class WallSettingsBuilder
    implements Builder<WallSettings, WallSettingsBuilder> {
  _$WallSettings _$v;

  int _wallId;
  int get wallId => _$this._wallId;
  set wallId(int wallId) => _$this._wallId = wallId;

  int _photoId;
  int get photoId => _$this._photoId;
  set photoId(int photoId) => _$this._photoId = photoId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  WallSettingsBuilder();

  WallSettingsBuilder get _$this {
    if (_$v != null) {
      _wallId = _$v.wallId;
      _photoId = _$v.photoId;
      _categoryId = _$v.categoryId;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WallSettings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WallSettings;
  }

  @override
  void update(void Function(WallSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WallSettings build() {
    final _$result = _$v ??
        new _$WallSettings._(
            wallId: wallId,
            photoId: photoId,
            categoryId: categoryId,
            count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
