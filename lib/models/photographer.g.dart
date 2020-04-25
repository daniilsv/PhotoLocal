// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photographer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photographer> _$photographerSerializer =
    new _$PhotographerSerializer();

class _$PhotographerSerializer implements StructuredSerializer<Photographer> {
  @override
  final Iterable<Type> types = const [Photographer, _$Photographer];
  @override
  final String wireName = 'Photographer';

  @override
  Iterable<Object> serialize(Serializers serializers, Photographer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.liveLocation != null) {
      result
        ..add('live_location')
        ..add(serializers.serialize(object.liveLocation,
            specifiedType: const FullType(LatLng)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.ordersCount != null) {
      result
        ..add('orders_count')
        ..add(serializers.serialize(object.ordersCount,
            specifiedType: const FullType(int)));
    }
    if (object.picture != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(object.picture,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Photographer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotographerBuilder();

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
        case 'live_location':
          result.liveLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orders_count':
          result.ordersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Photographer extends Photographer {
  @override
  final int id;
  @override
  final LatLng liveLocation;
  @override
  final String name;
  @override
  final int ordersCount;
  @override
  final String picture;
  @override
  final double rating;
  @override
  final int userId;

  factory _$Photographer([void Function(PhotographerBuilder) updates]) =>
      (new PhotographerBuilder()..update(updates)).build();

  _$Photographer._(
      {this.id,
      this.liveLocation,
      this.name,
      this.ordersCount,
      this.picture,
      this.rating,
      this.userId})
      : super._();

  @override
  Photographer rebuild(void Function(PhotographerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotographerBuilder toBuilder() => new PhotographerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photographer &&
        id == other.id &&
        liveLocation == other.liveLocation &&
        name == other.name &&
        ordersCount == other.ordersCount &&
        picture == other.picture &&
        rating == other.rating &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), liveLocation.hashCode),
                        name.hashCode),
                    ordersCount.hashCode),
                picture.hashCode),
            rating.hashCode),
        userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photographer')
          ..add('id', id)
          ..add('liveLocation', liveLocation)
          ..add('name', name)
          ..add('ordersCount', ordersCount)
          ..add('picture', picture)
          ..add('rating', rating)
          ..add('userId', userId))
        .toString();
  }
}

class PhotographerBuilder
    implements Builder<Photographer, PhotographerBuilder> {
  _$Photographer _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  LatLng _liveLocation;
  LatLng get liveLocation => _$this._liveLocation;
  set liveLocation(LatLng liveLocation) => _$this._liveLocation = liveLocation;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _ordersCount;
  int get ordersCount => _$this._ordersCount;
  set ordersCount(int ordersCount) => _$this._ordersCount = ordersCount;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  PhotographerBuilder();

  PhotographerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _liveLocation = _$v.liveLocation;
      _name = _$v.name;
      _ordersCount = _$v.ordersCount;
      _picture = _$v.picture;
      _rating = _$v.rating;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photographer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photographer;
  }

  @override
  void update(void Function(PhotographerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photographer build() {
    final _$result = _$v ??
        new _$Photographer._(
            id: id,
            liveLocation: liveLocation,
            name: name,
            ordersCount: ordersCount,
            picture: picture,
            rating: rating,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
