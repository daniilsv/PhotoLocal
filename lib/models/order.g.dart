// GENERATED CODE - DO NOT MODIFY BY HAND

part of order;

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
    if (object.acceptedAt != null) {
      result
        ..add('accepted_at')
        ..add(serializers.serialize(object.acceptedAt,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(int)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.rights != null) {
      result
        ..add('rights')
        ..add(serializers.serialize(object.rights,
            specifiedType: const FullType(String)));
    }
    if (object.settings != null) {
      result
        ..add('settings')
        ..add(serializers.serialize(object.settings,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    if (object.categoryId != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.orderId != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(int)));
    }
    if (object.photographerId != null) {
      result
        ..add('photographer_id')
        ..add(serializers.serialize(object.photographerId,
            specifiedType: const FullType(int)));
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
        case 'accepted_at':
          result.acceptedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rights':
          result.rights = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'settings':
          result.settings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'order_id':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photographer_id':
          result.photographerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$Order extends Order {
  @override
  final int id;
  @override
  final String acceptedAt;
  @override
  final String address;
  @override
  final int amount;
  @override
  final String location;
  @override
  final String message;
  @override
  final String rights;
  @override
  final String settings;
  @override
  final String time;
  @override
  final int categoryId;
  @override
  final int orderId;
  @override
  final int photographerId;
  @override
  final int userId;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.acceptedAt,
      this.address,
      this.amount,
      this.location,
      this.message,
      this.rights,
      this.settings,
      this.time,
      this.categoryId,
      this.orderId,
      this.photographerId,
      this.userId})
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
        acceptedAt == other.acceptedAt &&
        address == other.address &&
        amount == other.amount &&
        location == other.location &&
        message == other.message &&
        rights == other.rights &&
        settings == other.settings &&
        time == other.time &&
        categoryId == other.categoryId &&
        orderId == other.orderId &&
        photographerId == other.photographerId &&
        userId == other.userId;
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
                                                    acceptedAt.hashCode),
                                                address.hashCode),
                                            amount.hashCode),
                                        location.hashCode),
                                    message.hashCode),
                                rights.hashCode),
                            settings.hashCode),
                        time.hashCode),
                    categoryId.hashCode),
                orderId.hashCode),
            photographerId.hashCode),
        userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('acceptedAt', acceptedAt)
          ..add('address', address)
          ..add('amount', amount)
          ..add('location', location)
          ..add('message', message)
          ..add('rights', rights)
          ..add('settings', settings)
          ..add('time', time)
          ..add('categoryId', categoryId)
          ..add('orderId', orderId)
          ..add('photographerId', photographerId)
          ..add('userId', userId))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _acceptedAt;
  String get acceptedAt => _$this._acceptedAt;
  set acceptedAt(String acceptedAt) => _$this._acceptedAt = acceptedAt;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  int _amount;
  int get amount => _$this._amount;
  set amount(int amount) => _$this._amount = amount;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _rights;
  String get rights => _$this._rights;
  set rights(String rights) => _$this._rights = rights;

  String _settings;
  String get settings => _$this._settings;
  set settings(String settings) => _$this._settings = settings;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  int _photographerId;
  int get photographerId => _$this._photographerId;
  set photographerId(int photographerId) =>
      _$this._photographerId = photographerId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _acceptedAt = _$v.acceptedAt;
      _address = _$v.address;
      _amount = _$v.amount;
      _location = _$v.location;
      _message = _$v.message;
      _rights = _$v.rights;
      _settings = _$v.settings;
      _time = _$v.time;
      _categoryId = _$v.categoryId;
      _orderId = _$v.orderId;
      _photographerId = _$v.photographerId;
      _userId = _$v.userId;
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
            acceptedAt: acceptedAt,
            address: address,
            amount: amount,
            location: location,
            message: message,
            rights: rights,
            settings: settings,
            time: time,
            categoryId: categoryId,
            orderId: orderId,
            photographerId: photographerId,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
