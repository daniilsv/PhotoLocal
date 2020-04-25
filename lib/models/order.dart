library order;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {
  Order._();

  factory Order([updates(OrderBuilder b)]) = _$Order;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'accepted_at')
  String get acceptedAt;

  @nullable
  @BuiltValueField(wireName: 'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'amount')
  int get amount;

  @nullable
  @BuiltValueField(wireName: 'location')
  String get location;

  @nullable
  @BuiltValueField(wireName: 'message')
  String get message;

  @nullable
  @BuiltValueField(wireName: 'rights')
  String get rights;

  @nullable
  @BuiltValueField(wireName: 'settings')
  String get settings;

  @nullable
  @BuiltValueField(wireName: 'time')
  String get time;

  @nullable
  @BuiltValueField(wireName: 'category_id')
  int get categoryId;

  @nullable
  @BuiltValueField(wireName: 'order_id')
  int get orderId;

  @nullable
  @BuiltValueField(wireName: 'photographer_id')
  int get photographerId;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  int get userId;

  static Serializer<Order> get serializer => _$orderSerializer;
}
