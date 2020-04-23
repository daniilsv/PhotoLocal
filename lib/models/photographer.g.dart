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
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.profilePic != null) {
      result
        ..add('profilePic')
        ..add(serializers.serialize(object.profilePic,
            specifiedType: const FullType(String)));
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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'profilePic':
          result.profilePic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final String username;
  @override
  final String name;
  @override
  final String category;
  @override
  final BuiltList<String> photos;
  @override
  final String profilePic;

  factory _$Photographer([void Function(PhotographerBuilder) updates]) =>
      (new PhotographerBuilder()..update(updates)).build();

  _$Photographer._(
      {this.id,
      this.username,
      this.name,
      this.category,
      this.photos,
      this.profilePic})
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
        username == other.username &&
        name == other.name &&
        category == other.category &&
        photos == other.photos &&
        profilePic == other.profilePic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), username.hashCode), name.hashCode),
                category.hashCode),
            photos.hashCode),
        profilePic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photographer')
          ..add('id', id)
          ..add('username', username)
          ..add('name', name)
          ..add('category', category)
          ..add('photos', photos)
          ..add('profilePic', profilePic))
        .toString();
  }
}

class PhotographerBuilder
    implements Builder<Photographer, PhotographerBuilder> {
  _$Photographer _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  ListBuilder<String> _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String> photos) => _$this._photos = photos;

  String _profilePic;
  String get profilePic => _$this._profilePic;
  set profilePic(String profilePic) => _$this._profilePic = profilePic;

  PhotographerBuilder();

  PhotographerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _name = _$v.name;
      _category = _$v.category;
      _photos = _$v.photos?.toBuilder();
      _profilePic = _$v.profilePic;
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
              username: username,
              name: name,
              category: category,
              photos: _photos?.build(),
              profilePic: profilePic);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();
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
