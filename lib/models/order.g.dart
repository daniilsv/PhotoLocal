// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.parentOrderId != null) {
      result
        ..add('parentOrderId')
        ..add(serializers.serialize(object.parentOrderId,
            specifiedType: const FullType(int)));
    }
    if (object.photographerId != null) {
      result
        ..add('photographerId')
        ..add(serializers.serialize(object.photographerId,
            specifiedType: const FullType(int)));
    }
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.categoryId != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(DateTime)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(LatLng)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(double)));
    }
    if (object.settings != null) {
      result
        ..add('settings')
        ..add(serializers.serialize(object.settings,
            specifiedType: const FullType(Object)));
    }
    if (object.rights != null) {
      result
        ..add('rights')
        ..add(serializers.serialize(object.rights,
            specifiedType: const FullType(Object)));
    }
    if (object.acceptedAt != null) {
      result
        ..add('acceptedAt')
        ..add(serializers.serialize(object.acceptedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

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
        case 'parentOrderId':
          result.parentOrderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photographerId':
          result.photographerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'settings':
          result.settings = serializers.deserialize(value,
              specifiedType: const FullType(Object));
          break;
        case 'rights':
          result.rights = serializers.deserialize(value,
              specifiedType: const FullType(Object));
          break;
        case 'acceptedAt':
          result.acceptedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final int id;
  @override
  final int parentOrderId;
  @override
  final int photographerId;
  @override
  final int userId;
  @override
  final int categoryId;
  @override
  final DateTime time;
  @override
  final LatLng location;
  @override
  final String address;
  @override
  final double amount;
  @override
  final Object settings;
  @override
  final Object rights;
  @override
  final DateTime acceptedAt;
  @override
  final String message;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.parentOrderId,
      this.photographerId,
      this.userId,
      this.categoryId,
      this.time,
      this.location,
      this.address,
      this.amount,
      this.settings,
      this.rights,
      this.acceptedAt,
      this.message})
      : super._();

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        parentOrderId == other.parentOrderId &&
        photographerId == other.photographerId &&
        userId == other.userId &&
        categoryId == other.categoryId &&
        time == other.time &&
        location == other.location &&
        address == other.address &&
        amount == other.amount &&
        settings == other.settings &&
        rights == other.rights &&
        acceptedAt == other.acceptedAt &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    parentOrderId.hashCode),
                                                photographerId.hashCode),
                                            userId.hashCode),
                                        categoryId.hashCode),
                                    time.hashCode),
                                location.hashCode),
                            address.hashCode),
                        amount.hashCode),
                    settings.hashCode),
                rights.hashCode),
            acceptedAt.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('parentOrderId', parentOrderId)
          ..add('photographerId', photographerId)
          ..add('userId', userId)
          ..add('categoryId', categoryId)
          ..add('time', time)
          ..add('location', location)
          ..add('address', address)
          ..add('amount', amount)
          ..add('settings', settings)
          ..add('rights', rights)
          ..add('acceptedAt', acceptedAt)
          ..add('message', message))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _parentOrderId;
  int get parentOrderId => _$this._parentOrderId;
  set parentOrderId(int parentOrderId) => _$this._parentOrderId = parentOrderId;

  int _photographerId;
  int get photographerId => _$this._photographerId;
  set photographerId(int photographerId) =>
      _$this._photographerId = photographerId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  Object _settings;
  Object get settings => _$this._settings;
  set settings(Object settings) => _$this._settings = settings;

  Object _rights;
  Object get rights => _$this._rights;
  set rights(Object rights) => _$this._rights = rights;

  DateTime _acceptedAt;
  DateTime get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime acceptedAt) => _$this._acceptedAt = acceptedAt;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _parentOrderId = _$v.parentOrderId;
      _photographerId = _$v.photographerId;
      _userId = _$v.userId;
      _categoryId = _$v.categoryId;
      _time = _$v.time;
      _location = _$v.location;
      _address = _$v.address;
      _amount = _$v.amount;
      _settings = _$v.settings;
      _rights = _$v.rights;
      _acceptedAt = _$v.acceptedAt;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    final _$result = _$v ??
        new _$Order._(
            id: id,
            parentOrderId: parentOrderId,
            photographerId: photographerId,
            userId: userId,
            categoryId: categoryId,
            time: time,
            location: location,
            address: address,
            amount: amount,
            settings: settings,
            rights: rights,
            acceptedAt: acceptedAt,
            message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
