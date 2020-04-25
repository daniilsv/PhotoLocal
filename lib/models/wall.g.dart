// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Wall> _$wallSerializer = new _$WallSerializer();

class _$WallSerializer implements StructuredSerializer<Wall> {
  @override
  final Iterable<Type> types = const [Wall, _$Wall];
  @override
  final String wireName = 'Wall';

  @override
  Iterable<Object> serialize(Serializers serializers, Wall object,
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
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  Wall deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WallBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Wall extends Wall {
  @override
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final BuiltList<int> categories;

  factory _$Wall([void Function(WallBuilder) updates]) =>
      (new WallBuilder()..update(updates)).build();

  _$Wall._({this.id, this.userId, this.name, this.categories}) : super._();

  @override
  Wall rebuild(void Function(WallBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WallBuilder toBuilder() => new WallBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wall &&
        id == other.id &&
        userId == other.userId &&
        name == other.name &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), userId.hashCode), name.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Wall')
          ..add('id', id)
          ..add('userId', userId)
          ..add('name', name)
          ..add('categories', categories))
        .toString();
  }
}

class WallBuilder implements Builder<Wall, WallBuilder> {
  _$Wall _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<int> _categories;
  ListBuilder<int> get categories =>
      _$this._categories ??= new ListBuilder<int>();
  set categories(ListBuilder<int> categories) =>
      _$this._categories = categories;

  WallBuilder();

  WallBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _name = _$v.name;
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wall other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Wall;
  }

  @override
  void update(void Function(WallBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Wall build() {
    _$Wall _$result;
    try {
      _$result = _$v ??
          new _$Wall._(
              id: id,
              userId: userId,
              name: name,
              categories: _categories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Wall', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
