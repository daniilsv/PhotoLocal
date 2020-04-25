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
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.inn != null) {
      result
        ..add('inn')
        ..add(serializers.serialize(object.inn,
            specifiedType: const FullType(String)));
    }
    if (object.picture != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(object.picture,
            specifiedType: const FullType(String)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Photo)])));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    if (object.chips != null) {
      result
        ..add('chips')
        ..add(serializers.serialize(object.chips,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.liveLocation != null) {
      result
        ..add('liveLocation')
        ..add(serializers.serialize(object.liveLocation,
            specifiedType: const FullType(LatLng)));
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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inn':
          result.inn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Photo)]))
              as BuiltList<Object>);
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'chips':
          result.chips.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'liveLocation':
          result.liveLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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
  final int userId;
  @override
  final String name;
  @override
  final String inn;
  @override
  final String picture;
  @override
  final BuiltList<Photo> photos;
  @override
  final double rating;
  @override
  final BuiltList<String> chips;
  @override
  final LatLng liveLocation;

  factory _$Photographer([void Function(PhotographerBuilder) updates]) =>
      (new PhotographerBuilder()..update(updates)).build();

  _$Photographer._(
      {this.id,
      this.userId,
      this.name,
      this.inn,
      this.picture,
      this.photos,
      this.rating,
      this.chips,
      this.liveLocation})
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
        userId == other.userId &&
        name == other.name &&
        inn == other.inn &&
        picture == other.picture &&
        photos == other.photos &&
        rating == other.rating &&
        chips == other.chips &&
        liveLocation == other.liveLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), userId.hashCode),
                                name.hashCode),
                            inn.hashCode),
                        picture.hashCode),
                    photos.hashCode),
                rating.hashCode),
            chips.hashCode),
        liveLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photographer')
          ..add('id', id)
          ..add('userId', userId)
          ..add('name', name)
          ..add('inn', inn)
          ..add('picture', picture)
          ..add('photos', photos)
          ..add('rating', rating)
          ..add('chips', chips)
          ..add('liveLocation', liveLocation))
        .toString();
  }
}

class PhotographerBuilder
    implements Builder<Photographer, PhotographerBuilder> {
  _$Photographer _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _inn;
  String get inn => _$this._inn;
  set inn(String inn) => _$this._inn = inn;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  ListBuilder<String> _chips;
  ListBuilder<String> get chips => _$this._chips ??= new ListBuilder<String>();
  set chips(ListBuilder<String> chips) => _$this._chips = chips;

  LatLng _liveLocation;
  LatLng get liveLocation => _$this._liveLocation;
  set liveLocation(LatLng liveLocation) => _$this._liveLocation = liveLocation;

  PhotographerBuilder();

  PhotographerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _name = _$v.name;
      _inn = _$v.inn;
      _picture = _$v.picture;
      _photos = _$v.photos?.toBuilder();
      _rating = _$v.rating;
      _chips = _$v.chips?.toBuilder();
      _liveLocation = _$v.liveLocation;
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
    _$Photographer _$result;
    try {
      _$result = _$v ??
          new _$Photographer._(
              id: id,
              userId: userId,
              name: name,
              inn: inn,
              picture: picture,
              photos: _photos?.build(),
              rating: rating,
              chips: _chips?.build(),
              liveLocation: liveLocation);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();

        _$failedField = 'chips';
        _chips?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Photographer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
