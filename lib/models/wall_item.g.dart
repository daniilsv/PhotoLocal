// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WallItem> _$wallItemSerializer = new _$WallItemSerializer();

class _$WallItemSerializer implements StructuredSerializer<WallItem> {
  @override
  final Iterable<Type> types = const [WallItem, _$WallItem];
  @override
  final String wireName = 'WallItem';

  @override
  Iterable<Object> serialize(Serializers serializers, WallItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.photographer != null) {
      result
        ..add('photographer')
        ..add(serializers.serialize(object.photographer,
            specifiedType: const FullType(Photographer)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Photo)])));
    }
    if (object.likeCount != null) {
      result
        ..add('likeCount')
        ..add(serializers.serialize(object.likeCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WallItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WallItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'photographer':
          result.photographer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Photographer)) as Photographer);
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Photo)]))
              as BuiltList<Object>);
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WallItem extends WallItem {
  @override
  final Photographer photographer;
  @override
  final BuiltList<Photo> photos;
  @override
  final int likeCount;

  factory _$WallItem([void Function(WallItemBuilder) updates]) =>
      (new WallItemBuilder()..update(updates)).build();

  _$WallItem._({this.photographer, this.photos, this.likeCount}) : super._();

  @override
  WallItem rebuild(void Function(WallItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WallItemBuilder toBuilder() => new WallItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WallItem &&
        photographer == other.photographer &&
        photos == other.photos &&
        likeCount == other.likeCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, photographer.hashCode), photos.hashCode),
        likeCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WallItem')
          ..add('photographer', photographer)
          ..add('photos', photos)
          ..add('likeCount', likeCount))
        .toString();
  }
}

class WallItemBuilder implements Builder<WallItem, WallItemBuilder> {
  _$WallItem _$v;

  PhotographerBuilder _photographer;
  PhotographerBuilder get photographer =>
      _$this._photographer ??= new PhotographerBuilder();
  set photographer(PhotographerBuilder photographer) =>
      _$this._photographer = photographer;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  WallItemBuilder();

  WallItemBuilder get _$this {
    if (_$v != null) {
      _photographer = _$v.photographer?.toBuilder();
      _photos = _$v.photos?.toBuilder();
      _likeCount = _$v.likeCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WallItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WallItem;
  }

  @override
  void update(void Function(WallItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WallItem build() {
    _$WallItem _$result;
    try {
      _$result = _$v ??
          new _$WallItem._(
              photographer: _photographer?.build(),
              photos: _photos?.build(),
              likeCount: likeCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photographer';
        _photographer?.build();
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WallItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
