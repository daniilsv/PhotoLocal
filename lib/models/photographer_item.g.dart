// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photographer_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhotographerItem> _$photographerItemSerializer =
    new _$PhotographerItemSerializer();

class _$PhotographerItemSerializer
    implements StructuredSerializer<PhotographerItem> {
  @override
  final Iterable<Type> types = const [PhotographerItem, _$PhotographerItem];
  @override
  final String wireName = 'PhotographerItem';

  @override
  Iterable<Object> serialize(Serializers serializers, PhotographerItem object,
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
    if (object.ordersCount != null) {
      result
        ..add('ordersCount')
        ..add(serializers.serialize(object.ordersCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PhotographerItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotographerItemBuilder();

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
        case 'ordersCount':
          result.ordersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotographerItem extends PhotographerItem {
  @override
  final Photographer photographer;
  @override
  final BuiltList<Photo> photos;
  @override
  final int ordersCount;

  factory _$PhotographerItem(
          [void Function(PhotographerItemBuilder) updates]) =>
      (new PhotographerItemBuilder()..update(updates)).build();

  _$PhotographerItem._({this.photographer, this.photos, this.ordersCount})
      : super._();

  @override
  PhotographerItem rebuild(void Function(PhotographerItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotographerItemBuilder toBuilder() =>
      new PhotographerItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotographerItem &&
        photographer == other.photographer &&
        photos == other.photos &&
        ordersCount == other.ordersCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, photographer.hashCode), photos.hashCode),
        ordersCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotographerItem')
          ..add('photographer', photographer)
          ..add('photos', photos)
          ..add('ordersCount', ordersCount))
        .toString();
  }
}

class PhotographerItemBuilder
    implements Builder<PhotographerItem, PhotographerItemBuilder> {
  _$PhotographerItem _$v;

  PhotographerBuilder _photographer;
  PhotographerBuilder get photographer =>
      _$this._photographer ??= new PhotographerBuilder();
  set photographer(PhotographerBuilder photographer) =>
      _$this._photographer = photographer;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  int _ordersCount;
  int get ordersCount => _$this._ordersCount;
  set ordersCount(int ordersCount) => _$this._ordersCount = ordersCount;

  PhotographerItemBuilder();

  PhotographerItemBuilder get _$this {
    if (_$v != null) {
      _photographer = _$v.photographer?.toBuilder();
      _photos = _$v.photos?.toBuilder();
      _ordersCount = _$v.ordersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotographerItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotographerItem;
  }

  @override
  void update(void Function(PhotographerItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotographerItem build() {
    _$PhotographerItem _$result;
    try {
      _$result = _$v ??
          new _$PhotographerItem._(
              photographer: _photographer?.build(),
              photos: _photos?.build(),
              ordersCount: ordersCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photographer';
        _photographer?.build();
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PhotographerItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
